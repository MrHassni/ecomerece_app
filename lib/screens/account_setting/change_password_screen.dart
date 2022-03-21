import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../../widgets/buttons/long_rounded_button.dart';
import '../../widgets/dialog_box/dialog_box.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController CurrentPasswordController = TextEditingController();
  TextEditingController NewPasswordController = TextEditingController();
  TextEditingController ConfirmPasswordController = TextEditingController();
  bool _isObscureCurrentPasS = true;
  bool _isObscurePass = true;
  bool _isObscureComfirmPass = true;
  String NewPassword = '';
  String CurrentPassword = '';
  String ConfirmPassword ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
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
                        'Change Password',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                const SizedBox(height: 100,
                    width: 250,
                    child: Text('For the Security & Safety Please choose password',textAlign: TextAlign.center,style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontFamily:'Nuntio-Light.ttf'
                    ),)),
                // SizedBox(height: 150,
                //   width: 150,
                //   child: Image.asset('images/moblogin.png'),
                // ),
                //Current Password...for
                Align(alignment: Alignment.centerLeft,
                    child: Text('Current Password')),
                SizedBox(height: 10,),
                Container(
                  // margin: EdgeInsets.all(20),
                    child: TextField(
                      controller: CurrentPasswordController,
                      obscureText: _isObscureCurrentPasS,
                      decoration:  InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscureCurrentPasS ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscureCurrentPasS = !_isObscureCurrentPasS;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(  color: Constants.kDarkOrangeColor,),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(  color: Constants.kDarkOrangeColor,),
                        ) ,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(  color: Constants.kDarkOrangeColor,),),
                        labelText: 'Current Password',
                        prefixIcon: Icon(Icons.lock,  color: Constants.kDarkOrangeColor,),

                      ),
                      onChanged: (text) {
                        setState(() {
                          CurrentPassword = text;
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),

                Container(
                  // margin: EdgeInsets.all(20),
                  child: Text(CurrentPassword),
                ),

                // New Password...
                Align(alignment: Alignment.centerLeft,
                    child: Text('Add New Password')),
                SizedBox(height: 10,),
                Container(
                  // margin: EdgeInsets.all(20),
                    child: TextField(
                      controller: NewPasswordController,
                      obscureText: _isObscurePass,
                      decoration:  InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscurePass ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscurePass = !_isObscurePass;
                            });
                          },
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(  color: Constants.kDarkOrangeColor,),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(  color: Constants.kDarkOrangeColor,),
                        ) ,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(  color: Constants.kDarkOrangeColor,),),
                        labelText: 'New Password',
                        prefixIcon: Icon(Icons.lock,  color: Constants.kDarkOrangeColor,),

                      ),
                      onChanged: (text) {
                        setState(() {
                          NewPassword = text;
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),

                Container(
                  // margin: EdgeInsets.all(20),
                  child: Text(NewPassword),
                ),

                // Confirm password...
                SizedBox(height: 10,),
                const Align(alignment: Alignment.centerLeft,
                    child: Text('Confirm Password')),
                SizedBox(height: 10,),
                Container(
                  // margin: EdgeInsets.all(20),

                    child: TextField(
                      controller: ConfirmPasswordController,
                      obscureText: _isObscureComfirmPass,
                      decoration:  InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscureComfirmPass ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscureComfirmPass = !_isObscureComfirmPass;
                            });
                          },
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(  color: Constants.kDarkOrangeColor,),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(  color: Constants.kDarkOrangeColor,),
                        ) ,
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(  color: Constants.kDarkOrangeColor,),),
                        labelText: 'Confirm Password',
                        prefixIcon: const Icon(Icons.lock,  color: Constants.kDarkOrangeColor,),
                      ),
                      onChanged: (text) {
                        setState(() {
                          ConfirmPassword = text;
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(ConfirmPassword),
                ),
                LongRoundButton(text: 'Change Password', onPressed: (){
                  // DialogUtils.showCustomDialog(context,
                  //     title: "Are You sure about Delete a product?",
                  //     okBtnText: "Confirm",
                  //     cancelBtnText: "Cancel",
                  //     okBtnFunction: () { } /* call method in which you have write your logic and save process  */);
                  // // child: Container(),
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