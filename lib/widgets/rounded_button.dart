import 'package:clubhouse/util/colors.dart';
import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  final Function onTab;
  final String text;
  const RoundedButton({Key? key , required this.onTab , required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 48, right: 48),
      child: InkWell(
        onTap: (){
          onTab();
        },
        child: Container(
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
                Text("$text" , style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                SizedBox(width: 4.0,),
                Icon((Icons.arrow_right_alt ) , color: Colors.white,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
