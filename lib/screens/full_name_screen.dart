import 'package:clubhouse/screens/user_name_screen.dart';
import 'package:clubhouse/util/constants.dart';
import 'package:clubhouse/widgets/rounded_button.dart';
import 'package:flutter/material.dart';


class FullNameScreen extends StatelessWidget {
  const FullNameScreen({Key? key}) : super(key: key);

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
            Text("What's your full name ?" , style: TextStyle(fontSize: 22),),
            SizedBox(height: 40,),
            Row(
              children: [
                Expanded(
                  child: Container(
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
                        hintText: "First Name"
                      ),

                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: Container(
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
                          hintText: "Last Name"
                      ),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 120,),
            RoundedButton(onTab: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => UserNameScreen()));
            }, text: "Next")


          ],
        ),
      ),
    );
  }
}
