import 'package:clubhouse/util/constants.dart';
import 'package:clubhouse/widgets/rounded_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneAuthScreen extends StatelessWidget {
  const PhoneAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(outerPadding),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Text("Enter your phone #"),
              SizedBox(height: 40,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    CountryCodePicker(
                      initialSelection: "EG",
                      showCountryOnly: false,
                      alignLeft: false,
                      padding: const EdgeInsets.all(8),
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        hintStyle: TextStyle(fontSize: 20),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ))
                  ],
                ),
              ),
              SizedBox(height: 120,),
              Text("By entering your number, you\'re agreeing to out\nTerms or Services and Privacy Policy. Thanks!",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 40,),
              RoundedButton(onTab: (){}, text: "Next")
            ],
          ),
        ),
      ),
    );
  }
}
