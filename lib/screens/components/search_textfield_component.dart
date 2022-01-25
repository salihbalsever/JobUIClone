import 'package:denemeui/widgets/search_textfield_widgets.dart';
import 'package:flutter/material.dart';

class SearchTextfieldComponents extends StatelessWidget {
  const SearchTextfieldComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SearchTextfieldWidget(
      hintText: "Search for a location...",
      keyboardType: TextInputType.text,
    ));
  }
}
