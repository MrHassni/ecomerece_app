import 'package:crockery_app/constant/constant.dart';
import 'package:crockery_app/screens/enter_mob_num_screen.dart';
import 'package:flutter/material.dart';


import '../screens/onboardingpage.dart';
import '../screens/home_screen.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.70,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        children: [
                          const Text('Crockery Bazar',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily:'Nuntio-Bold.ttf'),),
                          Image.asset(
                            contents[i].image,
                            height: MediaQuery.of(context).size.height*0.4,
                          ),
                          Text(
                            contents[i].title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                                fontFamily:'Nuntio-Light.ttf'
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            contents[i].discription,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Constants.kGreyColor,
                                fontFamily:'Nuntio-Light.ttf'
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length ,
                      (index) => buildDot(index, context),
                ),
              ),
              Container(
                height: 50,
                // margin: EdgeInsets.only(top: 40,left: 40,right: 40,bottom: 20),
                // margin: EdgeInsets.all(40),
                width: double.infinity,
                child: FlatButton(
                  child: Text(
                      currentIndex == contents.length - 1 ? "Let's  Get  Started" : "Next",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  onPressed: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => MobileNumber(),
                        ),
                      );
                    }
                    _controller!.nextPage(
                      duration: Duration(milliseconds: 100),
                      curve: Curves.bounceIn,
                    );
                  },
                  color: Constants.kDarkOrangeColor,
                  textColor: Constants.kWhiteAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MobileNumber(),
                    ),
                  );
                },
                child: Container(
                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    child: Text('Skip',style: TextStyle(fontSize: 12),)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:  Constants.kDarkOrangeColor,
      ),
    );
  }
}
