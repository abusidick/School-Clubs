import 'package:flutter/material.dart';
import 'package:helloworld/screen/SignUp.dart';
import 'package:helloworld/screen/home.dart';
import 'package:helloworld/screen/loginPage.dart';
import 'package:helloworld/service/constants.dart';
import 'screen/home.dart';
import 'screen/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'School Clubs',
      // Application theme data, you can set the colors for the application as
      // you want
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextcolor),
        fontFamily: 'WorkSans',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // A widget which will be started on application startup
      home: LoginPage(),
    );
  }
}
