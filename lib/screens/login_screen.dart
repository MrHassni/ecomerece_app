import 'package:crockery_app/bottom/bottom_sheet.dart';
import 'package:crockery_app/buttons/rounded_button.dart';
import 'package:crockery_app/buttons/long_rounded_button.dart';
import 'package:crockery_app/screens/enter_otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController PhoneNumController = TextEditingController();

  String Mobile_Number = '';

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
                SizedBox(height: 150,
                  width: 150,
                  child: Image.asset('images/moblogin.png'),
                ),
                const SizedBox(height: 40,),
                const Align(alignment: Alignment.centerLeft,
                    child: Text('Phone Number')),
                SizedBox(height: 10,),
                Container(
                  // margin: EdgeInsets.all(20),
                    child: TextField(
                      controller: PhoneNumController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xFFAB4D24),),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFAB4D24),),
                        ) ,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFAB4D24),),),
                        labelText: 'Enter Mobile Number',
                        prefixIcon: Icon(Icons.mobile_friendly,color: Color(0xFFAB4D24),),
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
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(Mobile_Number),
                ),
                Column(
                  children:[ LongRoundButton(text: 'Login', onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  BottomNavigate()));
                  }),
                    SizedBox(height: 20,),
                    const Text('-------------------------or------------------------'),
                    SizedBox(height: 20,),
                    SizedBox(height: 45,
                      width: 300,
                      child: Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1),
                              borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: TextButton(onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // SizedBox(width: 8,),
                              Image.asset('images/google.png',height: 20,width: 20,),
                              Text('Login With Google',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blueGrey),),
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
