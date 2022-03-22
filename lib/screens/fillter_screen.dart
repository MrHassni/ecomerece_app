import 'package:crockery_app/widgets/card_check_related_items.dart';
import 'package:crockery_app/widgets/cart_detail_widget.dart';
import 'package:crockery_app/widgets/top_bars/top_bar_with_buttons.dart';
import 'package:crockery_app/widgets/top_bars/top_bar_without_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crockery_app/widgets/buttons/rounded_button.dart';
import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../widgets/filter_list.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<FilterScreen> with TickerProviderStateMixin {
  final List _filterItemName = [


  ];
  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBarWithoutButton(
                pageName: 'Filter',
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Category',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nuntio-Bold.ttf'),
                        )),
                    SizedBox(
                      height: 125,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return FilterList(name: '',

                            );
                          }),
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
