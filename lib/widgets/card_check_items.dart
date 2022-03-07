import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckItemsWidget extends StatefulWidget {
  const CheckItemsWidget({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<CheckItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Card(
        elevation: 1,
        child: ListTile(
          //leading: Icon(Icons.music_note),
          title: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10, ),
                child: Image.asset(
                  'images/itemcup.png',
                  height: 115,
                  width: 121,
                ),
              ),

              // Column(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Row(
              //       children: const [
              //         Text(
              //           'Nestle Nido Cup for tea',
              //           style: TextStyle(
              //               color: Colors.black,
              //               fontWeight: FontWeight.bold,fontSize: 15),
              //         ),
              //         SizedBox(width: 15,),
              //
              //         Text('200ml'),
              //       ],
              //     ),
              //     Text('Rs342'),
              //     Text('Rs 270',style: TextStyle(color: Color(0xFFAB4D24),fontWeight: FontWeight.bold),),
              //     Row(
              //       children: [
              //         Container(
              //           width: MediaQuery.of(context).size.width-280,
              //         ),
              //            SizedBox(
              //             height: 24,
              //             width: 85,
              //             child: ElevatedButton.icon(
              //
              //               onPressed: (){}, label: Text('Add',style: TextStyle(fontSize: 12),), icon: Icon(Icons.shopping_bag_outlined),
              //               style: ButtonStyle(
              //                 backgroundColor:  MaterialStateProperty.all<Color>(Color(0xFFAB4D24),),
              //                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              //                       RoundedRectangleBorder(
              //                           borderRadius: BorderRadius.circular(18.0),
              //                           side: BorderSide(color:  Color(0xFFAB4D24),)
              //                       )
              //                   )
              //               ),
              //
              //             ),
              //           ),
              //
              //       ],
              //     ),
              //   ],
              // ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width * 0.27,
                    child: const Text(
                      'Nestle Nido Cup for tea',
                      style: TextStyle(
                          color: Constants.kBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  const Align(
                      alignment: Alignment.centerLeft, child: Text('RS 340')),
                  Text(
                    'RS 244',
                    style: TextStyle(color: Constants.kDarkOrangeColor),
                  ),
                ],
              ),

              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('200ml'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  SizedBox(
                    height: 24,
                    width: 70,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text(
                        'Add',
                        style: TextStyle(fontSize: 10),
                      ),
                      icon: const Icon(Icons.shopping_bag_outlined,size: 15,),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Constants.kDarkOrangeColor,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(
                                color: Constants.kDarkOrangeColor,
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
