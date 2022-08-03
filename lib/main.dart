import 'package:flutter/material.dart';
import 'package:blogapp/blog_registration/presentation/screens/onboarding.dart';
import 'package:blogapp/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: PageRouter.generateRoute,
      // initialRoute: "/",
      initialRoute: LandingPage.routename,
    );
  }
}
