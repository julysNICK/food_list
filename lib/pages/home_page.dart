import 'package:flutter/material.dart';
import 'package:food_list/wigets/items_widgets.dart';

import '../wigets/home_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xFF232227),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.00),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.00),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.sort_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.00),
                  child: Text(
                    'Yum Yum',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.00),
                  child: Text(
                    'Delicious Food',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TabBar(
                  isScrollable: true,
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20.00),
                  tabs: [
                    Text('All'),
                    Text('Pizza'),
                    Text('Burger'),
                    Text('Pasta'),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Flexible(
                  flex: 1,
                  child: TabBarView(children: [
                    ItemWidgets(),
                    ItemWidgets(),
                    ItemWidgets(),
                    ItemWidgets(),
                  ]),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const HomeNavBar(),
      ),
    );
  }
}
