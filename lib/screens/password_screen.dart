import 'package:crockery_app/buttons/rounded_button.dart';
import 'package:crockery_app/buttons/long_rounded_button.dart';
import 'package:crockery_app/constant/constant.dart';
import 'package:crockery_app/screens/enter_otp_screen.dart';
import 'package:crockery_app/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  TextEditingController PasswordController = TextEditingController();
  TextEditingController ConfirmPasswordController = TextEditingController();

  String Password = '';
  String ConfirmPassword ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100,
                    width: 250,
                    child: Text('For the Security & Safety Please choose password',textAlign: TextAlign.center,style: TextStyle(
                        fontSize: 16,
                        color: Constants.kGreyColor,
                        fontFamily:'Nuntio-Light.ttf',
                    ),)),
                SizedBox(height: 150,
                  width: 150,
                  child: Image.asset('images/moblogin.png'),
                ),
               const Align(alignment: Alignment.centerLeft,
                   child: Text('Password')),
                SizedBox(height: 10,),
                Container(
                    // margin: EdgeInsets.all(20),
                    child: TextField(
                      controller: PasswordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Constants.kDarkOrangeColor,),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Constants.kDarkOrangeColor,),
                        ) ,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Constants.kDarkOrangeColor,),),
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock,color: Constants.kDarkOrangeColor,),
                      ),
                      onChanged: (text) {
                        setState(() {
                          Password = text;
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),

                Container(
                  // margin: EdgeInsets.all(20),
                  child: Text(Password),
                ),

                // Confirm password...
                const SizedBox(height: 10,),
                const Align(alignment: Alignment.centerLeft,
                    child: Text('Confirm Password')),
                SizedBox(height: 10,),
                Container(
                    // margin: EdgeInsets.all(20),

                    child: TextField(
                      controller: ConfirmPasswordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Constants.kDarkOrangeColor,),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:  Constants.kDarkOrangeColor,),
                        ) ,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:  Constants.kDarkOrangeColor,),),
                        labelText: 'Confirm Password',
                        prefixIcon: Icon(Icons.lock,color:  Constants.kDarkOrangeColor,),
                      ),
                      onChanged: (text) {
                        setState(() {
                          ConfirmPassword = text;
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(ConfirmPassword),
                ),
                LongRoundButton(text: 'Finish,Good to go', onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  LoginScreen()));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
