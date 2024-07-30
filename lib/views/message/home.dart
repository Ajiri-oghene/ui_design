import 'package:flutter/material.dart';
import 'package:ui_design/views/message/components/button.dart';
import 'package:ui_design/views/message/components/message_card.dart';
import 'package:ui_design/widgets/top_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    bool selectedIndex = false;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const TopBar(
                title: 'Messages',
                icon: Icons.search_outlined,
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.8
                    )
                  ),
                  child: Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width* 0.008,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: TopButton(
                              colors: selectedIndex == true ? Colors.white 
                              :Colors.transparent,
                              title: 'Direct messages',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: TopButton(
                              colors: selectedIndex == false ? Colors.white 
                              :Colors.transparent,
                              title: 'Video Call',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 54,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: MessageCard(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}