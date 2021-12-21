import 'package:flutter/material.dart';

class searchWidget extends StatelessWidget {
  const searchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.grey[800],
            size: 26,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            'O que você quer pagar?',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[700],
              letterSpacing: 1.2,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
