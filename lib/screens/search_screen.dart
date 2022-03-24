import 'package:crockery_app/widgets/top_bars/top_bar_with_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constant/constant.dart';


class SearchScreen extends StatefulWidget {

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
 final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const SizedBox(height: 85,),
                    SizedBox(
                      height: 35,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    width: 1,
                                    color: Constants.kDarkOrangeColor,
                                    style: BorderStyle.solid),

                              ),
                              child:
                              TextField(
                                // autofocus: true,
                                textAlign: TextAlign.start,
                                controller: _searchController,
                                maxLines: 1,
                                enabled: true,
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        bottom: 5),
                                    hintText: 'Search Product',
                                    hintStyle: TextStyle(fontSize: 13,),
                                    prefixIcon: Icon(Icons.search),
                                    // contentPadding: EdgeInsets.all(10),
                                    border: InputBorder.none),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.25,
                              child: MaterialButton(
                                child: const FittedBox(child: Text('Search',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),)),
                                onPressed: () {},
                                color: Constants.kDarkOrangeColor,
                                textColor: Constants.kWhiteAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                    const Divider(height: 20,
                      color: Constants.kLightGreyColor,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Search History',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontStyle: FontStyle.italic),),
                        // Icon(Icons.delete,color: Constants.kLightGreyColor,),
                        SizedBox(height: 20,
                            width: 20,
                            child: Image.asset('images/del_img.png')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Constants.kGreyLightColor,
                            borderRadius: BorderRadius.circular(30),

                            // border: Border.all(
                            //     width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid),

                          ),
                          child: const Center(
                            child: Text('Salad spoon',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 14),),
                          ),
                        ),
                        Container(
                          height: 30,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          // margin: EdgeInsets.all(40),
                          // width: double.infinity,
                          width: 85,
                          decoration: BoxDecoration(
                            color: Constants.kGreyLightColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Text('Tea spoon',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 14),),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            const TopBarWithButtons(pageDescription: 'Search Products',
              pageName: 'Search',
              showBackButton: false,),
          ],
        ),
      ),

    );
  }
}
