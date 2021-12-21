import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:picpay_clone_app/models/activite_model.dart';
import 'package:picpay_clone_app/models/icon_menu_model.dart';
import 'package:picpay_clone_app/utils/contrains.dart';
import 'package:picpay_clone_app/widgets/account_widget.dart';
import 'package:picpay_clone_app/widgets/activite_widget.dart';
import 'package:picpay_clone_app/widgets/button_widget.dart';
import 'package:picpay_clone_app/widgets/card_widget.dart';
import 'package:picpay_clone_app/widgets/head_widget.dart';
import 'package:picpay_clone_app/widgets/menu_widget.dart';
import 'package:picpay_clone_app/widgets/suggestions_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            height: 300,
            color: lightColor,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                headWidget(),
                SizedBox(
                  height: 40,
                  child: Divider(
                    color: darkColor,
                  ),
                ),
                accountWidget(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardWidget(
                      size: size,
                      icon: FontAwesomeIcons.qrcode,
                      description: 'QR Code',
                    ),
                    CardWidget(
                      size: size,
                      icon: FontAwesomeIcons.moneyBill,
                      description: 'Pix',
                    ),
                    CardWidget(
                      size: size,
                      icon: FontAwesomeIcons.moneyCheck,
                      description: 'Pagar Boleto',
                    ),
                    CardWidget(
                      size: size,
                      icon: FontAwesomeIcons.commentAlt,
                      description: 'Cobrar',
                    ),
                  ],
                ),
              ],
            ),
          ),
          SuggestionsWidget(),
          Container(
            height: 120,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ButtonWidget(),
                Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Atividades',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[800],
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Minhas',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: lightColor,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: activities
                .asMap()
                .entries
                .map((e) => ActiviteWidget(activiteModel: e.value))
                .toList(),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.attach_money,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.greenAccent[700],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MenuWidget(
        centerItemText: 'Pagar',
        color: Colors.grey,
        items: [
          IconMenuModel(iconData: Icons.home, text: 'Inicio', color: darkColor),
          IconMenuModel(iconData: FontAwesomeIcons.wallet, text: 'Carteira'),
          IconMenuModel(
              iconData: Icons.notifications_none, text: 'Notificações'),
          IconMenuModel(iconData: Icons.shopping_bag_outlined, text: 'Store'),
        ],
      ),
    );
  }
}
