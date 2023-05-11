import 'package:flutter/material.dart';
import 'package:play_store_ui/provider/playStore_provider.dart';
import 'package:provider/provider.dart';

class AppCateScreen extends StatefulWidget {
  const AppCateScreen({Key? key}) : super(key: key);

  @override
  State<AppCateScreen> createState() => _AppCateScreenState();
}

class _AppCateScreenState extends State<AppCateScreen> {
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
                SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(width: 30),

                    Icon(Icons.add_reaction,color: Colors.black54,),
                    SizedBox(width: 20),
                    Text("Action", style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(width: 30),

                    Icon(Icons.watch_later_sharp,color: Colors.black54,),
                    SizedBox(width: 20),
                    Text("Advanture", style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(width: 30),

                    Icon(Icons.card_giftcard_sharp,color: Colors.black54,),
                    SizedBox(width: 20),
                    Text("Cards", style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),)
                  ],
                ), SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(width: 30),

                    Icon(Icons.my_library_books,color: Colors.black54,),
                    SizedBox(width: 20),
                    Text("Educational", style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(width: 30),

                    Icon(Icons.music_note,color: Colors.black54,),
                    SizedBox(width: 20),
                    Text("Music", style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),)
                  ],
                ), SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(width: 30),

                    Icon(Icons.padding_outlined,color: Colors.black54,),
                    SizedBox(width: 20),
                    Text("Puzzle", style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),)
                  ],
                ), SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(width: 30),

                    Icon(Icons.radar,color: Colors.black54,),
                    SizedBox(width: 20),
                    Text("Racing", style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),)
                  ],
                ), SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(width: 30),

                    Icon(Icons.roller_skating,color: Colors.black54,),
                    SizedBox(width: 20),
                    Text("Role Playing", style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(width: 30),

                    Icon(Icons.safety_check_outlined,color: Colors.black54,),
                    SizedBox(width: 20),
                    Text("Simulation", style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),)
                  ],
                ), SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(width: 30),

                    Icon(Icons.trip_origin,color: Colors.black54,),
                    SizedBox(width: 20),
                    Text("Trivia", style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(width: 30),

                    Icon(Icons.wordpress,color: Colors.black54,),
                    SizedBox(width: 20),
                    Text("Word", style: TextStyle(
                        fontFamily: 'Lily',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            ),
          ),
        ));
  }


}
