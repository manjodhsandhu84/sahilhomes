

import 'package:flutter/material.dart';
import 'package:sahihomes/BrokerHomeView.dart';

class HomeTabbar extends StatefulWidget {
  const HomeTabbar({super.key});

  @override
  State<HomeTabbar> createState() => _HomeTabbarState();
}

class _HomeTabbarState extends State<HomeTabbar> with SingleTickerProviderStateMixin {

  int tabIndex = 0;
  List<Widget> listScreens = [BrokerHomeView(false),BrokerHomeView(false),BrokerHomeView(false),BrokerHomeView( false),BrokerHomeView(false)];
 late TabController controller;
  final tabIconSize = 30.0;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5,vsync: this);
    controller.index = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//listScreens[tabIndex]
// color: theme.primaryColor,
body: TabBarView(
  controller: controller,
  children: listScreens),
//BottomNavigationBar
bottomNavigationBar: Material(
  child: SafeArea(
    child: TabBar(
      controller: controller,
      tabs: [
           Tab(icon: Icon(Icons.view_list, size: tabIconSize)),
          Tab(icon: Icon(Icons.account_circle, size: tabIconSize)),
          Tab(icon: Icon(Icons.shopping_cart, size: tabIconSize)),
            Tab(icon: Icon(Icons.safety_check, size: tabIconSize)),
            Tab(icon: Icon(Icons.safety_check, size: tabIconSize)),
    ],
    // color: theme.primaryColor,
    
    ),
  ),
)

// getTabbarOldWidget(),

    );
  }

  BottomNavigationBar getTabbarOldWidget() {
    return BottomNavigationBar(currentIndex: tabIndex,
onTap: (index) {
  setState(() {
              tabIndex = index;
            });
},
items: [
              BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:  'Tab1',
              // icon: Text('Tab1'),
            ),
                         BottomNavigationBarItem(
              icon: Icon(Icons.report_problem),
              // title: Text('Tab2'),
              label:  'Tab2',
            ),
                         BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              // title: Text('Tab3'),
              label:  'Tab3',
            ),
                         BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              // title: Text('Tab3'),
              label:  'Tab4',
            ),
            //              BottomNavigationBarItem(
            //   icon: Icon(Icons.settings),
            //   // title: Text('Tab3'),
            //   label:  'Tab3',
            // ),
            //              BottomNavigationBarItem(
            //   icon: Icon(Icons.settings),
            //   // title: Text('Tab3'),
            //   label:  'Tab3',
            // ),
],
// items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               title: Text('Tab1'),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.report_problem),
//               title: Text('Tab2'),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.settings),
//               title: Text('Tab3'),
//             ),
//           ]),
);
  }
}