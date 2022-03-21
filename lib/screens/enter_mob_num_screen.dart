
import 'dart:developer';

import 'package:crockery_app/constant/constant.dart';
import 'package:crockery_app/screens/enter_otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:crockery_app/widgets/buttons/rounded_button.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';




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
   child: SingleChildScrollView(
     child: Padding(
       padding: const EdgeInsets.all(40),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SizedBox(height: 250,
               width: 250,
               child: Image.asset('images/mobile_img.png'),
           ),
           // const SizedBox(height: 40,),
           // const Align(alignment: Alignment.centerLeft,
           //     child: Text('Phone Number')),
           // SizedBox(height: 10,),
           Container(
             padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
             decoration:  BoxDecoration(
               color: Colors.transparent,
               // boxShadow: [
               //   BoxShadow(
               //     color: Color(0xffeeeeee),
               //     blurRadius: 10,
               //     offset: Offset(0, 4),
               //   ),
               // ],
               borderRadius: BorderRadius.circular(8),
               border: Border.all(color: Constants.kDarkOrangeColor,width: 1.5),
             ),

             child:  Stack(
               children: [
                 InternationalPhoneNumberInput(

                   onInputChanged: (value){
                     log( value.toString().length.toString());
                     if(value.toString().length == 13){
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  OptNumber()));

                     }
                   },
                   formatInput: false,
                   // selectorConfig: SelectorConfig(
                   //   selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                   // ),
                   cursorColor:Colors.black,
                   inputDecoration: const InputDecoration(
                     hintText: '33365656553',
                     hintStyle: TextStyle(color: Constants.kGraniteGreyColor),
                     contentPadding: EdgeInsets.only(bottom: 15,left: 0),
                     border: InputBorder.none,
                   ),


                   textStyle:const TextStyle(color: Colors.black,fontSize: 16),
                 ),
                 Positioned(
                   left: 100,
                   top: 8,
                   bottom: 8,
                   child: Container(
                     height: 40,
                     width: 1,
                     color: Colors.black.withOpacity(0.13),
                   ),
                 ),
                 // const Icon(Icons.whatsapp)
               ],
             ),
           ),
           SizedBox(height: 40,),

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
