import 'dart:io';

import 'package:bazaar/Ui/custom_page.dart';
import 'package:bazaar/Ui/ready_page.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 151, 249, 210),
        items: const [
          CurvedNavigationBarItem(
            child: Icon(Icons.list_alt_rounded),
            label: 'Get it now',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.breakfast_dining),
            label: 'Customize ',
          ),
        ],
        onTap: (index) {
          // Hanondle button tap
          onPressed(index);
        },
      ),
      body: _selectedWidget,
    );
  }
}
