import 'dart:math' as math;
import 'package:enefte/app/values/colors.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';
import '../widgets/search_list_collection_widget.dart';
import '../widgets/search_list_kategori_widget.dart';
import '../widgets/search_widget.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Search",
                  style: MyStyles.heading1,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SRCSearchWidget(),
              SizedBox(
                height: 20,
              ),
              SRCBodyWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class SRCBodyWidget extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SearchController());
    return Obx(
      () => Container(
        child: controller.isFilled.value
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Collections",
                      style: MyStyles.heading2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      children: List.generate(
                        4,
                        (index) {
                          return Container(
                            height: 152,
                            width: 148,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(
                                math.Random().nextInt(255),
                                math.Random().nextInt(255),
                                math.Random().nextInt(255),
                                1,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  height: 100,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: MyColors.secondaryColor,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Container(
                                            height: 45,
                                            width: 45,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/images/nft1.png"),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                              color: MyColors.secondaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: Image(
                                              height: 10,
                                              width: 10,
                                              image: AssetImage(
                                                "assets/icons/ic_round-verified.png",
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "DourDarcels",
                                        style: MyStyles.caption,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Gozali_Ghozalu",
                                        style: TextStyle(
                                          fontFamily: "GilroyRegular",
                                          color: MyColors.primaryColor,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Items",
                      style: MyStyles.heading2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.count(
                      childAspectRatio: (1 / 1.5),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      children: List.generate(
                        5,
                        (index) {
                          return Container(
                            width: 148,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyColors.secondaryColor,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 144,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "assets/images/nft1.png",
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Ghozali_",
                                      style: MyStyles.smallCaption,
                                    ),
                                    Spacer(),
                                    Image(
                                      height: 20,
                                      width: 20,
                                      color: MyColors.white,
                                      image: AssetImage(
                                        "assets/icons/Icon Like.png",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "320",
                                      style: MyStyles.caption,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Wake Up #21",
                                  style: MyStyles.caption,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(width: 90,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      width: 1,
                                      color: MyColors.primaryColor,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Image(
                                        height: 15,
                                        width: 15,
                                        image: AssetImage(
                                          "assets/icons/logos_ethereum.png",
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "2,75 ETH",
                                        style: MyStyles.caption,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Categories",
                      style: MyStyles.heading2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SRCListKategoriWidget(),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Featured Collections",
                      style: MyStyles.heading2,
                    ),
                  ),
                  SRCListCollectionWidget()
                ],
              ),
      ),
    );
  }
}
