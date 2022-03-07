import 'package:crockery_app/buttons/rounded_button.dart';
import 'package:crockery_app/constant/constant.dart';
import 'package:crockery_app/screens/enter_otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileNumber extends StatefulWidget {
  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
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
               child: Image.asset('images/mobile_img.png'),
           ),
           SizedBox(height: 40,),
           Align(alignment: Alignment.centerLeft,
               child: Text('Phone Number')),
           SizedBox(height: 10,),
           Container(
               // margin: EdgeInsets.all(20),
               // decoration: BoxDecoration(
               //     border: Border.all(color: Colors.deepOrangeAccent,width: 1),
               //     borderRadius: BorderRadius.circular(20),
               // ),
               child: TextField(
                 controller: PhoneNumController,
                 decoration: const InputDecoration(
                   border: OutlineInputBorder(
                     borderSide: BorderSide(color:Constants.kDarkOrangeColor,),
                   ),
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color:Constants.kDarkOrangeColor,),
                   ) ,
                   focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Constants.kDarkOrangeColor,),),
                   labelText: 'Mobile Number',
                   prefixIcon: Icon(Icons.mobile_friendly,color: Constants.kDarkOrangeColor,),
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
           RoundedButton(text: 'Next', onPressed: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  OptNumber()));
           }),
         ],
       ),
     ),
   ),
 ),
    );
  }
}
