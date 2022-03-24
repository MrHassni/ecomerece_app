
import 'dart:developer';

import 'package:crockery_app/providers/navgation_provider.dart';
import 'package:crockery_app/widgets/category_widgets/crockerywidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constant/constant.dart';
import '../../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../../widgets/top_bars/top_bar_with_buttons.dart';




class SubCategoryTwoScreen  extends StatefulWidget {
  const SubCategoryTwoScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< SubCategoryTwoScreen> {
  final List allCatagoriesImg =[
    'images/cutlery.png',
    'images/buffet_set.png',
    'images/dinner_set.png',
    'images/drinkware.png',
    'images/bowls.png',
    'images/hot_pot_set.png',
    'images/grathers.png',
    'images/cake_stand.png',
    'images/thermos.png',
    'images/cookware_set.png',
    'images/ice_cream_setlery.png',

  ];
  final List allCategoriesName =[
    'Cutlery',
    'Buffet Set_Up',
    'Dinner Sets',
    'Drinkware',
    'Bowls',
    'Hot Pot Set',
    'Graters',
    'Cake Stands',
    'Thermos',
    'Cookware Sets',
    'Ice Cream & setlery',

  ];




  bool showSearch = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
        builder: (BuildContext context, navigationProvider, Widget? child) {
     return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                   SizedBox(height: 85,),
                    Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children:  [

                          // All Categories  here....
                          Container(
                            height: MediaQuery.of(context).size.height,
                            child: GridView.count(
                              childAspectRatio: 6/5,
                              crossAxisSpacing: 5.0,
                              // crossAxisSpacing: 20,
                              mainAxisSpacing: 10,
                              // padding: EdgeInsets.all(10.0),
                              // scrollDirection: Axis.vertical,
                              // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                              crossAxisCount: 3,
                              children: List.generate(10,(index){

                                return  InkWell(
                                  onTap: () {
                                    if(index==0){
                                      Provider.of<NavigationProvider>(context,listen: false).setTitleAndDisForSubThree('First', 'Gift Shop Product Details');
                                    }else if(index==1){
                                      Provider.of<NavigationProvider>(context,listen: false).setTitleAndDisForSubThree('Second', 'Gift Shop Product Details');
                                    }
                                    else if(index==2){
                                      Provider.of<NavigationProvider>(context,listen: false).setTitleAndDisForSubThree('Third', 'Gift Shop Product Details');
                                    }
                                    else if(index==3){
                                      Provider.of<NavigationProvider>(context,listen: false).setTitleAndDisForSubThree('Fourth', 'Gift Shop Product Details');
                                    }
                                    else{
                                      Provider.of<NavigationProvider>(context,listen: false).setTitleAndDisForSubThree('Other', 'Gift Shop Product Details');
                                    }
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BottomNavigate(i: 8,),
                                      ),
                                    );

                                  },
                                  child: CrockeryWidget(allCateImg: allCatagoriesImg[index], allCateName: allCategoriesName[index],

                                  ),
                                );

                              }),
                            ),
                          ),



                        ],),
                    ),
                  ],
                ),
              ),
              TopBarWithButtons(pageName: navigationProvider.title2!,pageDescription: navigationProvider.description2!),
            ],
          ),
        ),);}
    );
  }
}