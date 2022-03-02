
import 'package:flutter/material.dart';


class Table_shop_Screen  extends StatefulWidget {
  const Table_shop_Screen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< Table_shop_Screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Center(
              child: Text('Table_shop'
              ),
            ),
          ],
        ),
      ),

    );
  }
}