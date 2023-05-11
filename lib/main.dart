import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_store_ui/provider/playStore_provider.dart';
import 'package:play_store_ui/view/apps/appvisitScreen.dart';
import 'package:play_store_ui/view/books/bookvisit.dart';
import 'package:play_store_ui/view/game/gamevisitScreen.dart';
import 'package:play_store_ui/view/homeScreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (context) => PlayStoreProvider(),)
     ],
     child: MaterialApp(
         useInheritedMediaQuery: true,
         debugShowCheckedModeBanner: false,
         routes: {
           '/':(context) =>HomeScreen(),
           'gamevisit':(context) => VisitScreen(),
           'appvisit':(context) => AppVisitScreen(),
           'bookvisit':(context) => BookVisitScreen(),
         }
     ),
   ));
}