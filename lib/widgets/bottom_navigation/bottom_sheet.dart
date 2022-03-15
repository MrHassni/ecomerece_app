
import 'package:crockery_app/categories/book_screen.dart';
import 'package:crockery_app/categories/dinning&kitchen.dart';
import 'package:crockery_app/categories/giftshop_screen.dart';
import 'package:crockery_app/categories/lighting_screen.dart';
import 'package:crockery_app/screens/account_setting/address_book_screen.dart';
import 'package:crockery_app/screens/account_setting/notification_screen.dart';
import 'package:crockery_app/screens/account_setting/profile_screen.dart';
import 'package:crockery_app/screens/account_setting/setting_screen.dart';
import 'package:crockery_app/screens/cart_detail_screen.dart';
import 'package:crockery_app/screens/changeaddress_payment_screen.dart';
import 'package:crockery_app/screens/order_history.dart';
import 'package:crockery_app/screens/voucher_screen.dart';
import 'package:crockery_app/screens/wish_list.dart';
import 'package:crockery_app/screens/all_categoryies_screen.dart';
import 'package:crockery_app/screens/product_detail_screen.dart';
import 'package:crockery_app/sub_categories/crockery_screen.dart';
import 'package:crockery_app/sub_categories/tabel_shop_screen.dart';
import 'package:crockery_app/sub_categories/trolley_cart_shop_screen.dart';
import 'package:crockery_app/sub_categories_categrories/buffet_set_screen.dart';
import 'package:crockery_app/sub_categories_categrories/cutlery_screen.dart';
import 'package:crockery_app/sub_categories_categrories/dinner_set_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../../sub_categories_categrories/drinkware_screen.dart';



class BottomNavigate  extends StatefulWidget {
  int i;

  BottomNavigate({Key? key, this.i = 0}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State< BottomNavigate> {
  final List <Widget> _pages =[
    Home(),
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
    AddressBookScreen(),
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
  int _selectedIndex = 0;
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
      selectedItemColor: Color(0xFFAB4D24),
        currentIndex: _selectedIndex,
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