
import 'package:flutter/material.dart';


class BookScreen  extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< BookScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Center(
              child: Text('Book'
              ),
            ),
          ],
        ),
      ),

    );
  }
}