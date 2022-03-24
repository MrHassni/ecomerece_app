
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

import '../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../widgets/buttons/long_rounded_button.dart';
import '../widgets/buttons/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController PhoneNumController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  String Mobile_Number = '';
  String Password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.height*0.25,
                  child: Image.asset('images/moblogin.png'),
                ),
                const SizedBox(
                  height: 40,
                ),
                // const Align(
                //     alignment: Alignment.centerLeft,
                //     child: Text('Phone Number')),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    // margin: EdgeInsets.all(20),
                    child: TextField(
                  controller: PhoneNumController,
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Constants.kDarkOrangeColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Constants.kDarkOrangeColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Constants.kDarkOrangeColor,
                      ),
                    ),
                    labelText: 'Enter Mobile Number',
                    labelStyle:TextStyle(color: Constants.kDarkOrangeColor),
                    prefixIcon: Icon(
                      Icons.mobile_friendly,
                      color: Constants.kDarkOrangeColor,
                    ),
                  ),
                  onChanged: (text) {
                    setState(() {
                      Mobile_Number = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                )),
                const SizedBox(height: 10,),
                // const Align(
                //     alignment: Alignment.centerLeft,
                //     child: Text('Password')),
                const SizedBox(height: 5,),
                Container(
                  // margin: EdgeInsets.all(20),
                    child: TextField(
                      controller: PasswordController,
                      decoration:  InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Constants.kDarkOrangeColor,),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Constants.kDarkOrangeColor,),
                        ) ,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Constants.kDarkOrangeColor,),),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Constants.kDarkOrangeColor),
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
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text(Mobile_Number),
                ),
                Column(children: [
                  RoundedButton(text: 'Login', onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  BottomNavigate()));
                  }),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      '-----------------------------OR----------------------------'),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Constants.kLightGreyColor, width: 1),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(width: 12,),
                            Image.asset(
                              'images/google.png',
                              height: 20,
                              width: 20,
                            ),
                            const Text(
                              'LOGIN WITH GOOGLE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Constants.kGraniteGreyColor),
                            ),
                            SizedBox(width: 12,),
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
