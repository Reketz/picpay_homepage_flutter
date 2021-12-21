import 'package:flutter/material.dart';
import 'package:picpay_clone_app/models/person_model.dart';
import 'package:picpay_clone_app/utils/contrains.dart';

import 'button_widget.dart';
import 'person_widget.dart';
import 'search_widget.dart';

class SuggestionsWidget extends StatelessWidget {
  const SuggestionsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchWidget(),
            SizedBox(
              height: defaultPadding,
            ),
            Text(
              'Sugestões para você',
              style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: defaultPadding,
            ),
            Container(
              height: 90,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: persons
                      .asMap()
                      .entries
                      .map((e) => personWidget(
                          name: e.value.name, urlImage: e.value.urlImage))
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
