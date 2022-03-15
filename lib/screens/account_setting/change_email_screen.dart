import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/buttons/long_rounded_button.dart';

class ChangeEmailScreen extends StatefulWidget {
  @override
  State<ChangeEmailScreen> createState() => _ChangeEmailScreenState();
}

class _ChangeEmailScreenState extends State<ChangeEmailScreen> {
  TextEditingController OldEmailNumController = TextEditingController();
  TextEditingController NewEmailNumController = TextEditingController();

  String OldEmailNum = '';
  String NewEmailNum = '';

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
                            color: Colors.deepOrange,
                          )),
                      const Text(
                        'Change Email',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                // SizedBox(
                //     height: 50,
                //     width: 250,
                //     child: Text(
                //       'For the Security & Safety Please choose password',
                //       textAlign: TextAlign.center,
                //       style: TextStyle(
                //           fontSize: 16,
                //           color: Colors.grey,
                //           fontFamily: 'Nuntio-Light.ttf'),
                //     )),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset('images/img.png'),
                ),
                Align(alignment: Alignment.centerLeft, child: Text('Old Email Number')),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // margin: EdgeInsets.all(20),
                    child: TextField(
                      controller: OldEmailNumController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFAB4D24),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFAB4D24),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFAB4D24),
                          ),
                        ),
                        labelText: 'Old Email Number',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xFFAB4D24),
                        ),
                      ),
                      onChanged: (text) {
                        setState(() {
                          OldEmailNum = text;
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),

                Container(
                  // margin: EdgeInsets.all(20),
                  child: Text(OldEmailNum),
                ),

                // Confirm password...
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('New Email Number')),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // margin: EdgeInsets.all(20),

                    child: TextField(
                      controller: NewEmailNumController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFAB4D24),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFAB4D24),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFAB4D24),
                          ),
                        ),
                        labelText: 'New Email Number',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xFFAB4D24),
                        ),
                      ),
                      onChanged: (text) {
                        setState(() {
                          NewEmailNum = text;
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(NewEmailNum),
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
