import 'package:flutter/material.dart';
import '../constant/icons/icons.dart';
import '../constant/theme/color.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);

    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: lightGray,
      elevation: 0,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(right: 12, left: 12, top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                splashRadius: 25,
                onPressed: () {},
                icon: Image.asset(
                  assetsDrawerIcon,
                  height: 40,
                )),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage(assetsUserIcon), fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
