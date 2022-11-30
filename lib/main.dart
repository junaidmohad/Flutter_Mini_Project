import 'package:closetify_try_1/pages/LooksPage.dart';
import 'package:closetify_try_1/pages/MarketPlacePage.dart';
import 'package:closetify_try_1/pages/SignUpPage.dart';
import 'package:closetify_try_1/pages/WardrobePage.dart';
import 'package:closetify_try_1/pages/WishlistPage.dart';
import 'package:closetify_try_1/pages/homeBotNav.dart';
import 'package:closetify_try_1/util/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => SignUpPage(),
        MyRoutes.signupRoute:(context) => SignUpPage(),
        MyRoutes.homeNavRoute: (context) => homeNavBar(),
        MyRoutes.wardrobeRoute:(context) => Wardrobe(),        
        MyRoutes.looksRoute:(context) => SignUpPage(),
        MyRoutes.marketRoute:(context) => MarketPlace(),
        MyRoutes.wishlistRoute:(context) => Wishlist() 
        


      },
    );
  }
}
