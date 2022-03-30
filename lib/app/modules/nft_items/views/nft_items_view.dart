import 'dart:math' as math;
import 'package:enefte/app/values/colors.dart';
import 'package:enefte/app/values/strings.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/nft_items_controller.dart';

class NftItemsView extends GetView<NftItemsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        leadingWidth: MediaQuery.of(context).size.height * 0.1,
        leading: Tooltip(
          message: "Back",
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: MyColors.secondaryColor,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage("assets/icons/Vector.png"),
              ),
            ),
            child: MaterialButton(
              onPressed: () {
                Get.back();
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Tooltip(
                  message: "Filter",
                  child: Container(
                    width: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      color: MyColors.secondaryColor,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/Icon Filter.png"),
                      ),
                    ),
                    child: MaterialButton(
                      height: double.infinity,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Tooltip(
                  message: "Share",
                  child: Container(
                    width: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      color: MyColors.secondaryColor,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/Icon Share.png"),
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      height: double.infinity,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 20,
            top: MediaQuery.of(context).size.height * 0.12 +
                MediaQuery.of(context).viewPadding.top,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Tooltip(
                message: "NFT Items",
                child: InkWell(
                  onTap: () {
                    print("sssttt");
                  },
                  child: Image(
                    width: double.infinity,
                    fit: BoxFit.fitHeight,
                    image: AssetImage("assets/images/nft1.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Karafuru",
                    style: MyStyles.body,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                    image: AssetImage("assets/icons/ic_round-verified.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Mosu #1930",
                style: MyStyles.heading1,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.1,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          MyStrings.listCardImage[math.Random().nextInt(
                            MyStrings.listCardImage.length,
                          )],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Created by",
                        style: MyStyles.smallCaption,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "KarafuruDeployer",
                        style: MyStyles.caption,
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.1,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          MyStrings.listCardImage[math.Random().nextInt(
                            MyStrings.listCardImage.length,
                          )],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Created by",
                        style: MyStyles.smallCaption,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "KarafuruDeployer",
                        style: MyStyles.caption,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Karafuru is home to 5,555 generative arts where colors reign supreme. Leave the drab reality and enter the world of Karafuru by Museum of Toys.",
                style: MyStyles.caption,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Current Bid",
                        style: MyStyles.smallCaption,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image(
                            image:
                                AssetImage("assets/icons/logos_ethereum.png"),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${math.Random().nextInt(9)},${math.Random().nextInt(99)} ETH",
                            style: MyStyles.caption,
                          )
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Ends In",
                        style: MyStyles.smallCaption,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "June 21, 2022 at 23.00",
                        style: MyStyles.caption,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.12,
        color: MyColors.secondaryColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(
                    "assets/icons/logos_ethereum.png",
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "${math.Random().nextInt(9)},${math.Random().nextInt(99)} ETH",
              style: MyStyles.heading2,
            ),
            Spacer(),
            Tooltip(
              message: "Price",
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: MyColors.primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                height: 20,
                child: Row(
                  children: [
                    Image(
                      color: MyColors.white,
                      image: AssetImage("assets/icons/entypo_wallet.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Place a Bid",
                      style: MyStyles.button,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
