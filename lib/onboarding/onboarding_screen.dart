import 'package:crockery_app/constant/constant.dart';
import 'package:crockery_app/widgets/bottom_navigation/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../screens/onboardingpage.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          const Text('Crockery Bazar',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,fontFamily:'Nuntio-Bold.ttf'),),
                          Image.asset(
                            contents[i].image,
                            height: MediaQuery.of(context).size.height*0.3,
                            // width:  MediaQuery.of(context).size.width*0.7,
                          ),
                          Text(
                            contents[i].title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                                fontFamily:'Nuntio-Light.ttf'
                            ),
                          ),
                          // SizedBox(height: 10),
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
              SizedBox(
                height: 50,
                width: double.infinity,
                child: MaterialButton(
                  child: Text(
                      currentIndex == contents.length - 1 ? "Let's  Get  Started" : "Next",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  onPressed: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BottomNavigate(),
                        ),
                      );
                    }
                    _controller!.nextPage(
                      duration: const Duration(milliseconds: 100),
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
             currentIndex == 2 ? Container() : InkWell(
                onTap: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BottomNavigate(),
                    ),
                  );
                },
                child: Container(
                    margin: const EdgeInsets.only(top: 20,bottom: 20),
                    child: const Text('Skip',style: TextStyle(fontSize: 12),)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.grey.shade800 : Colors.grey,

      ),
    );
  }
}
