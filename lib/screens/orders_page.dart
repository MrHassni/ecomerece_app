
import 'package:flutter/material.dart';



class OrdersScreen  extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< OrdersScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Center(
              child: Text('Orders'
              ),
            ),
          ],
        ),
      ),

    );
  }
}