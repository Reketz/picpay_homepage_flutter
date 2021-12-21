import 'package:flutter/material.dart';
import 'package:picpay_clone_app/utils/contrains.dart';

class personWidget extends StatelessWidget {
  final String name;
  final String urlImage;
  const personWidget({
    Key? key,
    required this.name,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(urlImage),
            backgroundColor: darkColor,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
