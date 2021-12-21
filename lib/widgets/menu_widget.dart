import 'package:flutter/material.dart';
import 'package:picpay_clone_app/models/icon_menu_model.dart';

class MenuWidget extends StatelessWidget {
  final List<IconMenuModel>? items;
  final String? centerItemText;
  final double height;
  final double iconSize;
  final Color? color;

  MenuWidget({
    Key? key,
    this.items,
    this.centerItemText,
    this.height = 60.0,
    this.iconSize = 28.0,
    this.color,
  }) : super(key: key) {
    assert(this.items?.length == 2 || this.items?.length == 4);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(
        this.items!.length, (int index) => _iconMenuWidget(this.items![index]));
    items.insert(items.length >> 1, _iconMidMenuWidget());
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
    );
  }

  Widget _iconMidMenuWidget() {
    return Expanded(
      child: SizedBox(
        height: height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: iconSize),
            Text(
              centerItemText ?? '',
              style: TextStyle(color: color),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconMenuWidget(IconMenuModel iconMenuModel) {
    return Expanded(
      child: SizedBox(
        height: height,
        child: Material(
          type: MaterialType.transparency,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconMenuModel.iconData,
                  color: iconMenuModel.color ?? Colors.grey, size: iconSize),
              Text(
                iconMenuModel.text!,
                style: TextStyle(color: iconMenuModel.color ?? Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
