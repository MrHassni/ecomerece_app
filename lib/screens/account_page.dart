
import 'package:flutter/material.dart';


class AccountScreen  extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< AccountScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Center(
              child: Text('Account'
              ),
            ),
          ],
        ),
      ),

    );
  }
}