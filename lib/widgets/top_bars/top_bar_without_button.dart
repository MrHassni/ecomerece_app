import 'package:flutter/material.dart';

import '../../constant/constant.dart';




class TopBarWithoutButton extends StatelessWidget {
  const TopBarWithoutButton({Key? key,required this.pageName}) : super(key: key);
  final String pageName;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Card(
        elevation: 6,
        margin: const EdgeInsets.only(bottom: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child:  Icon(
                    Icons.arrow_back_ios,
                    color: Constants.kDarkOrangeColor,
                  )),
              Text(
                pageName,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
