import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../../widgets/buttons/long_rounded_button.dart';
import '../../widgets/top_bars/top_bar_without_button.dart';

class AddEmailScreen extends StatefulWidget {
  @override
  State<AddEmailScreen> createState() => _AddEmailScreenState();
}

class _AddEmailScreenState extends State<AddEmailScreen> {
  TextEditingController AddEmailController = TextEditingController();

  String AddEmail = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopBarWithoutButton(pageName: 'Add Email'),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                        height: 80,
                        width: 280,
                        child: Text(
                          'Enter your Email address to compelete your verification code',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontFamily: 'Nuntio-Light.ttf'),
                        )),
                    // SizedBox(height: 150,
                    //   width: 150,
                    //   child: Image.asset('images/moblogin.png'),
                    // ),
                    //Current Password...for
                    const Align(alignment: Alignment.centerLeft, child: Text(' Email')),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        // margin: EdgeInsets.all(20),
                        child: TextField(
                      controller: AddEmailController,
                      decoration: InputDecoration(
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
                        labelText: 'Enter Email',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Constants.kDarkOrangeColor,
                        ),
                      ),
                      onChanged: (text) {
                        setState(() {
                          AddEmail = text;
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),

                    Container(
                      // margin: EdgeInsets.all(20),
                      child: Text(AddEmail),
                    ),
                    SizedBox(height: 50,),

                    LongRoundButton(
                        text: 'Continue',
                        onPressed: () {
                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  LoginScreen()));
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
