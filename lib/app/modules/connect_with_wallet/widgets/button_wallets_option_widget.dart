import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class ButtonWalletOptions extends StatelessWidget {
  const ButtonWalletOptions({
    required this.image,
    required this.text,
    required this.index,
  });
  final String image;
  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        buttonAction(index, context);
      },
      color: MyColors.secondaryColor,
      height: 56,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(image),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: MyStyles.button,
          ),
        ],
      ),
    );
  }

  void buttonAction(int index, BuildContext context) {
    switch (index) {
      case 0:
        print("MetaMask Clicked!");
        break;
      case 1:
        print("Trust Wallet Clicked!");
        break;
      case 2:
        print("Link Wallet Clicked!");
        showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            backgroundColor: MyColors.dark,
            barrierColor: MyColors.dark50,
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter ethereum address",
                        style: MyStyles.heading2,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        // height: 56,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: MyColors.secondaryColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: MyColors.white,
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Address', style: MyStyles.smallCaption),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 14,
                              child: TextField(
                                style: MyStyles.caption,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: MyColors.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            "Confirm",
                            style: MyStyles.button,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
        break;
      default:
        break;
    }
  }
}
