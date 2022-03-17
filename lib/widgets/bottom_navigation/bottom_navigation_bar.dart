
import 'package:crockery_app/screens/sub_cat1/book_screen.dart';
import 'package:crockery_app/screens/sub_cat1/dinning&kitchen.dart';
import 'package:crockery_app/screens/sub_cat1/giftshop_screen.dart';
import 'package:crockery_app/constant/lighting_screen.dart';
import 'package:crockery_app/screens/account_setting/address_book_screen.dart';
import 'package:crockery_app/screens/account_setting/notification_screen.dart';
import 'package:crockery_app/screens/account_setting/profile_screen.dart';
import 'package:crockery_app/screens/account_setting/setting_screen.dart';
import 'package:crockery_app/screens/cart_detail_screen.dart';
import 'package:crockery_app/screens/changeaddress_payment_screen.dart';
import 'package:crockery_app/screens/order_history.dart';
import 'package:crockery_app/screens/voucher_screen.dart';
import 'package:crockery_app/screens/wish_list.dart';
import 'package:crockery_app/screens/all_category/all_categoryies_screen.dart';
import 'package:crockery_app/screens/product_detail_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../../sub_cat2/crockery_screen.dart';
import '../../sub_cat2/tabel_shop_screen.dart';
import '../../sub_cat2/trolley_cart_shop_screen.dart';
import '../../sub_cat3/buffet_set_screen.dart';
import '../../sub_cat3/cutlery_screen.dart';
import '../../sub_cat3/dinner_set_screen.dart';
import '../../sub_cat3/drinkware_screen.dart';




class BottomNavigate  extends StatefulWidget {
  int i;

  BottomNavigate({Key? key, this.i = 0}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State< BottomNavigate> {
  final List <Widget> _pages =[
    const Home(),
    WishListScreen(),
    OrderHistory(),
    SettingScreen(),
    AllCategoriesScreen(),
    GiftShopScreen(),
    DinningKitchenScreen(),
    BookScreen(),
    LightingScreen(),
    CrockeryScreen(),
    Table_shop_Screen(),
    Trolley_Cart__screen(),
    CutleryScreen(),
    BuffetSetScreen(),
    DinnerSetScreen(),
    DrinkWare(),
    ProductDetail(),
    CartDetail(),
    VoucherScreen(),
    ChangeAddressAndPayment(),
    OrderHistory(),
    ProfileEditScreen(),
    const AddressBookScreen(),
    OrderHistory(),
    NotificationScreen(),

    // DealsScreen(),
    // AccountScreen(),
    // CartScreen(),
    // GroceryScreen(),
    // MilkScreen(),
    // FoodScreen(),
    // PharmaScreen(),

  ];
    final int _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      widget.i = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pages[widget.i],

      bottomNavigationBar: BottomNavigationBar(
      selectedItemColor:  const Color(0xFFAB4D24),
        currentIndex:widget.i > 3 ? _selectedIndex : widget.i,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
        ],
      ),
    );
  }
}