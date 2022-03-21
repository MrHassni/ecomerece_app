
import 'dart:developer';

import 'package:crockery_app/constant/constant.dart';
import 'package:crockery_app/screens/enter_otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crockery_app/widgets/buttons/rounded_button.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:location/location.dart';


// Future<String> getCountryName() async {
//   Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//   debugPrint('location: ${position.latitude}');
//   final coordinates =  Coordinates(position.latitude, position.longitude);
//   var addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
//   var first = addresses.first;
//   return first.countryName; // this will return country name
// }

class MobileNumber extends StatefulWidget {
  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'Pak';
  PhoneNumber number = PhoneNumber(isoCode: '+92');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: SafeArea(
   child: SingleChildScrollView(
     child: SizedBox(
       height: MediaQuery.of(context).size.height,
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


                     onInputChanged: (PhoneNumber number){
                       log( number.toString().length.toString());
                       if(number.toString().length == 13){
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  OptNumber()));

                       }

                     },
                     initialValue: number,
                     textFieldController: controller,
                     formatInput: false,
                     selectorConfig: const SelectorConfig(
                       selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                     ),
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
 ),
    );
  }
}
//
// import 'dart:developer';
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//         // This makes the visual density adapt to the platform that you run
//         // the app on. For desktop platforms, the controls will be smaller and
//         // closer together (more dense) than on mobile platforms.
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class PhoneNum extends StatefulWidget {
//   @override
//   _PhoneNumState createState() => _PhoneNumState();
// }
//
// class _PhoneNumState extends State<PhoneNum> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   PhoneNumber? _phoneNumber;
//   bool _verifyingPhoneNumber = false;
//
//   Future<void> _validatePhoneNumber() async {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       setState(() {
//         _verifyingPhoneNumber = true;
//       });
//       print(_phoneNumber.toString());
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     log(Platform.localeName.split('_').last,);
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(32.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: InternationalPhoneNumberInput(
//                     isEnabled: !_verifyingPhoneNumber,
//                     onInputChanged: (value) {
//                       _phoneNumber = value;
//                     },
//                     initialValue: PhoneNumber(
//                       isoCode: Platform.localeName,
//                     ),
//                     autoFocus: true,
//                     selectorConfig: SelectorConfig(
//                       selectorType: PhoneInputSelectorType.DIALOG,
//                       countryComparator: (country1, country2) {
//                         return country1.name!.compareTo(country2.name!);
//                       },
//                       useEmoji: true,
//                     ),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       width: 44.0,
//                       height: 44.0,
//                       child: RawMaterialButton(
//                         shape: CircleBorder(),
//                         child: _verifyingPhoneNumber
//                             ? CircularProgressIndicator(
//                           valueColor: AlwaysStoppedAnimation<Color>(
//                             Theme.of(context).colorScheme.onSecondary,
//                           ),
//                         )
//                             : Icon(
//                           Icons.arrow_forward_ios,
//                           color:
//                           Theme.of(context).colorScheme.onSecondary,
//                         ),
//                         fillColor: Theme.of(context).colorScheme.secondary,
//                         onPressed:
//                         _verifyingPhoneNumber ? null : _validatePhoneNumber,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }