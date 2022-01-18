import 'package:clubhouse/screens/phone_auth_screen.dart';
import 'package:clubhouse/util/colors.dart';
import 'package:clubhouse/util/constants.dart';
import 'package:clubhouse/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(outerPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "🎉 Welcome!",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 24,
            ),
            buildElement(
                text:
                    "We\'re working hard to get Clubhouse ready for launch! While we wrap up the finishing touches, we\'re adding people gradually to make sure nothing breaks. :)"),
            SizedBox(
              height: 24,
            ),
            buildElement(
                text:
                    "If you don\'t yet have an invite, you can reserve your username now and we\'ll get you on very soon. We are so grateful you\'re here and can\'t wait to have you join! 🙏"),
            SizedBox(
              height: 24,
            ),
            buildElement(text: "🏠 Paul, Rohan & the Clubhouse team"),
            SizedBox(
              height: 24,
            ),
            buildButtons(context)
          ],
        ),
      ),
    );
  }

  buildButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 48, right: 48),
      child: Column(
        children: [
          RoundedButton(
              onTab: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => PhoneAuthScreen()));
              },
              text: "Get your username"),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Have an invite text? Sign in",
                style: TextStyle(color: AppColors.darkBlueColor),
              ),
              SizedBox(
                width: 4.0,
              ),
              Icon(
                (Icons.arrow_right_alt),
                color: AppColors.darkBlueColor,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildElement({required String text}) {
    return Text(
      "$text",
      style: TextStyle(fontSize: 18, height: 1.8),
    );
  }
}
