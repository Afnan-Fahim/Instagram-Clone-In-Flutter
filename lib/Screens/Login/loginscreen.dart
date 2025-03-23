import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/SignUp/signupscreen.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: 'logo.png'),
            SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: emailController,
              text: 'Email',
              tohide: false,
              // textinputtype: textinputtype,
            ),

            SizedBox(height: 15),
            UiHelper.CustomTextField(
              controller: passwordController,
              text: 'Password',
              tohide: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 23),
                  child: UiHelper.CustomTextButton(
                    callback: () {},
                    text: 'Forgot password?',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            UiHelper.CustomButton(callback: () {}, buttonname: 'Log in'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage(imgurl: 'Icon.png'),
                UiHelper.CustomTextButton(
                  callback: () {},
                  text: 'Log in with Facebook',
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'OR',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                UiHelper.CustomTextButton(
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  text: 'Sign Up',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
