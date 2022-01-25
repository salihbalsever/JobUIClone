import 'package:flutter/material.dart';
import '../screens/constant/theme/color.dart';

class SearchTextfieldWidget extends StatelessWidget {
  final String? hintText;
  final TextInputType? keyboardType;

  SearchTextfieldWidget({
    Key? key,
    this.hintText,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 10) ,
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: darkGray)),
      child: Center(
        child: TextField(
          cursorColor: black,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            prefixIcon: const Icon(
              Icons.search,
              color: black,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
