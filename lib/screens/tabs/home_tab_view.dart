import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/textfield_widget.dart';
import '../components/dual_jobs_container.dart';
import '../components/search_textfield_component.dart';
import '../constant/theme/color.dart';

class HomeTabView extends StatelessWidget {
  const HomeTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: lightGray,
      child: Column(
        children: [
          getBody,
        ],
      ),
    );
  }

  Widget get getBody {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            TextFieldWidget(
              name: "Discover your",
              color: darkGray2,
              fontSize: 35,
            ),
            const SizedBox(height: 5),
            TextFieldWidget(
              color: darkGreen,
              name: "favourite Job.",
              fontSize: 35,
            ),
            const SizedBox(height: 20),
            const SearchTextfieldComponents(),
            const SizedBox(height: 20),
            TextFieldWidget(
              name: "Newest Jobs",
              fontSize: 20,
              color: darkGray2,
            ),
            const SizedBox(
              height: 15,
            ),
            const DualJobsContainer()
          ],
        ),
      ),
    );
  }
}
