import 'package:flutter/material.dart';
// import 'package:groceries_app/screens/home_screen.dart';
import 'package:groceries_app/screens/product_detail.dart';
// import 'package:groceries_app/screens/singin.dart';
// import 'package:groceries_app/screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Groceries App",
      // home: WelcomeScreen(),
      // home: SinginScreen(),
      // home: HomeScreen(),
      home: ProductDetail(),
    );
  }
}
