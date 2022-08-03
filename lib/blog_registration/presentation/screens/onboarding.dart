import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:blogapp/blog_registration/presentation/constants.dart';
import 'package:blogapp/blog_registration/presentation/screens/login.dart';
import '../page.dart';

class LandingPage extends StatefulWidget {
  static const routename = "landing";

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    double total = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(total / 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: height * 0.75,
              width: total * 1,
              child: PageView(
                controller: _controller,
                children: [
                  Myslider(),
                  Myslider(),
                  Myslider(),
                  Myslider(),
                ],
              ),
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: _controller, // PageController
                    count: 4,
                    textDirection: TextDirection.ltr,
                    effect: ExpandingDotsEffect(
                      activeDotColor: blue,
                      dotColor: depPurple,
                      dotHeight: total / 49,
                      dotWidth: total / 49,
                      spacing: total / 49,
                    ),
                  ),
                  SizedBox(width: total / 30),
                  Container(
                    width: total / 5,
                    height: height * 0.075,
                    decoration: BoxDecoration(
                        color: blue,
                        borderRadius: BorderRadius.circular(height * 0.026)),
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, LoginScreen.routename),
                      child: Icon(
                        DIcon,
                        size: total / 15,
                        color: kWhite,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
