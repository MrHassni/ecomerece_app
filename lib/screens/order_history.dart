
import 'package:crockery_app/widgets/ongoing_product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../widgets/cutleryitemwidget.dart';
import '../widgets/past_product_widget.dart';

class OrderHistory extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<OrderHistory>
    with TickerProviderStateMixin {

  TabController? _tabController ;

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    _tabController =  TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  final List order_Id_past_prod =[
    "123",
    '456',
    '678',
    "123",
    '456',
    '678',
  ];

  final List order_Id_Ongoing_prod =[
    "123",
    '456',
    '678',
    "123",
    '456',
    '678',
  ];
  @override
  Widget build(BuildContext context) {
    print(order_Id_past_prod.length);
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
                    padding: EdgeInsets.all(10),
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
              height: 50,
              margin: EdgeInsets.only(left: 20),
              child: TabBar(
                tabs: [
                  Container(
                    width: 70.0,
                    child: const Text(
                      'Ongoing',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Container(
                    width: 70.0,
                    child:const Text(
                      'Past',
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
              height: MediaQuery.of(context).size.height*0.5,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  order_Id_Ongoing_prod.isEmpty ?Container(
                    color: Colors.transparent,
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    // width: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return OngoingProductWidget(orderIdOngoing: order_Id_Ongoing_prod[index],);
                        }),
                  ):Image.asset('images/imgorderhistory.png'),

                  order_Id_past_prod.isNotEmpty ? Container(
                    color: Colors.transparent,
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    // width: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return PastProductWidget(orderId: order_Id_past_prod[index],);
                        }),
                  ) : Image.asset('images/imgorderhistory.png'),



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
