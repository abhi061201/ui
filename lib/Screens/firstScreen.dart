import 'package:badges/badges.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui/Screens/homeScreen.dart';

import '../utils/Utils.dart';

RxInt listindex = 0.obs;

class firstScreen extends StatelessWidget {
  const firstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Badge(
            badgeContent: Text('Prime'),
            position: BadgePosition.topEnd(end: -48),
            badgeStyle: BadgeStyle(
                shape: BadgeShape.square,
                badgeColor: Colors.amberAccent.shade700),
            child: Text('Jhoice App'),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
            IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined)),
          ],
        ),
        drawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.7,
          backgroundColor: Color.fromARGB(255, 217, 137, 18),
          child: ListView(
            children: [
              DrawerHeader(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Badge(
                      onTap: () {},
                      badgeStyle: BadgeStyle(badgeColor: Colors.orange),
                      badgeContent: Icon(Icons.edit_outlined),
                      child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/images.jpeg')),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Person Name'),
                  ],
                ),
              ),
              ListTile(
                onTap: () {},
                title: Center(child: Text('Item 1')),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Center(child: Text('Item 2')),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Center(child: Text('Item 3')),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Center(child: Text('Item 4')),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Center(child: Text('Item 5')),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Center(child: Text('Item 6')),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Center(child: Text('Item 7')),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Center(child: Text('Item 8')),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Center(child: Text('Item 8')),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          // selectedItemColor: Colors.black,
          iconSize: 20,
          selectedFontSize: 12,
          onTap: (value) {
            debugPrint(value.toString());
            listindex.value = value;
          },
          // backgroundColor: Colors.white,
          currentIndex: utils.selectedIndex.value,

          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home',
                backgroundColor: Colors.orange),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_call_outlined),
              label: 'Reels',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: 'Account',
            ),
          ],
          // backgroundColor: Colors.black,
          // color: Colors.orange,
          // height: 60,
          // animationDuration: Duration(milliseconds: 600),
          // onTap: (value) {
          //   Utils().selectedIndex.value = value;
          // },
          // animationCurve: Curves.ease,
          // items: [
          //   Icon(
          //     Icons.home_outlined,
          //     size: 30,
          //   ),
          //   Icon(Icons.search, size: 30),
          //   Icon(Icons.video_call_outlined, size: 30),
          //   Badge(
          //     badgeStyle: BadgeStyle(
          //         // borderRadius: BorderRadius.circular(1)
          //         shape: BadgeShape.circle),
          //     badgeContent: Icon(Icons.add),
          //     child: Icon(Icons.person_outline_outlined, size: 35),
          //   )

          //  Icon(Icons.shop_2_outlined, size: 30),
          // ],
        ),
        body: Obx(() {
          print(listindex.value);
          return Utils().pageList[listindex.value];
        }));
  }
}
