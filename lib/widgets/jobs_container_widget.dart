import 'package:flutter/material.dart';
import '../screens/constant/theme/color.dart';

class JobsContainerWidget extends StatelessWidget {
  final String? iconName;
  final Color? color;
  final String? jobsTitle;
  final String? salary;
  final Color? textColor;

  JobsContainerWidget(
      {this.color, this.textColor, this.iconName, this.jobsTitle, this.salary});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 140,
      width: size.width / 2,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: darkGray,
            blurRadius: 4,
            offset: Offset(4, 8), // Shadow position
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(iconName!),
          Text(
            jobsTitle!,
            style: TextStyle(fontSize: 17, color: textColor),
          ),
          Text(salary!, style: const TextStyle(fontSize: 13))
        ],
      ),
    );
  }
}
