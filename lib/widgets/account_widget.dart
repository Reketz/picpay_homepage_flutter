import 'package:flutter/material.dart';

class accountWidget extends StatelessWidget {
  const accountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Saldo PicPay'),
            Row(
              children: [
                Text(
                  'R\$ 0,00',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, letterSpacing: 1.2),
                ),
                SizedBox(
                  width: 6,
                ),
                Icon(
                  Icons.visibility_outlined,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
        OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white, width: 2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Conferir extrato',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ))
      ],
    );
  }
}
