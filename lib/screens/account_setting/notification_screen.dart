import 'package:crockery_app/widgets/notification_widget.dart';
import 'package:crockery_app/widgets/ongoing_product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/constant.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<NotificationScreen> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  final List order_Id_past_prod = [
    "123",
    '456',
    '678',
    "123",
    '456',
    '678',
  ];

  final List order_Id_Ongoing_prod = [
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
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
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
                      'Notification',
                      style:
                          TextStyle(color: Constants.kGreyColor, fontSize: 12),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    // width: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return NotificationWidget(
                            orderId: order_Id_Ongoing_prod[index],
                          );
                        }),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
