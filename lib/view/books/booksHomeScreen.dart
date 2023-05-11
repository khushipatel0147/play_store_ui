import 'package:flutter/material.dart';
import 'package:play_store_ui/provider/playStore_provider.dart';
import 'package:provider/provider.dart';

class B_HomeScreen extends StatefulWidget {
  const B_HomeScreen({Key? key}) : super(key: key);

  @override
  State<B_HomeScreen> createState() => _B_HomeScreenState();
}

class _B_HomeScreenState extends State<B_HomeScreen> {
  PlayStoreProvider? providerF;
  PlayStoreProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<PlayStoreProvider>(context, listen: false);
    providerT = Provider.of<PlayStoreProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        "Astrophysics for People in a Hurry",
                        style: TextStyle(
                            fontFamily: 'Lily',
                            fontSize: 18,
                            letterSpacing: 1,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 15),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 23,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: ListView.builder(
                      itemBuilder: (context, index) => myStore(index),
                      scrollDirection: Axis.horizontal,
                      itemCount: providerF!.appinfo.length,
                    )),
                SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        "Biographies & memoirs",
                        style: TextStyle(
                            fontFamily: 'Lily',
                            letterSpacing: 1,
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 15),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 23,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: ListView.builder(
                      itemBuilder: (context, index) => myStore(index),
                      scrollDirection: Axis.horizontal,
                      itemCount: providerF!.appinfo.length,
                    )),
                SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        "More like Titanic",
                        style: TextStyle(
                            fontFamily: 'Lily',
                            fontSize: 18,
                            letterSpacing: 1,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 15),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 23,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: ListView.builder(
                      itemBuilder: (context, index) => myStore(index),
                      scrollDirection: Axis.horizontal,
                      itemCount: providerF!.appinfo.length,
                    ))
              ],
            ),
          ),
        ));
  }

  Widget myStore(int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context,'bookvisit',arguments: index);
      },
      child: Container(
        margin: EdgeInsets.all(2),
        height: 215,
        width: 125,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Image.asset(
                  "${providerF!.book[index].path}",
                  width: 120,
                  height: 150,
                )),
            SizedBox(height: 5),
            Text(
              "${providerF!.book[index].name}",
              style: TextStyle(
                  fontFamily: 'Lily',
                  fontSize: 20,
                  letterSpacing: 1,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2),
            Text(
              "4.5 ⭐  ₹${providerF!.book[index].price}",
              style: TextStyle(
                  fontFamily: 'Lily',
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
