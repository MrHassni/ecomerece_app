import 'package:flutter/material.dart';
import '../../constant/constant.dart';



class TopBarWithButtons extends StatelessWidget {
 final String pageName,pageDescription;
final bool showBackButton;

   const TopBarWithButtons({Key? key,required this.pageDescription,required this.pageName, this.showBackButton = true}) : super(key: key);

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
                showBackButton ? InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                      margin: const EdgeInsets.only(right: 5),
                      child: const Icon(Icons.arrow_back_ios_outlined)),
                ) : Container(),
                Text(
                  pageName,
                  style: const TextStyle(
                      color: Constants.kBlackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Icon(
                  Icons.notifications_none,
                  color: Constants.kDarkOrangeColor,
                ),
                // const SizedBox(width: 7,),
              ],
            ),
             const SizedBox(
              height: 15,
            ),
             Text(
              pageDescription,
              textAlign: TextAlign.left,
              style: const TextStyle(color: Constants.kGrey55Color, fontSize: 12),
            ),
          ],),
      ),
    );
  }
}
