import 'package:sign_button/sign_button.dart';
import 'package:flutter/material.dart';
import 'package:blogapp/blog_registration/presentation/screens/signup.dart';
import 'package:blogapp/blog_registration/presentation/screens/forget_password.dart';
import '../constants.dart';
import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  static const routename = "login";

  late double height, width;
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Bwhite,
      body: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.all(height / 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: height / 25,
            ),
            SizedBox(
              height: width * 0.2,
              child: Text(
                'Log in',
                style: TextStyle(
                    color: black,
                    fontSize: width * 0.12,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: width * 0.2,
              child: Text(
                'Welcome',
                style: TextStyle(
                    color: black,
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                    height: height * 0.12,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(height / 37),
                      ),
                      elevation: height * 0.003,
                      child: const TextInputField(
                        hint: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,
                      ),
                    )),
                SizedBox(
                    height: height * 0.12,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(height / 37),
                      ),
                      elevation: height * 0.003,
                      child: PasswordInput(
                        hint: 'Password',
                        inputAction: TextInputAction.done,
                      ),
                    )),
                SizedBox(
                  height: height / 25,
                ),
                const RoundedButton(
                  buttonName: 'Log in',
                ),
                SizedBox(
                  height: height / 25,
                ),
              ],
            ),
            SizedBox(
                height: height * 0.05,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height * 0.03,
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(
                            color: blueblack,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, ForgotPassword.routename),
                      child: Text(
                        'Reset here',
                        style: TextStyle(
                            color: kBlue,
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: width * 0.05,
              child: Text(
                'OR LOG IN WITH',
                style: TextStyle(
                    color: blueblack,
                    fontSize: width * 0.035,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: width * 0.17,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInButton.mini(
                    buttonType: ButtonType.google,
                    onPressed: () {},
                  ),
                  SignInButton.mini(
                    buttonType: ButtonType.facebook,
                    onPressed: () {},
                  ),
                  SignInButton.mini(
                    buttonType: ButtonType.twitter,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: width * 0.1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Do not have an account?',
                      style: TextStyle(
                          color: black,
                          fontSize: width * 0.055,
                          fontWeight: FontWeight.w400),
                    ), // <-- Wrapped in Expanded.
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(
                        context, CreateNewAccount.routename),
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          color: kBlue,
                          fontSize: width * 0.055,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
