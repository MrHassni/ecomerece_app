
import 'package:flutter/material.dart';


class Trolley_Cart__screen  extends StatefulWidget {
  const Trolley_Cart__screen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< Trolley_Cart__screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Center(
              child: Text('Trolley Cart Shop'
              ),
            ),
          ],
        ),
      ),

    );
  }
}