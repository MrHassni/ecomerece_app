
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_sheet.dart';
import '../widgets/cutleryitemwidget.dart';

class OrderHistory extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<OrderHistory>
    with TickerProviderStateMixin {
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
  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(15),
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
                          'Order History',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                  width: 350,
                  child: Text(
                    'Product orders history',
                    style: TextStyle(color: Constants.kGreyColor, fontSize: 12),
                  ),
                ),
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
                  Padding(
                    padding: EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: GridView.count(
                        childAspectRatio: 5/8,
                        crossAxisSpacing: 10.0,
                        // crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        physics:  NeverScrollableScrollPhysics(),
                        // padding: EdgeInsets.all(10.0),
                        // scrollDirection: Axis.vertical,
                        // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                        crossAxisCount: 3,
                        children: List.generate(7,(index){

                          return  InkWell(onTap: (){
                            if(index==0){
                              // Navigator.pushReplacement(
                              //     NavigationService.navigatorKey.currentContext!,
                              //     MaterialPageRoute(builder: (context) => BottomNavigate(i:4)));
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BottomNavigate(i: 16,),
                                ),
                              );
                            }else if(index==1){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BottomNavigate(i: 16,),
                                ),
                              );
                            }
                            else if(index==2){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BottomNavigate(i: 16,),
                                ),
                              );
                            }

                            else if(index==1){}else{print('invalid');}
                          },
                              child: CutleryWidget(cutleryimg: drinkWareImg[index],));

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


                ],
              ),
            ),





          ],
            ),
          ),
        ],),
      ),
    ),
    ),
    );
  }
}
