import 'package:clubhouse/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class InvitationScreen extends StatelessWidget {
  const InvitationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 40 , bottom: 50),
        child: Column(
          children: [
            Text("🎉 Welcome to Clubhouse.\nYou\'re Mohamed Fouad\'s friend!",
            style: TextStyle(
              fontSize: 24
            ),),
            SizedBox(height: 50,),
            
            Image.asset("assets/images/profilePic.png" ,
              width: 100 , height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 4,),
            Text("AraCody"),
            SizedBox(height: 50,),

            Text("Let\'s set up your profile?",
              style: TextStyle(
                  fontSize: 20
              ),),
            SizedBox(height: 25,),
            RoundedButton(onTab: (){}, text: "🐋 Import from whale"),
            SizedBox(height: 25,),
            InkWell(
              onTap: (){

              },
                child: Text("Enter my info manually" , style: TextStyle(color: Color(0xff5B75A6)),),
            )
          ],
        ),
      ),
    );
  }
}
