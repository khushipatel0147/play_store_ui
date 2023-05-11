import 'package:flutter/material.dart';
import 'package:play_store_ui/provider/playStore_provider.dart';
import 'package:provider/provider.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  PlayStoreProvider? providerF;
  PlayStoreProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<PlayStoreProvider>(context, listen: false);
    providerT = Provider.of<PlayStoreProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 30,
                    width: 100,
                    child: Center(
                        child: Text(
                      "Top free",
                      style: TextStyle(
                          fontFamily: 'Lily',
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    )),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 30,
                    width: 100,
                    child: Center(
                        child: Text(
                      "Categories",
                      style: TextStyle(
                          fontFamily: 'Lily',
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    )),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 30,
                    width: 70,
                    child: Center(
                        child: Text(
                      "New",
                      style: TextStyle(
                          fontFamily: 'Lily',
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    )),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            height: 630,
            child: ListView.builder(
              itemBuilder: (context, index) => topdata(index),
              scrollDirection: Axis.vertical,
              itemCount: providerF!.dataList.length,
            ),
          )
        ],
      ),
    ));
  }

  Widget topdata(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'gamevisit',arguments: index);
            },
            child: Row(
              children: [
                Text(
                  "${index+1}",
                  style: TextStyle(
                      fontFamily: 'Lily',
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width:15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "${providerF!.dataList[index].path}",
                    height: 50,
                    width: 50,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${providerF!.dataList[index].name}",
                      style: TextStyle(
                          fontFamily: 'Lily',
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "${providerF!.dataList[index].company}",
                      style: TextStyle(
                          fontFamily: 'Lily',
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "4.5 ⭐  ${providerF!.dataList[index].size}",
                      style: TextStyle(
                          fontFamily: 'Lily',
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
