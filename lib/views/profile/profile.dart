import'package:flutter/material.dart';
import 'package:ui_design/views/profile/components/column/column.dart';
// import 'package:ui_design/views/profile/components/list.dart';
import 'package:ui_design/views/profile/components/profile_container.dart';
import 'package:ui_design/widgets/top_bar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
   final List name = [
    'Notifications',
    'Interests',
    'History',
    'Bookmarks and saves',
    'I was marked',
    'Privacy Policy',
    'Log out',
  ];

  final icon = <IconData>[
  Icons.notifications_none,
  Icons.star_outline_rounded,
  Icons.history,
  Icons.bookmark_border_outlined,
  Icons.mark_chat_read_sharp,
  Icons.import_contacts,
  Icons.logout,
];
  int lastIndex = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(
            MediaQuery.of(context).size.width * 0.02
          ),
          child: ListView(
            children: [Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TopBar(title: 'Profile',
                   icon: Icons.settings_outlined
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        // height: 400,
                        height: MediaQuery.of(context).size.width * 0.6,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30)
                          )
                        ),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.width *0.4,
                        left: 0,
                        right: 0,
                        // bottom: 50,
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width* 0.18,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/model.jpg',
                              height: MediaQuery.of(context).size.width* 0.36,
                              width: MediaQuery.of(context).size.width* 0.36,
                              fit: BoxFit.cover,
                            ),
                          ),
                          
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.width *0.25,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Chris Evans',
                                  style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: MediaQuery.of(context).size.width * 0.05
                                ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *0.015,
                                ),
                                Text('Teacher',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: MediaQuery.of(context).size.width * 0.05
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.width *0.1,),
                            const Row(
                              children: [
                                Columns(
                                  text: 'Followers',
                                  text2: '325',
                                ),
                                Columns(
                                  text: 'Following',
                                  text2: '246',
                                ),
                                Columns(
                                  text: 'Posts',
                                  text2: '96',
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),

                  Container(
                    child: Column(
                      children: [
                        ...List.generate(name.length, (index) => 
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ProfileContainer(
                            icon: icon[index], 
                            title: name[index], 
                            color: lastIndex == index? Colors.red : Colors.black, 
                            textColor: lastIndex == index? Colors.red : Colors.black,
                          ),
                        )
                        )
                      ],
                    )
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
