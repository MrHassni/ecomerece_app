
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../constant/constant.dart';
import 'package:location/location.dart';


class AddLocationScreen extends StatefulWidget {
  const AddLocationScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<AddLocationScreen> {

  LatLng _initialcameraposition = LatLng(20.5937, 78.9629);
  GoogleMapController? _controller;
  Location _location = Location();

  void _onMapCreated(GoogleMapController _cntlr)
  {
    _controller = _cntlr;
    _location.onLocationChanged.listen((l) {
      _controller?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude!,l.longitude!),zoom: 15),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 15,
                  ),
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
                        'Add Location',
                        style: TextStyle(
                            color: Constants.kBlackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                // color: Constants.kRedColor,
                child: Stack(
                  children: [

                    GoogleMap(
                      padding: EdgeInsets.only(bottom: 100, left: 15),
                      initialCameraPosition: CameraPosition(target: _initialcameraposition),
                      mapType: MapType.normal,
                      onMapCreated: _onMapCreated,
                      // myLocationEnabled: true,
                      myLocationButtonEnabled: false,
                      myLocationEnabled: true,
                    ),

                    // Positioned(
                    //   bottom: 48.0,
                    //   left: 10.0,
                    //   right: 10.0,
                    //   child: FlatButton(onPressed: (){
                    //     setState(() {
                    //       _onMapCreated(_controller!);
                    //     });
                    //
                    //   },
                    //     color: Colors.blue[800],
                    //     child: Text("Back to location",
                    //       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white),),
                    //   ),
                    // ),

                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        right: 10, left: 15, bottom: 10, top: 20),
                    height: 30,
                    width: MediaQuery.of(context).size.width*0.65,
                    decoration: BoxDecoration(
                      color: Constants.kLightGreyColor,
                      borderRadius: BorderRadius.circular(5),
                      // border: Border.all(
                      //     width: 1,
                      //     color: Constants.kDarkOrangeColor,
                      //     style: BorderStyle.solid),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      // textAlignVertical: TextAlignVertical.center,

                      decoration: const InputDecoration(
                          hintText: 'Search Product',
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.all(9),
                          border: InputBorder.none),
                      onChanged: (value) {
                        // Do something
                      },
                    ),
                  ),
                   SizedBox(width: MediaQuery.of(context).size.width*0.25,
                     child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Constants.kDarkOrangeColor,

                      ),
                  ),
                   ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 7,
                        child:  const CircleAvatar(
                          backgroundColor: Constants.kWhiteAccent,
                          child: Icon(Icons.home_outlined,color: Constants.kDarkOrangeColor,),
                        ),
                      ),
                      Text('Home'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 7,
                        child: const CircleAvatar(
                          backgroundColor: Constants.kWhiteAccent,
                          child: Icon(Icons.shopping_bag_outlined,color: Constants.kDarkOrangeColor,),
                        ),
                      ),
                      Text('Work'),
                    ],
                  ),
                  Column(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 7,
                        child: const CircleAvatar(
                          backgroundColor: Constants.kWhiteAccent,
                          child: Icon(Icons.favorite_border,color: Constants.kDarkOrangeColor,),
                        ),
                      ),
                      Text('Patner'),
                    ],
                  ),
                  Column(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 7,
                        child: const CircleAvatar(
                          backgroundColor: Constants.kWhiteAccent,
                          child: Icon(Icons.add,color: Constants.kDarkOrangeColor,),

                        ),
                      ),
                      Text('Other'),
                    ],
                  ),
                ],),
              ),
              //button...
              Container(
                height: 30,
                width: 200,
                margin: EdgeInsets.only(bottom: 10,),
                // margin: EdgeInsets.all(40),
                // width: double.infinity,

                child: FlatButton(
                  child: Text('Confirm Address',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  onPressed: () {

                  },

                  color: Constants.kDarkOrangeColor,
                  textColor: Constants.kWhiteAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
