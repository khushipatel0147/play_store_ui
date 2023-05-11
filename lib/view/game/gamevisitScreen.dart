import 'package:flutter/material.dart';
import 'package:play_store_ui/provider/playStore_provider.dart';
import 'package:provider/provider.dart';

class VisitScreen extends StatefulWidget {
  const VisitScreen({Key? key}) : super(key: key);

  @override
  State<VisitScreen> createState() => _VisitScreenState();
}

class _VisitScreenState extends State<VisitScreen> {
  PlayStoreProvider? providerF;
  PlayStoreProvider? providerT;

  @override
  Widget build(BuildContext context) {
    int index =ModalRoute.of(context)!.settings.arguments as int;
    providerF = Provider.of<PlayStoreProvider>(context, listen: false);
    providerT = Provider.of<PlayStoreProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_outlined,
            size: 23,
            color: Colors.black54,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 23,
            color: Colors.black54,
          ),
          SizedBox(width: 15),
          Icon(
            Icons.more_vert,
            size: 23,
            color: Colors.black54,
          ),
          SizedBox(width: 10),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 15),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "${providerF!.dataList[index].path}",
                  height: 70,
                  width: 70,
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
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "${providerF!.dataList[index].company}",
                    style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 15,
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Contains ads | in- app purchases",
                    style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "4.5 ⭐",
                        style: TextStyle(
                            fontFamily: 'Lily',
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "1M reviews ",
                        style: TextStyle(
                            fontFamily: 'Lily',
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.download, size: 18, color: Colors.black54),
                      SizedBox(height: 2),
                      Text(
                        "1M reviews ",
                        style: TextStyle(
                            fontFamily: 'Lily',
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.three_k, size: 18, color: Colors.black54),
                      SizedBox(height: 2),
                      Text(
                        "Rated for 3+ ",
                        style: TextStyle(
                            fontFamily: 'Lily',
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${providerF!.dataList[index].download}",
                        style: TextStyle(
                            fontFamily: 'Lily',
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Download",
                        style: TextStyle(
                            fontFamily: 'Lily',
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 40,
            width: 320,
            decoration: BoxDecoration(
                color: Colors.green.shade800,
                borderRadius: BorderRadius.circular(45)),
            child: Center(
              child: Text(
                "Install",
                style: TextStyle(
                    fontFamily: 'Lily',
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: ListView.builder(
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 1),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "${providerF!.dataList[index].photo![i]}",
                          height: 200,
                          width: 280,
                          fit: BoxFit.cover,
                        )),
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: 5),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 5),
                Text(
                  "About this game",
                  style: TextStyle(
                      fontFamily: 'Lily',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.arrow_forward, size: 20, color: Colors.black54),
                SizedBox(height: 5),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 40,
                  width: 300,
                  child: Text(
                    "${providerF!.dataList[index].abgame}",
                    style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 30,
                    width: 180,
                    child: Center(
                        child: Text(
                      "#7 top grossing in arcade",
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
                      "Puzzle",
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
                      "Casual",
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
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 5),
                Text(
                  "Data Safety",
                  style: TextStyle(
                      fontFamily: 'Lily',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.arrow_forward, size: 20, color: Colors.black54),
                SizedBox(height: 5),
              ],
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 100,
                  width: 300,
                  child: Text(
                    "Safety starts with understanding how developers collecct and share your data.  Data privacy and sequrity practices may very based on your use, region, and age. The developer provided this information and may update it over time. ",
                    style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
