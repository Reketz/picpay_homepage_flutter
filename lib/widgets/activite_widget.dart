import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:picpay_clone_app/models/activite_model.dart';
import 'package:picpay_clone_app/utils/contrains.dart';

class ActiviteWidget extends StatelessWidget {
  final ActiviteModel activiteModel;

  const ActiviteWidget({
    Key? key,
    required this.activiteModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(activiteModel.urlImage),
                      backgroundColor: darkColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      activiteModel.title,
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          activiteModel.value,
                          style: TextStyle(color: Colors.red),
                        ),
                        Text(' | ', style: TextStyle(color: Colors.grey)),
                        Icon(Icons.people_outline, color: Colors.grey),
                        Text(
                          ' 2 semanas atrás',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Row(children: [
                      Icon(
                        FontAwesomeIcons.commentAlt,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '0',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(FontAwesomeIcons.heart, color: Colors.grey),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '0',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ])
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[400],
            height: 50,
            thickness: 10,
          )
        ],
      ),
    );
  }
}
