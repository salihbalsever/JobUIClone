import 'package:denemeui/screens/constant/theme/color.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget {
  final String? iconImage;
  int? selectedIndex = 0;

  IconButtonWidget({ this.iconImage });

  @override
  _IconButtonWidgetState createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      onPressed: () {},
      icon: Image.asset(
        widget.iconImage!,
              color:darkGray,

      ),
    );
  }
}
