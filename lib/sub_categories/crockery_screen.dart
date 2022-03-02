
import 'package:crockery_app/widgets/crockerywidget.dart';
import 'package:crockery_app/widgets/shopslistwidget.dart';
import 'package:crockery_app/widgets/shopwidgets.dart';
import 'package:flutter/material.dart';

import '../bottom/bottom_sheet.dart';



class CrockeryScreen  extends StatefulWidget {
  const CrockeryScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< CrockeryScreen> {
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
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(10),
            child: Column(
              children:  [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: (){
                            //   Navigator.push(context, MaterialPageRoute(
                            //       builder: (context) => Home()),
                            //   );
                            },
                            child: Icon(Icons.arrow_back_ios, color: Color(0xFFAB4D24),)),
                        const Text(
                          'Crockery',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        // const SizedBox(
                        //   width: 170,
                        // ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (showSearch == true) {
                                showSearch = false;
                              } else {
                                showSearch = true;
                              }
                              // showSearch ==true;
                            });
                          },
                          child: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        const Icon(
                          Icons.doorbell_outlined,
                          color: Color(0xFFAB4D24),
                        ),
                        const Icon(
                          Icons.shopping_cart,
                          color: Color(0xFFAB4D24),
                        ),
                        //  IconTheme(
                        //   data: new IconThemeData(
                        //       color: Colors.red),
                        //   child: new Icon(Icons.add),
                        // ),
                        //for search
                      ],
                    ),
                  ),
                ),

                //for search
                showSearch
                    ? Container(
                  height: 40,
                  width: 350,
                  child: TextFormField(
                    onChanged: (_) {
                      // initiateSearch();
                    },
                    // controller: searchEditingController,
                    decoration: InputDecoration(
                        focusColor: Color(0xFFAB4D24),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xFFAB4D24),
                        ),
                        // border: OutlineInputBorder(
                        //   // width: 0.0 produces a thin "hairline" border
                        //
                        //   borderRadius: BorderRadius.all(Radius.circular(90.0)),
                        //   borderSide: BorderSide(color: Color(0xFFAB4D24), width: 2.0),
                        //   // borderSide: BorderSide.none,
                        //   //borderSide: const BorderSide(),
                        // ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFAB4D24), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFAB4D24), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontFamily: "WorkSansLight"),
                        filled: true,
                        fillColor: Colors.white54,
                        hintText: 'Search by name...'),
                  ),
                )
                    : const SizedBox(
                  height: 40,
                  width: 350,
                  child: Text(
                    'Crockery Products Details',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),

                // All Categories  here....
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.count(
                    childAspectRatio: 6/5,
                    crossAxisSpacing: 10.0,
                    // crossAxisSpacing: 20,
                    mainAxisSpacing: 15,
                    // padding: EdgeInsets.all(10.0),
                    // scrollDirection: Axis.vertical,
                    // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    crossAxisCount: 3,
                    children: List.generate(10,(index){

                      return  InkWell(
                        onTap: () {
                          if(index==0){
                            // Navigator.pushReplacement(
                            //     NavigationService.navigatorKey.currentContext!,
                            //     MaterialPageRoute(builder: (context) => BottomNavigate(i:4)));
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavigate(i: 12,),
                              ),
                            );
                          }else if(index==1){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavigate(i: 13,),
                              ),
                            );
                          }
                          else if(index==2){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavigate(i: 14,),
                              ),
                            );
                          }
                          else if(index==3){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavigate(i: 15,),
                              ),
                            );
                          }
                          else if(index==1){}else{print('invalid');}

                          // Navigator.pushReplacement(
                          //     NavigationService.navigatorKey.currentContext!,
                          //     MaterialPageRoute(builder: (context) => GroceryScreen()));

                        },
                        // child: Padding(
                        // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                        child: CrockeryWidget(allCateImg: allCatagoriesImg[index], allCateName: allCategoriesName[index],
                          // ShopListWidget(image:_allShopImg[index] , title:  _allShopName[index], colour: _colorBg[index],

                        ),
                      );

                    }),
                  ),
                ),



              ],),
          ),
        ),
      ),);
  }
}