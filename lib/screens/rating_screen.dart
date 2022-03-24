import 'dart:io';

import 'package:crockery_app/constant/constant.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/buttons/long_rounded_button.dart';

class RatingScreen extends StatefulWidget {
  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  XFile? imageFile;
  final ImagePicker _picker = ImagePicker();

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.pickImage(
      source: source,
    );
    setState(() {
      imageFile = pickedFile!;
    });
  }

  //bottomsheet..
  Widget bottomSheet() {
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
            "Choose a photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                icon: const Icon(Icons.camera),
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                label: const Text('Camera'),
              ),
              TextButton.icon(
                icon: const Icon(Icons.image),
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                label: const Text('Gallary'),
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
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          child:  Icon(
                            Icons.arrow_back_ios,
                            color: Constants.kDarkOrangeColor,
                          )),
                      Column(
                        children: [],
                      ),
                      const Text(
                        'Product Rating',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Description')),
                ),
                // Container(
                //   margin: EdgeInsets.only(top: 20,bottom: 20),
                //   height: 200,
                // width: MediaQuery.of(context).size.width*0.75,
                // // color: Colors.red,
                //   decoration: BoxDecoration(
                //       border: Border.all(color: Constants.kLightOrangeColor)
                //   ),
                //   child: Text('Enter your description'),
                // ),
                Container(
                  height: 200,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Constants.kLightOrangeColor)),
                  child: const TextField(
                    maxLines: 1,
                    style: TextStyle(fontSize: 17),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      filled: false,

                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        // borderRadius: BorderRadius.all(Radius.circular(2)),
                      ),
                      // fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: 'Enter your Description',
                    ),
                  ),
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Upload a picture')),
                SizedBox(height: 10,),

                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(20),
                  dashPattern: [10, 10],
                  color: Constants.kLightOrangeColor,
                  strokeWidth: 2,
                  child: Container(
               padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    // decoration: BoxDecoration(
                    //     border: Border.all(
                    //         color: Constants.kLightOrangeColor)),
                    child: Column(
                      children: <Widget>[
                        imageFile == null
                            ? Container(
                                width: MediaQuery.of(context).size.width * 0.4,

                                child: Image.asset(
                                  'images/uploadimg.png',
                                  height: 90,
                                  width: 100,
                                ),
                              ):
                        Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Constants.kLightOrangeColor)),
                            child: Image.file(File(imageFile!.path.toString()))),

                            // : CircleAvatar(
                            //     backgroundColor: Colors.black12,
                            //     radius: 80.0,
                            //     backgroundImage:
                            //         FileImage(File(imageFile!.path.toString())),
                            //   ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: ((builder) => bottomSheet()));
                          },
                          child: const Text("Upload image here"),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                const Align(alignment: Alignment.centerLeft,
                    child: Text('Give Rating',style: TextStyle(color: Constants.kBlackColor),)),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                     Icon(Icons.star,color: Constants.kGreyColor,),
                      Icon(Icons.star,color: Constants.kGreyColor,),
                      Icon(Icons.star,color: Constants.kGreyColor,),
                      Icon(Icons.star,color: Constants.kGreyColor,),
                      Icon(Icons.star,color: Constants.kGreyColor,),

                    ],
                  ),
                ),
                LongRoundButton(text: 'Done', onPressed: (){
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
