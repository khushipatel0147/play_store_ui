import 'package:flutter/material.dart';
import 'package:play_store_ui/provider/playStore_provider.dart';
import 'package:provider/provider.dart';

class BookVisitScreen extends StatefulWidget {
  const BookVisitScreen({Key? key}) : super(key: key);

  @override
  State<BookVisitScreen> createState() => _BookVisitScreenState();
}

class _BookVisitScreenState extends State<BookVisitScreen> {
  PlayStoreProvider? providerFalse;
  PlayStoreProvider? providerTrue;

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    providerTrue = Provider.of<PlayStoreProvider>(context, listen: true);
    providerFalse = Provider.of<PlayStoreProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Center(
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              )),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 20,
            color: Colors.black,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.more_vert,
            size: 20,
            color: Colors.black,
          ),
          SizedBox(width: 20)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "${providerFalse!.book[index].path}",
                        height: 160,
                        width: 100,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(width: 20),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text("${providerFalse!.book[index].name}",
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontFamily: 'Lily',
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "4.5",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lily',
                            fontSize: 15,
                            letterSpacing: 1),
                      ),
                      Text(
                        "1M reviews",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lily',
                            fontSize: 10,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Icon(
                        Icons.book,
                        size: 17,
                        color: Colors.black,
                      ),
                      Text(
                        "Ebook",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lily',
                            fontSize: 12,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        "${providerFalse!.book[index].page}",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lily',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                      Text(
                        "Pages",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lily',
                            fontSize: 12,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Icon(
                        Icons.home_filled,
                        size: 19,
                        color: Colors.black,
                      ),
                      Text(
                        "Eligible ℹ️",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lily',
                            fontSize: 10,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      height: 40,
                      width: 165,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Free Sample",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontSize: 15,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 165,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade800,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Ebook ₹${providerFalse!.book[index].price}",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Build a series bundle",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontFamily: 'Lily',
                    fontSize: 20),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "${providerFalse!.book[index].path}",
                        height: 80,
                        width: 50,
                      )),
                  SizedBox(width: 10),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2 books avilable",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      SizedBox(height: 10),
                      Text("Select any",
                          style: TextStyle(
                              color: Colors.black54,
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontSize: 13)),
                      SizedBox(height: 10),
                      Text("combination",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontSize: 13))
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 133,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Build",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontFamily: 'Lily',
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 35,
                      width: 210,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          "#1 top grossing in Books",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          "Series",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          "Romance",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    "Data safety",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        fontFamily: 'Lily',
                        color: Colors.black),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 150,
                width: double.infinity,
                child: Text(
                  "Safety starts with understanding how developers collect and share your data. "
                  "Data privacy and security practices may vary based on your use, region, and age. "
                  "The Developer provided this information and may update it over time.",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 15,
                      fontFamily: 'Lily',
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
