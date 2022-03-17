
import 'package:flutter/material.dart';


class BuffetSetScreen  extends StatefulWidget {
  const BuffetSetScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< BuffetSetScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Center(
              child: Text('Buffet set screen'
              ),
            ),
          ],
        ),
      ),

    );
  }
}