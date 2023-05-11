import 'package:flutter/material.dart';
import 'package:play_store_ui/provider/playStore_provider.dart';
import 'package:provider/provider.dart';

class AppForScreen extends StatefulWidget {
  const AppForScreen({Key? key}) : super(key: key);

  @override
  State<AppForScreen> createState() => _AppForScreenState();
}

class _AppForScreenState extends State<AppForScreen> {
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
                        "Based on your recent activity",
                        style: TextStyle(
                            fontFamily: 'Lily',
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
                SizedBox(
                    height: 215,
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
                        "Recommended for you",
                        style: TextStyle(
                            fontFamily: 'Lily',
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
                    height: 215,
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
                        "Entertainment",
                        style: TextStyle(
                            fontFamily: 'Lily',
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
                    height: 215,
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
        Navigator.pushNamed(context,'appvisit',arguments: index);
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
                  "${providerF!.appinfo[index].path}",
                  width: 120,
                  height: 120,
                )),
            SizedBox(height: 5),
            Text(
              "${providerF!.appinfo[index].name}",
              style: TextStyle(
                  fontFamily: 'Lily',
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2),
            Text(
              "4.5 ⭐  ${providerF!.appinfo[index].size}",
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
