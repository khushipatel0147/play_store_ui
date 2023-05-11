import 'package:flutter/material.dart';
import 'package:play_store_ui/view/apps/app_cate_screen.dart';
import 'package:play_store_ui/view/apps/app_for_screen.dart';
import 'package:play_store_ui/view/apps/app_top_screen.dart';

class A_HomeScreen extends StatefulWidget {
  const A_HomeScreen({Key? key}) : super(key: key);

  @override
  State<A_HomeScreen> createState() => _A_HomeScreenState();
}

class _A_HomeScreenState extends State<A_HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(32),
              child: AppBar(
                elevation: 0.5,
                backgroundColor: Colors.white,
                title:TabBar(
                  tabs: [
                    Container(
                      height: 30,
                      child: Align(alignment: Alignment.topCenter,
                        child: Text(
                          "For you",
                          style: TextStyle(
                              fontFamily: 'Lily',
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Top charts",
                          style: TextStyle(
                              fontFamily: 'Lily',
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Categories",
                          style: TextStyle(
                              fontFamily: 'Lily',
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                  indicatorColor: Colors.blue.shade800,
                ),
              ),
            ),
            backgroundColor: Colors.white,
            body: TabBarView(
              children: [
                AppForScreen(),
                AppTopScreen(),
                AppCateScreen()
              ],
            )),
      ),
    );
  }
}
