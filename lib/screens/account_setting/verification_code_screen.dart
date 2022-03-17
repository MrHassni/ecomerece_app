import 'package:crockery_app/screens/password_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import 'package:crockery_app/widgets/buttons/rounded_button.dart';
import '../../constant/constant.dart';


// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Awesome Credit Card Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Awesome Credit Card Demo'),
//     );
//   }
// }

class VerificationCode extends StatefulWidget {
  VerificationCode({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _VerificationCodeState createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  OtpFieldController otpController = OtpFieldController();
//dailog box .....
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Image.asset('images/verifyimg.png',height: 100,width: MediaQuery.of(context).size.height*0.4,),
          content:

              Text('Your Email is Added'),


          actions: <Widget>[
            TextButton(
              child: Text('okay'),
              onPressed: () {
                print('Done');
                Navigator.of(context).pop();
              },
            // ),
            // TextButton(
            //   child: Text('Cancel'),
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.cleaning_services),
      //   onPressed: () {
      //     print("Floating button was pressed.");
      //     otpController.clear();
      //     // otpController.set(['2', '3', '5', '5', '7']);
      //     // otpController.setValue('3', 0);
      //     // otpController.setFocus(1);
      //   },
      // ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        'Verification Code',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),

                SizedBox(height: 100,
                  width: 150,
                  child: Image.asset('images/mobile_img.png'),
                ),
                const Align(alignment: Alignment.centerLeft,
                    child: Text('Verification Code')),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Constants.kDarkOrangeColor,width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: OTPTextField(
                        otpFieldStyle: OtpFieldStyle(
                            enabledBorderColor: Colors.transparent,
                            focusBorderColor:  Colors.transparent,
                            borderColor: Colors.transparent
                        ),

                        controller: otpController,
                        length: 6,
                        width: MediaQuery.of(context).size.width *0.8,
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        // fieldStyle: FieldStyle.box,
                        // outlineBorderRadius: 15,

                        style: TextStyle(fontSize: 17),
                        onChanged: (pin) {
                          print("Changed: " + pin);
                        },
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        }),
                  ),
                ),
                const SizedBox(height: 15,),
                const Align(alignment: Alignment.centerRight,
                    child: Text('Resend OTP',style: TextStyle(color: Constants.kDarkOrangeColor),)),
                SizedBox(height: 40,),
                RoundedButton(text: 'Next', onPressed: (){
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  PasswordScreen()));
                  _showMyDialog();
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}