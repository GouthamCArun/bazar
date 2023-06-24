import 'package:bazaar/Ui/custom_page.dart';
import 'package:bazaar/Ui/ready_page.dart';
import 'package:diamond_bottom_bar/diamond_bottom_bar.dart';
import 'package:flutter/material.dart';

class BuyingHome extends StatefulWidget {
  const BuyingHome({super.key});

  @override
  State<BuyingHome> createState() => _BuyingHomeState();
}

class _BuyingHomeState extends State<BuyingHome> {
  int _selectedIndex = 0;
  late Widget _selectedWidget;
  @override
  void initState() {
    setState(() {
      if (_selectedIndex == 0) {
        _selectedWidget = const ReadyPage();
      } else if (_selectedIndex == 1) {
        _selectedWidget = const CustomPage();
      } else if (_selectedIndex == 2) {
        _selectedWidget = const CustomPage();
      }
    });

    super.initState();
  }

  @override
  void onPressed(index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        _selectedWidget = const ReadyPage();
      } else if (index == 1) {
        _selectedWidget = const CustomPage();
      } else if (index == 2) {
        _selectedWidget = const CustomPage();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 181, 252, 218),
      bottomNavigationBar: DiamondBottomNavigation(
        //bottom navigation bar
        itemIcons: const [
          Icons.dashboard_rounded,
          Icons.video_label_rounded,
        ],
        unselectedColor: Color(0xFF2E384E),
        selectedColor: const Color(0xFF44f1a6),
        centerIcon: Icons.camera,
        selectedIndex: _selectedIndex,
        selectedLightColor: Color(0xFF44f1a6),
        onItemPressed: onPressed,
      ),
      body: _selectedWidget,
    );
  }
}
