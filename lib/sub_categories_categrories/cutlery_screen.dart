
import 'package:crockery_app/widgets/cutleryitemwidget.dart';

import 'package:crockery_app/widgets/slider.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';




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
                            child: Icon(Icons.arrow_back_ios, color:  Constants.kDarkOrangeColor,)),
                        const Text(
                          'Cutlery',
                          style: TextStyle(
                              color: Constants.kBlackColor,
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
                            color: Constants.kGreyColor,
                          ),
                        ),
                        const Icon(
                          Icons.doorbell_outlined,
                          color: Constants.kDarkOrangeColor,
                        ),
                        const Icon(
                          Icons.shopping_cart,
                          color:  Constants.kDarkOrangeColor,
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
                        focusColor: Constants.kDarkOrangeColor,
                        prefixIcon: const Icon(
                          Icons.search,
                          color:  Constants.kDarkOrangeColor,
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
                              color: Constants.kDarkOrangeColor, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color:  Constants.kDarkOrangeColor, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        hintStyle: const TextStyle(
                            color: Constants.kGreyColor, fontFamily: "WorkSansLight"),
                        filled: true,
                        fillColor: Constants.kWhite54Color,
                        hintText: 'Search by name...'),
                  ),
                )
                    : const SizedBox(
                  height: 40,
                  width: 350,
                  child: Text(
                    'Cultery Products Details',
                    style: TextStyle(color: Constants.kGreyColor, fontSize: 12),
                  ),
                ),
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
                        child: const FittedBox(
                          child: Text(
                            'Dinner Spoon',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        width: 75.0,
                        child:const FittedBox(
                        child: Text(
                          'Soup Spoon',
                          style: TextStyle(fontSize: 20),
                        ),),
                      ),
                      Container(
                        width: 75.0,
                        child: const FittedBox(
                          child: Text(
                            'Ice Cream Spoon',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        width: 75.0,
                        child: Text(
                          'Knifes',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Container(
                        width: 75.0,
                        child:const FittedBox(
                        child: Text(
                          'Cocktail Spoon',
                          style: TextStyle(fontSize: 20),
                        ),),
                      ),
                      Container(
                        width: 75.0,
                        child:const Text(
                          'Other',
                          style: TextStyle(fontSize: 15),
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
                            Padding(
                              padding: EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height,
                                child: GridView.count(
                                  childAspectRatio: 5/8,
                                  crossAxisSpacing: 10.0,
                                  // crossAxisSpacing: 20,
                                  mainAxisSpacing: 20,
                                  physics:  const NeverScrollableScrollPhysics(),
                                  // padding: EdgeInsets.all(10.0),
                                  // scrollDirection: Axis.vertical,
                                  // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                  crossAxisCount: 3,
                                  children: List.generate(7,(index){

                                    return  CutleryWidget(cutleryimg: cutleryImg[index],);

                                  }),
                                ),
                              ),
                            ),

                            Container(
                              child: Text("sign up"),
                            ),
                            Container(
                              child: Text("abcd"),
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
        ),
    ),
    );
  }
}