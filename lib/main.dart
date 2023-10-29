import 'package:flutter/material.dart';
import 'package:hostelmanagement2/intro.dart';
import 'package:hostelmanagement2/welcomeuser.dart';
import 'package:hostelmanagement2/welcomeadmin.dart';
import 'package:hostelmanagement2/userselection.dart';
import 'package:hostelmanagement2/admindashboard.dart';
import 'package:hostelmanagement2/reports.dart';
import 'package:hostelmanagement2/residentdetails.dart';
import 'package:hostelmanagement2/foodvotingview.dart';
import 'package:hostelmanagement2/profile.dart';
import 'package:hostelmanagement2/favouritemeal.dart';
import 'package:hostelmanagement2/feedback.dart';
import 'package:hostelmanagement2/reportissues.dart';
import 'package:hostelmanagement2/userdashboard.dart';
import 'package:hostelmanagement2/loginscreenuser.dart';
import 'package:hostelmanagement2/regscreenuser.dart';
import 'package:hostelmanagement2/loginscreenadmin.dart';
import 'package:hostelmanagement2/regscreenadmin.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:IntroPage(),
      routes:{
        '/into':(context)=>IntroPage(),
        '/userselection':(context)=>UserSelection(),
        '/loginscreenuser':(context)=>LoginScreenUser(),
        '/regscreenuser':(context)=>RegScreenUser(),
        '/welcomeuser':(context)=>WelcomeUser(),
        '/admindashboard':(context)=>AdminDashboard(),
        '/userdashboard':(context)=>UserDashboard(),
        '/reports':(context)=>Report(),
        '/residentdetails':(context)=>ResidenntDetailsView(),
        '/foodvotingview':(context)=>FoodVotingView(),
        '/profile':(context)=>Profile(),
        '/favouritemeal':(context)=>FavouriteMeal(),
        '/reportissues':(context)=>ReportIssues(),
        '/feedback':(context)=>FeedbackSubmit(),
        '/loginscreenadmin':(context)=>LoginScreenAdmin(),
        '/regscreenuseradmin':(context)=>RegScreenAdmin(),
        '/welcomeadmin':(context)=>WelcomeAdmin(),
      },
    );
  }
}
