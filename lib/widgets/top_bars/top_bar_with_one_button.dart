import 'package:flutter/material.dart';

import '../../constant/constant.dart';




class TopBarWithOneButton extends StatelessWidget {
  const TopBarWithOneButton({Key? key,required this.pageName,required this.pageDescription}) : super(key: key);
 final String pageName,pageDescription;


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
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
              const Spacer(),
              InkWell(
                onTap: () {
                },
                child: const Icon(
                  Icons.search,
                  color: Constants.kGreyColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
           Text(
             pageDescription,
             style: const TextStyle(color: Constants.kGreyColor, fontSize: 12),
           ),
        ]),
      ),
    );
  }
}
