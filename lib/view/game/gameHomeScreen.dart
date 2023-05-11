import 'package:flutter/material.dart';
import 'package:play_store_ui/view/game/categoriesscreen.dart';
import 'package:play_store_ui/view/game/for_youScreen.dart';
import 'package:play_store_ui/view/game/top_chartsScreen.dart';

class G_HomeScreen extends StatefulWidget {
  const G_HomeScreen({Key? key}) : super(key: key);

  @override
  State<G_HomeScreen> createState() => _G_HomeScreenState();
}

class _G_HomeScreenState extends State<G_HomeScreen> {
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
              title:     TabBar(

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
                ForScreen(),
                TopScreen(),CateScreen()
              ],
            )),
      ),
    );
  }
}
