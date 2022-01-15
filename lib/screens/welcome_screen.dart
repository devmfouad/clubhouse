import 'package:clubhouse/util/colors.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("🎉 Welcome!" , style: TextStyle(fontSize: 24),),
            SizedBox(height: 24,),
            buildElement(text: "We\'re working hard to get Clubhouse ready for launch! While we wrap up the finishing touches, we\'re adding people gradually to make sure nothing breaks. :)"),
            SizedBox(height: 24,),
            buildElement(text: "If you don\'t yet have an invite, you can reserve your username now and we\'ll get you on very soon. We are so grateful you\'re here and can\'t wait to have you join! 🙏"),
            SizedBox(height: 24,),
            buildElement(text: "🏠 Paul, Rohan & the Clubhouse team"),

            SizedBox(height: 24,),
            buildButtons()
          ],
        ),
      ),
    );
  }
  buildButtons(){
    return Padding(
      padding: const EdgeInsets.only(left: 48, right: 48),
      child: Column(
        children: [
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.darkBlueColor,
              borderRadius: BorderRadius.circular(24)
            ),
            child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Get your username" , style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                    SizedBox(width: 4.0,),
                    Icon((Icons.arrow_right_alt ) , color: Colors.white,)
                  ],
                ),
            ),
          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Have an invite text? Sign in" , style: TextStyle(color: AppColors.darkBlueColor),),
              SizedBox(width: 4.0,),
              Icon((Icons.arrow_right_alt ) , color: AppColors.darkBlueColor,)
            ],
          )
        ],
      ),
    );
  }


  Widget buildElement({required String text}) {
    return Text("$text" ,
      style: TextStyle(fontSize: 18 , height: 1.8),);
  }
}
