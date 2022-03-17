
import 'package:flutter/material.dart';


class DinnerSetScreen  extends StatefulWidget {
  const DinnerSetScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< DinnerSetScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Center(
              child: Text('dinner set'
              ),
            ),
          ],
        ),
      ),

    );
  }
}