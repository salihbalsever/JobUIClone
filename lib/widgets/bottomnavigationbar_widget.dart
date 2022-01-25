import 'package:flutter/material.dart';
import '../screens/constant/theme/color.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    Key? key,
    required this.currentIndexNotifier,
    required this.items,
    required this.currentIndex,
  }) : super(key: key);

  final ValueNotifier<int> currentIndexNotifier;
  final List<BottomNavigationBarItem> items;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: white,
        type: BottomNavigationBarType.fixed,

        /// Değere erişim için [currentIndex]
        currentIndex: currentIndex,
        onTap: (selectedIndex) =>

            /// Seçilen index değerini dinlediğimiz
            /// [currentIndexNotifier.value] değerine atadık.
            currentIndexNotifier.value = selectedIndex,
        items: items,
      ),
    );
  }
}
