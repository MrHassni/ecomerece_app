import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/buttons/long_rounded_button.dart';

class ChangeNumberScreen extends StatefulWidget {
  @override
  State<ChangeNumberScreen> createState() => _ChangeNumberScreenState();
}

class _ChangeNumberScreenState extends State<ChangeNumberScreen> {
  TextEditingController OldPhoneNumController = TextEditingController();
  TextEditingController NewPhoneNumController = TextEditingController();

  String OldPhoneNum = '';
  String NewPhoneNum = '';

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
                        'Change Number',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                const SizedBox(
                    height: 50,
                    width: 250,
                    child: Text(
                      'For the Security & Safety Please choose password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontFamily: 'Nuntio-Light.ttf'),
                    )),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset('images/mobile_img.png'),
                ),
                const Align(alignment: Alignment.centerLeft, child: Text('Old Phone Number')),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  // margin: EdgeInsets.all(20),
                    child: TextField(
                      controller: OldPhoneNumController,
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
                        labelText: 'Old Phone Number',
                        prefixIcon: Icon(
                          Icons.mobile_friendly,
                          color: Constants.kDarkOrangeColor,
                        ),
                      ),
                      onChanged: (text) {
                        setState(() {
                          OldPhoneNum = text;
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),

                Container(
                  // margin: EdgeInsets.all(20),
                  child: Text(OldPhoneNum),
                ),

                // Confirm password...
                const SizedBox(
                  height: 10,
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('New Phone Number')),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  // margin: EdgeInsets.all(20),

                    child: TextField(
                      controller: NewPhoneNumController,
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
                        labelText: 'New Phone Number',
                        prefixIcon: Icon(
                          Icons.mobile_friendly,
                          color: Constants.kDarkOrangeColor,
                        ),
                      ),
                      onChanged: (text) {
                        setState(() {
                          NewPhoneNum = text;
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(NewPhoneNum),
                ),
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
