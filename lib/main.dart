import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/screens/favorites_screen.dart';
import 'package:proj/screens/home_screen.dart';
import 'package:proj/screens/login_screen.dart';
import 'package:proj/screens/package_details_screen.dart';
import 'package:proj/screens/payment_screen.dart';
import 'package:proj/screens/producer_details_screen.dart';
import 'package:proj/screens/profile_screen.dart';
import 'package:proj/screens/singup_screen.dart';

import 'models/package_model.dart';
import 'models/producer_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)  {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      // initialRoute: 'home',
      // onGenerateRoute: RouteGenerator.generateRoute,
      home: Nuvigator.routes(
        screenType: materialScreenType,
        initialRoute: 'home',
        routes: [
          NuRouteBuilder(path: 'home', builder: (_, __, ____) => HomeScreen()),
          NuRouteBuilder(path: 'login', builder: (_, __, ____) => LoginScreen()),
          NuRouteBuilder(path: 'sign-up', builder: (_, __, ____) => SingupScreen()),
          NuRouteBuilder(path: 'favorites', builder: (_, __, ____) => FavoritesScreen()),
          NuRouteBuilder(path: 'profile', builder: (_, __, ____) => ProfileScreen()),
          NuRouteBuilder(path: 'payment', builder: (_, __, ____) => PaymentScreen()),
          NuRouteBuilder(path: 'producer-details', builder: (_, __, NuRouteSettings args) {
            final Producer producer = args.rawParameters["producer"];
            return ProducerDetailsScreen(producer: producer);
          }),
          NuRouteBuilder(path: 'package-details', builder: (_, __, NuRouteSettings args) {
            final Producer producer = args.rawParameters["producer"];
            final Package package = args.rawParameters["package"];
            return PackageDetailsScreen(producer: producer, package: package);
          }),
      ]
      )
    );
  }
}