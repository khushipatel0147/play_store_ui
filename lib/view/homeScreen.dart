import 'package:flutter/material.dart';
import 'package:play_store_ui/provider/playStore_provider.dart';
import 'package:play_store_ui/view/apps/appsHomeScreen.dart';
import 'package:play_store_ui/view/books/booksHomeScreen.dart';
import 'package:play_store_ui/view/game/gameHomeScreen.dart';
import 'package:play_store_ui/view/offers/offerHomeScreeen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PlayStoreProvider? providerF;
  PlayStoreProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<PlayStoreProvider>(context, listen: false);
    providerT = Provider.of<PlayStoreProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              height: 40,
              width: 220,
              decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.black54,
                      size: 18,
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Search apps & g...",
                      style: TextStyle(
                          fontFamily: 'Lily',
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.mic_none,
                      size: 18,
                      color: Colors.black54,
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Icon(Icons.notifications_none, color: Colors.black54, size: 25),
            SizedBox(width: 25),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.png"),
              backgroundColor: Colors.white,
              radius: 12,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedLabelStyle: TextStyle(fontFamily: 'Lily'),
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (value) {
          providerF!.changeindexbottom(value);
        },
        currentIndex: providerT!.value,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_esports), label: "Games"),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_sharp), label: "Offers"),
          BottomNavigationBarItem(icon: Icon(Icons.book_sharp), label: "Books"),
        ],
      ),

          body: providerF!.value==0?G_HomeScreen():providerF!.value==1?A_HomeScreen():providerF!.value==2?O_HomeScreen():B_HomeScreen(),
    ));
  }
}
