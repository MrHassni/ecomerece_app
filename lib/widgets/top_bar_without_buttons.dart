import 'package:flutter/material.dart';

import '../constant/constant.dart';



class TopBarWithoutButtons extends StatelessWidget {
  const TopBarWithoutButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Constants.kDarkOrangeColor,
                  )),
              const Text(
                'Gift Shop',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              // const SizedBox(
              //   width: 170,
              // ),
              const Spacer(),
              InkWell(
                onTap: () {
                },
                child: const Icon(
                  Icons.search,
                  color: Constants.kGreyColor,
                ),
              ),
              const Icon(
                Icons.doorbell_outlined,
                color: Constants.kDarkOrangeColor,
              ),
              const Icon(
                Icons.shopping_cart,
                color: Constants.kDarkOrangeColor,
              ),
              //  IconTheme(
              //   data: new IconThemeData(
              //       color: Colors.red),
              //   child: new Icon(Icons.add),
              // ),
              //for search
            ],
          ),
        ),
        const SizedBox(
          height: 40,
          width: 350,
          child: Text(
            'Gift Shop products Detail',
            style: TextStyle(color: Constants.kGreyColor, fontSize: 12),
          ),
        ),
      ]),
    );
  }
}
