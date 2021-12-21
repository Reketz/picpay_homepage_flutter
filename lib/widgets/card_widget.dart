import 'package:flutter/material.dart';
import 'package:picpay_clone_app/utils/contrains.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.size,
    required this.icon,
    required this.description,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: size.width * 0.22,
      decoration: BoxDecoration(
          color: darkColor, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Icon(icon, color: Colors.white),
          SizedBox(
            height: 6,
          ),
          Text(description)
        ]),
      ),
    );
  }
}
