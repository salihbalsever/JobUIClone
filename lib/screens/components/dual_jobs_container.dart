import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';
import '../constant/icons/icons.dart';
import '../constant/theme/color.dart';

class DualJobsContainer extends StatelessWidget {
  const DualJobsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: JobsContainerWidget(
              iconName: assetsGoogleIcon,
              jobsTitle: "UI&UX Designer",
              salary: "2000/h-remote",
              color: lightGreen,
              textColor: black,
            )),
            const SizedBox(
              width: 25,
            ),
            Expanded(
                child: JobsContainerWidget(
              iconName: assetsPixelIcon,
              jobsTitle: "Front end Dev...",
              salary: "1300/h-remote",
              color: lightGray2,
              textColor: black,
            ))
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: JobsContainerWidget(
              iconName: assetsBallIcon,
              jobsTitle: "UX Designer",
              salary: "800/h-remote",
              color: darkGray,
              textColor: white,
            )),
            const SizedBox(
              width: 25,
            ),
            Expanded(
                child: JobsContainerWidget(
              iconName: assetsProductIcon,
              jobsTitle: "Product Designer",
              salary: "500/h-remote",
              color: darkGreen,
              textColor: black,
            ))
          ],
        )
      ],
    );
  }
}
