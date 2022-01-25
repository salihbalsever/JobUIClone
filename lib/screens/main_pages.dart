import 'package:denemeui/screens/components/appbar_component.dart';
import 'package:denemeui/screens/tabs/tabs.dart';
import 'package:denemeui/widgets/iconbutton_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/bottomnavigationbar_widget.dart';
import 'constant/icons/icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ValueNotifier<int> currentIndexNotifier = ValueNotifier(0);
  final List<Widget> _currentTabPages = <Widget>[
    const HomeTabView(),
    const ChatTabView(),
    const BagTabView(),
  ];

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: IconButtonWidget(iconImage: assetsHomeIcon),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: IconButtonWidget(iconImage: assetsChatIcon),
      label: " ",
    ),
    BottomNavigationBarItem(
      icon: IconButtonWidget(iconImage: assetsOfficebagIcon),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: IconButtonWidget(iconImage: assetsBottomUserIcon),
      label: "",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: currentIndexNotifier,
        builder: (context, currentIndex, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: const PreferredSize(
                preferredSize: Size.fromHeight(40), child: AppBarComponent()),
            body: _currentTabPages[currentIndex],
            bottomNavigationBar: BottomNavigationBarWidget(
              currentIndexNotifier: currentIndexNotifier,
              currentIndex: currentIndex,
              items: items,
            ),
          );
        });
  }
}
