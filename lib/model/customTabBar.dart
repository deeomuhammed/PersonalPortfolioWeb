import 'dart:html';

import 'package:deeoweb/fixed.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({required this.controller, required this.tabs});
  final TabController controller;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double tabscalling = screenwidth > 1400
        ? 0.37
        : screenwidth > 1100
            ? 0.5
            : 0.7;
    return Container(
      color: Colors.transparent,
      width: screenwidth * tabscalling,
      child: TabBar(
        indicatorColor: primaryColor,
        labelColor: Colors.white,
        unselectedLabelColor: bodyTextColor,
        tabs: tabs,
        controller: controller,
      ),
    );
  }
}
