
import 'package:flutter/material.dart';


class WishListScreen  extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< WishListScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Center(
              child: Text('Wish List'
              ),
            ),
          ],
        ),
      ),

    );
  }
}