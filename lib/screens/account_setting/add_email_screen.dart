import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../../widgets/buttons/long_rounded_button.dart';

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
        child: Padding(
          padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            //   Navigator.push(context, MaterialPageRoute(
                            //       builder: (context) => Home()),
                            //   );
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Constants.kDarkOrangeColor,
                          )),
                      const Text(
                        'Add Email',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
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
                  decoration: const InputDecoration(
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
      ),
    );
  }
}
