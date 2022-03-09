import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../helper/navigator.dart';

List<String> images = [
  'images/steel.png',
  'images/giftshopimg.png',
  'images/steel.png'
  // "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
  // "https://wallpaperaccess.com/full/2637581.jpg",
  // "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
];

class HorizontalSlider extends StatefulWidget {
  const HorizontalSlider({Key? key}) : super(key: key);

  @override
  State<HorizontalSlider> createState() => _HorizontalSliderState();
}

class _HorizontalSliderState extends State<HorizontalSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1.0,
        height: 100,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
      ),
      items: imageSliders,
    );

  }
}
final List<Widget> imageSliders = images
    .map((item) => Stack(
  children: <Widget>[
    Positioned(
      bottom: 0.5,
      left: 0.0,
      right: 0.0,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(200, 14, 7, 7),
              Color.fromARGB(0, 26, 22, 22)
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Image.asset(item, fit: BoxFit.fitWidth, width: MediaQuery.of(NavigationService.navigatorKey.currentContext!).size.width,height: 100,),
      ),
    ),
    // Positioned(
    //   bottom: 0.0,
    //   left: 0.0,
    //   right: 0.0,
    // child: Container(
    //   decoration: const BoxDecoration(
    //     gradient: LinearGradient(
    //       colors: [
    //         Color.fromARGB(200, 16, 15, 15),
    //         Color.fromARGB(0, 0, 0, 0)
    //       ],
    //       begin: Alignment.bottomCenter,
    //       end: Alignment.topCenter,
    //     ),
    //   ),
    // padding: EdgeInsets.symmetric(
    //     vertical: 10.0, horizontal: 20.0),
    // child: Text(
    //   'No. ${images.indexOf(item)} image',
    //   style: TextStyle(
    //     color: Colors.white,
    //     fontSize: 20.0,
    //     fontWeight: FontWeight.bold,
    //   ),
    // ),
    //   ),
    // ),
    // Positioned(left: 250.0,
    //     top: 50,
    //     child: SizedBox(height: 50,
    //         width: 50,
    //         child: Transform.rotate(
    //             angle:  -math.pi / 10,
    //             child: Image.asset('images/imgordernow.png')))),
    // Positioned(
    //   top: 100,
    //   left: 200,
    //   child: Column(
    //     children: const <Widget>[
    //       Text("The Best",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
    //       Text('Fast Food',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 28.0),),
    //       Text('dishes from popular resturants',style: TextStyle(color: Colors.black,fontSize: 12),),
    //       Text('availabel on cheetay',style: TextStyle(fontSize: 12.0,color: Colors.black),)
    //     ],
    //   ),
    // ),
  ],
))
    .toList();