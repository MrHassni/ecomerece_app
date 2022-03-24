import 'package:crockery_app/screens/search_screen.dart';
import 'package:crockery_app/screens/sub_cat1/sub_category_1.dart';
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
import '../../screens/sub_cat2/sub_category_2.dart';
import '../../screens/sub_cat3/sub_category_3.dart';




class BottomNavigate  extends StatefulWidget {
   int i;

    BottomNavigate({Key? key,this.i = 0}) :super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State< BottomNavigate> {


  final List <Widget> _pages =[
     Home(),//0
    const WishListScreen(),//1
     SearchScreen(),//2
    const CartDetail(),//3
    const SettingScreen(),//4
    const AllCategoriesScreen(),//5
    const SubCategoryOneScreen(),//6
    const SubCategoryTwoScreen(),//7
    const SubCategoryThreeScreen(),//8
    const ProductDetail(),//9
    const VoucherScreen(),//10
    ChangeAddressAndPayment(),//11
    OrderHistory(),//12
    const ProfileEditScreen(),//13
    const AddressBookScreen(),//14
    NotificationScreen(),//16

    // DealsScreen(),
    // AccountScreen(),
    // CartScreen(),
    // GroceryScreen(),
    // MilkScreen(),
    // FoodScreen(),
    // PharmaScreen(),

  ];
    late  int  currentIndex = widget.i;
     int _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      widget.i = index;
      _selectedIndex = index;
      currentIndex = index;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = widget.i;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pages[currentIndex],
      extendBody: true,
      bottomNavigationBar: Container(
        height: 65,
        decoration : const BoxDecoration(
          backgroundBlendMode: BlendMode.clear,
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.0),
            topRight: Radius.circular(18.0),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18.0),
              topRight: Radius.circular(18.0),
            ),
            child: BottomNavigationBar(
            selectedItemColor:  const Color(0xFFAB4D24),
              elevation: 0,
              currentIndex:widget.i > 4 ? _selectedIndex :  widget.i,
              onTap: _navigateBottomBar,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Wishlist'),
                BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
                BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: 'Cart'),
                BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined),label: 'Profile'),
              ],
            ),
          ),

      ),
    );
  }
}