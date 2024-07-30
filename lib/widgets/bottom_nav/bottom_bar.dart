import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/controllers/home_provider.dart';
import 'package:ui_design/views/message/home.dart';
import 'package:ui_design/views/profile/profile.dart';
import 'package:ui_design/widgets/bottom_nav/bottom_nav_bar.dart';

// ignore: must_be_immutable
class BottomBar extends StatefulWidget {
  BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List <Widget> pageList = [
    // const Profile(),
    const HomeView(),
    const Profile(),
    const HomeView(),
    const HomeView(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: const BottomNavBar(),
        );
      }
    ); 
  }
}