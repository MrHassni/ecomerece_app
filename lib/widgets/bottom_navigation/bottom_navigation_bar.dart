
import 'package:crockery_app/screens/search_screen.dart';
import 'package:crockery_app/screens/sub_cat1/book_screen.dart';
import 'package:crockery_app/screens/sub_cat1/dinning&kitchen.dart';
import 'package:crockery_app/screens/sub_cat1/giftshop_screen.dart';
import 'package:crockery_app/screens/sub_cat1/lighting_screen.dart';
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
import 'package:flutter/material.dart';
import '../../screens/home_screen.dart';
import '../../screens/sub_cat2/crockery_screen.dart';
import '../../screens/sub_cat3/cutlery_screen.dart';




class BottomNavigate  extends StatefulWidget {
  int i;

  BottomNavigate({Key? key, this.i = 0}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State< BottomNavigate> {
  final List <Widget> _pages =[
    const Home(),//0
    const WishListScreen(),//1
    const SearchScreen(),//2
    const CartDetail(),//3
    const SettingScreen(),//4
    const AllCategoriesScreen(),//5
    const GiftShopScreen(),//6
    const CrockeryScreen(),//7
    const CutleryScreen(),//8
    const ProductDetail(),//9
    const VoucherScreen(),//10
    ChangeAddressAndPayment(),//11
    OrderHistory(),//12
    const ProfileEditScreen(),//13
    const AddressBookScreen(),//14
    OrderHistory(),//15
    NotificationScreen(),//16

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
        currentIndex:widget.i > 4 ? _selectedIndex :  widget.i,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined),label: 'Profile'),
        ],
      ),
    );
  }
}