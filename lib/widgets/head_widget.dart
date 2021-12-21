import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class headWidget extends StatelessWidget {
  const headWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent.fjdo4-1.fna.fbcdn.net/v/t1.6435-9/100105081_1992201017578102_5152160077276250112_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=Zq0MscNRyNIAX8ud48Q&_nc_ht=scontent.fjdo4-1.fna&oh=00_AT-900BYn53hejvGewSahFgJCylNO8hXOVAKKEKoUQmS5Q&oe=61E6D785'),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Olá,'),
                Text('@Usuario'),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.gift,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              FontAwesomeIcons.comments,
              color: Colors.white,
            ),
          ],
        )
      ],
    );
  }
}
