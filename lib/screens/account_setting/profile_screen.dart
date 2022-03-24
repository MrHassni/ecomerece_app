import 'dart:io';

import 'package:crockery_app/constant/constant.dart';
import 'package:crockery_app/screens/account_setting/change_email_screen.dart';
import 'package:crockery_app/screens/account_setting/change_number_screen.dart';
import 'package:crockery_app/screens/account_setting/change_password_screen.dart';
import 'package:crockery_app/screens/enter_mob_num_screen.dart';
import 'package:crockery_app/widgets/top_bars/top_bar_without_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/buttons/long_rounded_button.dart';
import 'add_email_screen.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  XFile? imageFile;
  final ImagePicker  _picker = ImagePicker();
  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source,);
    setState(() {
      imageFile = pickedFile!;
    });
  }
  //bottomsheet..
  Widget bottomSheet(){
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      child: Column(
        children: <Widget>[
          const Text(
            "Choose Profile photo",style: TextStyle(fontSize: 20.0,),
          ),
          const SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                icon: const Icon(Icons.camera),
                onPressed: (){
                  takePhoto(ImageSource.camera);
                }, label: const Text('Camera'),
              ),
              TextButton.icon(
                icon: const Icon(Icons.image),
                onPressed: (){
                  takePhoto(ImageSource.gallery);
                }, label: const Text('Gallary'),
              ),
            ],
          )
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBarWithoutButton(pageName: 'Account Details'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 20,),
                    Stack(
                      children: <Widget>[
                        imageFile == null? const CircleAvatar(
                          backgroundColor: Colors.black12,
                          radius: 80.0,
                          backgroundImage:AssetImage("images/profilepic.png"),
                        ):
                        CircleAvatar(
                          backgroundColor: Colors.black12,
                          radius: 80.0,
                          backgroundImage:  FileImage(File(imageFile!.path.toString())),
                        ),
                        Positioned(
                          bottom: 20.0,
                          right:20.0,
                          child: InkWell(
                            onTap: (){
                              showModalBottomSheet(context: context, builder: ((builder)=>bottomSheet()));
                            },
                            child: const Icon(Icons.camera_alt,
                              color: Colors.teal,
                              size: 28.0,),
                          ),
                        ),
                      ],
                    ),
                    //name...
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 40,
                      child: Row(
                        children:  const [
                          Icon(Icons.person,color: Colors.grey,),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Robert Miles',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nuntio-Bold.ttf',
                                  fontSize: 15),
                            ),
                          ),
                          Spacer(),
                          Text('Change',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                        ],
                      ),),
                    SizedBox(height: 10,),
                    //number...
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 40,
                      child: Row(
                        children:  [
                          Icon(Icons.phone,color: Colors.grey,),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              '03230000123',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nuntio-Bold.ttf',
                                  fontSize: 15),
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => MobileNumber()),
                                );

                              },
                              child: Text('Change',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                        ],
                      ),),
                    SizedBox(height: 10,),
                    //password...
                    Container(
                        padding: EdgeInsets.all(10),
                        height: 40,
                        child: Row(
                          children:  [
                            Icon(Icons.lock,color: Colors.grey,),
                            const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                '........',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Nuntio-Bold.ttf',
                                    fontSize: 15),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => ChangePasswordScreen()),
                                  );

                                },
                                child: Text('Change',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                          ],
                        )),
                    SizedBox(height: 10,),
                    //email...
                    Container(
                        padding: EdgeInsets.all(10),
                        height: 40,
                        child: Row(
                          children:  [
                            Icon(Icons.email,color: Colors.grey,),
                            const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Not Set',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Nuntio-Bold.ttf',
                                    fontSize: 15),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => AddEmailScreen()),
                                  );

                                },
                                child: const Text('Add',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                          ],
                        )),
                    const SizedBox(height: 50,),

                    LongRoundButton(text: 'Save', onPressed: (){
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  LoginScreen()));
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}