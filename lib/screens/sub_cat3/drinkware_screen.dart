import 'package:crockery_app/constant/constant.dart';
import 'package:crockery_app/widgets/category_widgets/cutleryitemwidget.dart';
import 'package:crockery_app/widgets/slider.dart';
import 'package:crockery_app/widgets/top_bars/top_bar_with_buttons.dart';
import 'package:flutter/material.dart';



class DrinkWare  extends StatefulWidget {
  const DrinkWare({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State<DrinkWare> with TickerProviderStateMixin {
  final List drinkWareImg =[
    'images/bottle.png',
    'images/bottleone.png',
    'images/bottletwo.png',
    'images/bottle.png',
    'images/bottleone.png',
    'images/bottletwo.png',
    'images/bottle.png',
    'images/bottleone.png',
    'images/bottletwo.png',
  ];
  TabController? _tabController ;

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    _tabController =  TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  bool showSearch = false;
  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopBarWithButtons(pageDescription: 'DrinkWare Product Details', pageName: 'DrinkWare'),
              Padding(padding: EdgeInsets.all(10),
                child: Column(
                  children:  [
                    HorizontalSlider(),
                    //Tab code wrriten here...

                    Container(child:
                    Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          margin: EdgeInsets.only(left: 20),
                          child: TabBar(
                            tabs: [
                              Container(
                                width: 70.0,
                                child: const Text(
                                  'Glass Set',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Container(
                                width: 75.0,
                                child:const Text(
                                  'Jugs',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),

                              Container(
                                width: 75.0,
                                child:const Text(
                                  'Other',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                            unselectedLabelColor: Constants.kGreyColor,
                            indicatorColor: Constants.kLightOrangeColor,
                            labelColor: Constants.kBlackColor,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicatorWeight: 3.0,
                            indicatorPadding: EdgeInsets.all(10),
                            isScrollable: true,
                            controller: _tabController,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height,
                          child: TabBarView(
                            controller: _tabController,
                            children: <Widget>[
                              CutleryWidget(cutleryimg: drinkWareImg),

                              Container(
                                child: Text("sign up"),
                              ),
                              Container(
                                child: Text("abcd"),
                              ),


                            ],
                          ),
                        ),

                      ],
                    ),

                    ),

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