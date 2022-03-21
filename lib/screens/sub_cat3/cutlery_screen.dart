
import 'dart:developer';

import 'package:crockery_app/providers/navgation_provider.dart';
import 'package:crockery_app/widgets/category_widgets/cutleryitemwidget.dart';

import 'package:crockery_app/widgets/slider.dart';
import 'package:crockery_app/widgets/top_bars/top_bar_with_buttons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_scrollable_tabview/vertical_scrollable_tabview.dart';

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
    'images/humectants.png',
    'images/emollients.png',
    'images/emollentsone.png',
    'images/emollientstwo.png',
    'images/humectants.png',
    'images/emollients.png',
    'images/emollentsone.png',
    'images/humectantsone.png',
    'images/humectants.png',
    'images/emollients.png',
    'images/emollentsone.png',
    'images/emollientstwo.png',
    'images/humectants.png',
    'images/emollients.png',
    'images/emollentsone.png',
    'images/humectantsone.png',
  ];
  late final List _data = [
    CutleryWidget(cutleryimg: cutleryImg,),
    CutleryWidget(cutleryimg: cutleryImg,),
    CutleryWidget(cutleryimg: cutleryImg,),
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
    return Consumer<NavigationProvider>(
      builder: (BuildContext context, navigationProvider, Widget? child) {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopBarWithButtons(pageName: navigationProvider.title3!,pageDescription: navigationProvider.description3!),
                Padding(padding: const EdgeInsets.all(10),
                  child: Column(
                    children:  [
                      const HorizontalSlider(),
                      //Tab code wrriten here...

                      SizedBox(
                        height: MediaQuery.of(context).size.height -290,
                        child: VerticalScrollableTabView(
                          tabController: _tabController!,
                          listItemData:  _data,
                          verticalScrollPosition: VerticalScrollPosition.begin,
                          eachItemChild: (object, index) =>
                              _data[index],
                          slivers: [
                            SliverAppBar(
                              foregroundColor: Colors.transparent,
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              toolbarHeight: 0,
                              collapsedHeight: 0,
                              expandedHeight: 0,
                              leading: Container(),
                              pinned: true,
                              flexibleSpace:  FlexibleSpaceBar(
                                background: Container(
                                  color: Colors.white,
                                ),
                                collapseMode: CollapseMode.pin,
                              ),

                              bottom: TabBar(
                                isScrollable: true,
                                controller: _tabController!,
                                indicatorPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                                indicatorColor: Constants.kDarkOrangeColor,
                                labelColor: Constants.kDarkOrangeColor,
                                unselectedLabelColor: Colors.black,
                                indicatorWeight:4.0,
                                tabs: const [
                                  Text(
                                    'Dinner Spoon',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'Soup Spoon',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'Ice-Cream Spoon',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                                onTap: (index) {
                                  VerticalScrollableTabBarStatus.setIndex(index);
                                },
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