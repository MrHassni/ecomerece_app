import 'package:crockery_app/widgets/notification_widget.dart';
import 'package:crockery_app/widgets/ongoing_product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../../widgets/top_bars/top_bar_with_one_button.dart';
import '../../widgets/top_bars/top_bar_without_button.dart';

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
          child: Column(
            children: [
              const TopBarWithOneButton(pageName: 'Notification',pageDescription: 'Notifications'),
              Padding(
                padding: EdgeInsets.all(5),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Container(
                        color: Colors.transparent,
                        width: MediaQuery.of(context).size.width,
                        // width: 150,
                        child: ListView.builder(
                          shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return NotificationWidget(
                                orderId: order_Id_Ongoing_prod[index],
                              );
                            }),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
