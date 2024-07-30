import 'package:flutter/material.dart';
import 'package:ui_design/controllers/home_provider.dart';
import 'package:ui_design/widgets/bottom_nav/bottom_widget.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child){
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: MediaQuery.of(context).size.width * 0.2,
              padding: const EdgeInsets.all(12),
              // margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: const BorderRadius.all(
                  Radius.circular(16)
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomNavigationWidget(
                    onTap: (){
                      mainScreenNotifier.pageIndex = 0;
                    },
                    icon: Icons.home_outlined,
                    name: 'Name',
                    color: Colors.transparent,
                  ),
                  BottomNavigationWidget(
                    onTap: (){
                      mainScreenNotifier.pageIndex = 1;
                    },
                    icon: Icons.search_outlined,
                    name: 'Search',
                    color: Colors.transparent,
                  ),
                  Center(
                    child: BottomNavigationWidget(
                      onTap: (){
                        mainScreenNotifier.pageIndex = 2;
                      },
                      icon: Icons.mail,
                      name: '',
                      color: Colors.black,
                    ),
                  ),
                  BottomNavigationWidget(
                    onTap: (){
                      mainScreenNotifier.pageIndex = 3;
                    },
                    icon: Icons.menu_outlined,
                    name: 'Hub',
                    color: Colors.transparent,
                  ),
                  BottomNavigationWidget(
                    onTap: (){
                      mainScreenNotifier.pageIndex = 4;
                    },
                    icon: Icons.person_outlined,
                    name: 'Profile',
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}