
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BottomNavigate  extends StatefulWidget {
  int i;

  BottomNavigate({Key? key, this.i = 0}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State< BottomNavigate> {
  final List <Widget> _pages =[
    // HomeScreen(),
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
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Account'),
        ],
      ),
    );
  }
}