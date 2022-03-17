
import 'package:crockery_app/providers/navgation_provider.dart';
import 'package:crockery_app/widgets/category_widgets/cutleryitemwidget.dart';

import 'package:crockery_app/widgets/slider.dart';
import 'package:crockery_app/widgets/top_bars/top_bar_with_buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constant/constant.dart';




class CutleryScreen  extends StatefulWidget {
  const CutleryScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State<CutleryScreen> with TickerProviderStateMixin {
  final List cutleryImg =[
    'images/humectants.png',
    'images/emollients.png',
    'images/emollentsone.png',
    'images/emollientstwo.png',
    'images/humectants.png',
    'images/emollients.png',
    'images/emollentsone.png',
    'images/humectantsone.png',

  ];
   TabController? _tabController ;

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    _tabController =  TabController(length: 6, vsync: this);
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
    return Consumer<NavigationProvider>(
      builder: (BuildContext context, navigationProvider, Widget? child) {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopBarWithButtons(pageName: navigationProvider.title3!,pageDescription: navigationProvider.description3!),
                Padding(padding: EdgeInsets.all(10),
                  child: Column(
                    children:  [
                      HorizontalSlider(),
                      //Tab code wrriten here...

                      Container(child:
                      Column(
                        children: <Widget>[
                        SizedBox(
                        height: 60,
                        child: TabBar(
                          tabs: const [
                            Text(
                              'Dinner Spoon',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'Soup Spoon',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'Ice-Cream Spoon',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'Knifes',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'Cocktail Spoon',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'Other',
                              style: TextStyle(fontSize: 12),
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
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: TabBarView(
                                controller: _tabController,
                                children: <Widget>[
                                  CutleryWidget(cutleryimg: cutleryImg,),

                                  Container(
                                    child: const Text("sign up"),
                                  ),
                                  Container(
                                    child: const Text("abcd"),
                                  ),
                                  Container(
                                    child: Text("abcdefg"),
                                  ),
                                  Container(
                                    child: Text("abcdefghi"),
                                  ),
                                  Container(
                                    child: Text("abcdefghij"),
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
      );}
    );
  }
}