import 'package:clubhouse/util/constants.dart';
import 'package:clubhouse/widgets/rounded_button.dart';
import 'package:flutter/material.dart';


class UserNameScreen extends StatelessWidget {
  const UserNameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 120 , right: outerPadding , left: outerPadding),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Your username" , style: TextStyle(fontSize: 22),),
            SizedBox(height: 40,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: TextFormField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "@username"
                ),

              ),
            ),
            SizedBox(height: 8,),
            Text("Suggestions: mfouad , aracody"),
            SizedBox(height: 120,),
            RoundedButton(onTab: (){
              //Navigator.of(context).push(MaterialPageRoute(builder: (_) => InvitationScreen()));
            }, text: "Next")


          ],
        ),
      ),
    );
  }
}
