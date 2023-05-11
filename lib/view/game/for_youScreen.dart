import 'package:flutter/material.dart';
import 'package:play_store_ui/provider/playStore_provider.dart';
import 'package:provider/provider.dart';

class ForScreen extends StatefulWidget {
  const ForScreen({Key? key}) : super(key: key);

  @override
  State<ForScreen> createState() => _ForScreenState();
}

class _ForScreenState extends State<ForScreen> {
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
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Text(
                    "Casual games",
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
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  itemBuilder: (context, index) => myStore(index),
                  scrollDirection: Axis.horizontal,
                  itemCount: providerF!.dataList.length,
                )),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Text(
                    "Suggests for you",
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
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  itemBuilder: (context, index) => myStore(index),
                  scrollDirection: Axis.horizontal,
                  itemCount: providerF!.dataList.length,
                )),  SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
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
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  itemBuilder: (context, index) => myStore(index),
                  scrollDirection: Axis.horizontal,
                  itemCount: providerF!.dataList.length,
                ))
          ],
        ),
      ),
    ));
  }

  Widget myStore(int index) {
    return InkWell(
      onTap: () {
      Navigator.pushNamed(context,'gamevisit',arguments: index);
      },
      child: Container(
        margin: EdgeInsets.all(2),
        height: 200,
        width: 250,
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Image.asset(
                  "${providerF!.dataList[index].image}",
                  width: 245,
                  height: 138,
                )),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
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
          ],
        ),
      ),
    );
  }
}
