
import 'package:flutter/material.dart';


class CheckItemsWidget  extends StatefulWidget {
  const CheckItemsWidget({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< CheckItemsWidget> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Card(
        child: ListTile(
          //leading: Icon(Icons.music_note),
          title: Row(

            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10,right: 10),
                child: Image.asset(
                 'images/itemcup.png',
                  height: 115,
                  width: 121,

                ),
              ),

                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Nestle Nido Cup for tea',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,fontSize: 15),
                        ),
                        SizedBox(width: 15,),

                        Text('200ml'),
                      ],
                    ),
                    Text('Rs342'),
                    Text('Rs 270',style: TextStyle(color: Color(0xFFAB4D24),fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width-280,
                        ),
                           SizedBox(
                            height: 24,
                            width: 85,
                            child: ElevatedButton.icon(

                              onPressed: (){}, label: Text('Add',style: TextStyle(fontSize: 12),), icon: Icon(Icons.shopping_bag_outlined),
                              style: ButtonStyle(
                                backgroundColor:  MaterialStateProperty.all<Color>(Color(0xFFAB4D24),),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(18.0),
                                          side: BorderSide(color:  Color(0xFFAB4D24),)
                                      )
                                  )
                              ),

                            ),
                          ),

                      ],
                    ),
                  ],
                ),


            ],
          ),

        ),
        elevation: 2,
        shadowColor: Colors.green,
        // margin: EdgeInsets.all(20),
      ),
    );


  }
}