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
    return SizedBox(
      // margin: EdgeInsets.zero,
      height: 115,
      child: Card(

        margin: EdgeInsets.zero,
        elevation: 1,
        child: ListTile(
          //leading: Icon(Icons.music_note),
          contentPadding: EdgeInsets.all(8),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'images/itemcup.png',
                height: 120,
                width: 90,
              ),


              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: const Text(
                        'Nestle Nido Cup for tea',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Constants.kBlackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                    const Align(
                        alignment: Alignment.centerLeft, child: Text('RS 340',style: TextStyle(fontSize: 10),),),
                    const Text(
                      'RS 244',
                      style: TextStyle(color: Constants.kDarkOrangeColor,fontSize: 10),
                    ),
                    SizedBox(height: 15,),

                    Container(
                      height: 25,
                      child: ElevatedButton(
                        onPressed: () {},
                        child:  const Text(
                          'Add to Cart',
                          style: TextStyle(fontSize: 12),
                        ),
                        // icon:  Icon(Icons.shopping_bag_outlined,size: 15,),
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
              ),
              Spacer(),

              Text('200ml',style: TextStyle(fontSize: 12),),
            ],
          ),
        ),
      ),
    );
  }
}
