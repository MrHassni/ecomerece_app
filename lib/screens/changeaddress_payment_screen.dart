
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../widgets/top_bars/top_bar_without_button.dart';

class ChangeAddressAndPayment extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ChangeAddressAndPayment>
    with TickerProviderStateMixin {
  // final List cartDetailImg = [
  //   'images/teaset.png',
  //   'images/fruit_frok.png',
  //   'images/teaset.png',
  //   'images/fruit_frok.png',
  // ];


  TextEditingController CardNumController = TextEditingController();
  TextEditingController NameOnCardController = TextEditingController();
  TextEditingController ExpirationDateController = TextEditingController();
  TextEditingController SecurityCodeController = TextEditingController();
  String CardNum = '';
  String NameCode = '';
  String ExpirationDate = '';
  String SecurityCode = '';
  int? selectedRadio;

  int? selectdRadioBilling;

  bool showPaymentMethod = false;
  bool showCardDetailEditField = false;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;

    selectdRadioBilling =0;

  }

  setSelectedRadioTile(val) {
    setState(() {
      selectedRadio = val;
      selectdRadioBilling = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBarWithoutButton(pageName: 'Order Details'),
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    //card one...for address change...
                    Card(
                      elevation: 2,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(
                          //     width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all( 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1,
                                child: const Icon(
                                  Icons.home_outlined,
                                  color: Constants.kGraniteGreyColor,
                                  size: 35,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Satya Nilayam',
                                      style: TextStyle(
                                          fontFamily: 'Nuntio-Bold.ttf',
                                          fontWeight: FontWeight.bold,
                                          color: Constants.kBlackColor),
                                    ),
                                    Text('21_42_34,Banjara Hills',style: TextStyle(
                                        fontFamily: 'Nuntio-Light.ttf',
                                        color: Constants.kGraniteGreyColor),),
                                    Text('Hyderabad,50072',style: TextStyle(
                                        fontFamily: 'Nuntio-Light.ttf',
                                        color: Constants.kGraniteGreyColor),),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.15,
                                child: const Text('Change Address',style: TextStyle(
                                    fontFamily: 'Nuntio-Light.ttf',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Constants.kBlueColor),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //card two... for add address....

                    Card(
                      elevation: 2,
                      child: Container(
                        height: 100,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(
                          //     width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid)
                        ),
                        child: Padding(
                          padding: EdgeInsets.all( 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.add,size: 50,color: Constants.kBlackColor,),
                              Text('Add Address',style: TextStyle(
                                  fontFamily: 'Nuntio-Light.ttf',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Constants.kBlueColor),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //payment method...
                    const Padding(
                      padding: EdgeInsets.only(top: 10,left: 10),
                      child: Align(alignment: Alignment.centerLeft,
                        child: Text('Payment Method',style: TextStyle(
                            fontFamily: 'Nuntio-Bold.ttf',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Constants.kLightGreyColor),
                        ),
                      ),
                    ),
                    // card of payment method...
                    InkWell(onTap: (){
                      setState(() {
                        if(showPaymentMethod == true){
                          showPaymentMethod = false;
                        }else{
                          showPaymentMethod =true;
                        }
                      });
                    },
                      child: Card(
                        elevation: 2,
                        color: Constants.kLightGreenColor,
                        child: Container(
                          height: 90,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(
                            //     width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all( 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Center(
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.attach_money_outlined,
                                      color: Constants.kGraniteGreyColor,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,left: 15,right: 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      SizedBox(height: 35,
                                        width: 150,
                                        child: Text(
                                          'Tab Here to select your payment Method',
                                          // overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontFamily: 'Nuntio-Light.ttf',
                                              // fontWeight: FontWeight.bold,
                                              color: Constants.kBlackColor),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                               Spacer(),
                               const Align(alignment: Alignment.centerRight,
                                   child: Icon(Icons.arrow_forward_ios,)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
// when tab for selecting payment method ..

// This goes to the build method
                  Visibility(
                    visible: showPaymentMethod,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                      height: 210,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid)
                      ),
                      child: Column(
                        children: [
                          RadioListTile(
                            value: 1,
                            groupValue: selectedRadio,
                            title: Icon(Icons.credit_card_outlined),
                            // subtitle: Text("Radio 2 Subtitle"),
                            onChanged: (val) {
                              print("Radio Tile pressed $val");
                              setSelectedRadioTile(val);
                            },
                            activeColor: Colors.red,
                            secondary: Text("Credit/Debit Card"),
                            selected: false,
                          ),


                          Divider(height: 20,
                              color: Constants.kLightGreyColor,),
                          RadioListTile(
                            value: 2,
                            groupValue: selectedRadio,
                            title: Icon(Icons.play_arrow_rounded,color: Colors.red,),
                            // subtitle: Text("Radio 2 Subtitle"),
                            onChanged: (val) {
                              setState(() {
                                setSelectedRadioTile(val);
                                if(showCardDetailEditField == true){
                                  showCardDetailEditField = false;
                                }else{
                                  showCardDetailEditField =true;
                                }
                              });
                              print("Radio Tile presseddddddddddd $val");

                            },
                            activeColor: Colors.red,
                            secondary: Text("Baksh online payment"),
                            selected: false,
                          ),
                          Divider(height: 20,
                            color: Constants.kLightGreyColor,),
                          RadioListTile(
                            value: 3,
                            groupValue: selectedRadio,
                            title: Icon(Icons.money,color: Constants.kDarkOrangeColor,),
                            // subtitle: Text("Radio 2 Subtitle"),
                            onChanged: (val) {
                              print("Radio Tile pressed $val");
                              setSelectedRadioTile(val);
                            },
                            activeColor: Colors.red,
                            secondary: Text("Baksh online payment"),
                            selected: false,
                          ),

                        ],
                      ),
                    ),
                  ),
   // card used for showing the text field where can add deatils of card
                    Visibility(
                      visible: showCardDetailEditField,
                      child: Card(
                        elevation: 2,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //firs text field for card number...
                          Container(
                            margin: EdgeInsets.only(top: 0,left: 20,right: 20,bottom: 0),
                              height: 40,
                              child: TextField(
                                controller: CardNumController,
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Constants.kDarkOrangeColor,),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Constants.kDarkOrangeColor,),
                                  ) ,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Constants.kDarkOrangeColor,),),
                                  labelText: 'Card Number',
                                  suffixIcon: Icon(Icons.lock,color: Constants.kDarkOrangeColor,),
                                ),
                                onChanged: (text) {
                                  setState(() {
                                    CardNum = text;
                                    //you can access nameController in its scope to get
                                    // the value of text entered as shown below
                                    //fullName = nameController.text;
                                  });
                                },
                              )),

                          Container(
                            // margin: EdgeInsets.all(20),
                            child: Text(CardNum),
                          ),
                          //scond text field for name on code..

                          Container(
                              margin: EdgeInsets.only(top: 0,left: 20,right: 20,bottom: 0),
                              height: 40,
                              child: TextField(
                                controller: NameOnCardController,
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Constants.kDarkOrangeColor,),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Constants.kDarkOrangeColor,),
                                  ) ,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Constants.kDarkOrangeColor,),),
                                  labelText: 'Name on Code',
                                  // suffixIcon: Icon(Icons.lock,color: Constants.kDarkOrangeColor,),
                                ),
                                onChanged: (text) {
                                  setState(() {
                                    NameCode = text;
                                    //you can access nameController in its scope to get
                                    // the value of text entered as shown below
                                    //fullName = nameController.text;
                                  });
                                },
                              )),

                          Container(
                            // margin: EdgeInsets.all(20),
                            child: Text(NameCode),
                          ),
                            //third text field for expiration date

                            Container(
                                margin: EdgeInsets.only(top: 0,left: 20,right: 20,bottom: 0),
                                height: 40,
                                child: TextField(
                                  controller: ExpirationDateController,
                                  decoration:  InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Constants.kDarkOrangeColor,),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Constants.kDarkOrangeColor,),
                                    ) ,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Constants.kDarkOrangeColor,),),
                                    labelText: 'Expiration Date',
                                    // suffixIcon: Icon(Icons.lock,color: Constants.kDarkOrangeColor,),
                                  ),
                                  onChanged: (text) {
                                    setState(() {
                                      ExpirationDate= text;
                                      //you can access nameController in its scope to get
                                      // the value of text entered as shown below
                                      //fullName = nameController.text;
                                    });
                                  },
                                )),

                            Container(
                              // margin: EdgeInsets.all(20),
                              child: Text(ExpirationDate),
                            ),
                            //Fourth text field for security code...
                            Container(
                                margin: EdgeInsets.only(top: 0,left: 20,right: 20,bottom: 0),
                                height: 40,
                                child: TextField(
                                  controller: SecurityCodeController,
                                  decoration:  InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Constants.kDarkOrangeColor,),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Constants.kDarkOrangeColor,),
                                    ) ,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Constants.kDarkOrangeColor,),),
                                    labelText: 'Expiration Date',
                                    suffixIcon: Icon(Icons.lock,color: Constants.kDarkOrangeColor,),
                                  ),
                                  onChanged: (text) {
                                    setState(() {
                                      SecurityCode= text;
                                      //you can access nameController in its scope to get
                                      // the value of text entered as shown below
                                      //fullName = nameController.text;
                                    });
                                  },
                                )),

                            Container(
                              // margin: EdgeInsets.all(20),
                              child: Text(SecurityCode),
                            ),
                        ],),
                      ),
                    ),

                    const Divider(height: 20,
                        color: Constants.kLightGreyColor,),

                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Billing Address',
                          style: TextStyle(
                            fontFamily: 'Nuntio-Bold.ttf',
                            // fontWeight: FontWeight.bold,
                            color: Constants.kBlackColor,
                          fontSize: 20),),
                      ),
                    ),
                    RadioListTile(
                      value: 4,
                      groupValue: selectdRadioBilling,
                      title: Text('same as shiping billing address'),
                      // subtitle: Text("Radio 2 Subtitle"),
                      onChanged: (val) {
                        print("Radio Tile pressed $val");
                        setSelectedRadioTile(val);
                      },
                      activeColor: Colors.red,
                      // secondary: Text("Credit/Debit Card"),
                      selected: false,
                    ),


                    // Divider(height: 20,
                    //   color: Constants.kDarkGreyColor,),
                    RadioListTile(
                      value: 5,
                      groupValue:selectdRadioBilling,
                      title: Text('use different billing address'),
                      // subtitle: Text("Radio 2 Subtitle"),
                      onChanged: (val) {
                        // setState(() {
                        //   setSelectedRadioTile(val);
                        //   if(showCardDetailEditField == true){
                        //     showCardDetailEditField = false;
                        //   }else{
                        //     showCardDetailEditField =true;
                        //   }
                        // });
                        print("Radio Tile presseddddddddddd $val");

                      },
                      activeColor: Colors.red,
                      // secondary: Text("Baksh online payment"),
                      selected: false,
                    ),

                    const Divider(height: 20,
                      color: Constants.kLightGreyColor,),
                    Padding(
                      padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 20),
                      child: SizedBox(height: 150,
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Column(
                              children: const [
                                Text('Subtotal',style: TextStyle(color: Constants.kLightGreyColor),),
                                SizedBox(height: 20,),
                                Text('Delivery',style: TextStyle(color: Constants.kLightGreyColor),),
                                SizedBox(height: 40,),
                                Text('Total',style: TextStyle(color: Constants.kBlackColor,fontWeight: FontWeight.bold),),
                              ],
                            ),

                            // Spacer(),
                            Column(
                              children: const [
                                Text('200',style: TextStyle(color: Constants.kLightGreyColor),),
                                SizedBox(height: 20,),
                                Text('45',style: TextStyle(color: Constants.kLightGreyColor),),
                                SizedBox(height: 40,),
                                Text('Rs 240',style: TextStyle(color: Constants.kBlackColor,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      margin: EdgeInsets.zero,
                      // margin: EdgeInsets.all(40),
                      // width: double.infinity,
                      width: 350,
                      child: FlatButton(
                        child: const Text(
                          'Order Now',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigate(i: 3,),
                            ),
                          );
                        },
                        color: Constants.kDarkOrangeColor,
                        textColor: Constants.kWhiteAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
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
