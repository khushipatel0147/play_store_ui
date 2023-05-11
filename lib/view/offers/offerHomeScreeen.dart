import 'package:flutter/material.dart';
import 'package:play_store_ui/provider/playStore_provider.dart';
import 'package:provider/provider.dart';

class O_HomeScreen extends StatefulWidget {
  const O_HomeScreen({Key? key}) : super(key: key);

  @override
  State<O_HomeScreen> createState() => _O_HomeScreenState();
}

class _O_HomeScreenState extends State<O_HomeScreen> {
  PlayStoreProvider? providerFalse;
  PlayStoreProvider? providerTrue;

  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<PlayStoreProvider>(context, listen: true);
    providerFalse = Provider.of<PlayStoreProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Offers for apps for you might like",
                style: TextStyle(
                    letterSpacing: 1,
                    fontFamily: 'Lily',
                    fontSize: 20,
                    color: Colors.black),
              ),
              SizedBox(height: 20),
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:
                      Image.asset("${providerFalse!.offerinfo[1].image}")),
              SizedBox(height: 10),
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "${providerFalse!.offerinfo[1].path}",
                        height: 70,
                        width: 70,
                      )),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("${providerFalse!.offerinfo[0].name}",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontSize: 16)),
                      Text("${providerFalse!.offerinfo[0].company}",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontSize: 13)),
                      Text("3.8⭐",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontSize: 13))
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Offers for apps for you might like",
                style: TextStyle(
                    letterSpacing: 1,
                    fontFamily: 'Lily',
                    fontSize: 20,
                    color: Colors.black),
              ),
              SizedBox(height: 20),
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:
                      Image.asset("${providerFalse!.offerinfo[0].image}")),
              SizedBox(height: 10),
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "${providerFalse!.offerinfo[0].path}",
                        height: 70,
                        width: 70,
                      )),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("${providerFalse!.offerinfo[1].name}",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontSize: 16)),
                      Text("${providerFalse!.offerinfo[1].company}",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontSize: 13)),
                      Text("3.8⭐",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'Lily',
                              fontSize: 13))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
