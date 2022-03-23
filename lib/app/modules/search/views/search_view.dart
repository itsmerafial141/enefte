import 'dart:math' as math;
import 'package:enefte/app/values/colors.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Search",
                style: MyStyles.heading1,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 56,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MyColors.secondaryColor,
                ),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/icons/Icon Search.png"),
                      color: MyColors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Search your NFT...",
                      style: MyStyles.body,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Categories",
                style: MyStyles.heading2,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 96,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, __) {
                    return Container(
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(
                          math.Random().nextInt(255),
                          math.Random().nextInt(255),
                          math.Random().nextInt(255),
                          1,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, __) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Featured Collections",
                style: MyStyles.heading2,
              ),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(10, (index) {
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
                          color: MyColors.secondaryColor,
                        ),
                        Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/nft1.png"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "DourDarcels",
                                style: MyStyles.caption,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Items",
                                          style: MyStyles.caption,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "10K",
                                          style: MyStyles.body,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Text(
                                          "Owners",
                                          style: MyStyles.caption,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "4,93K",
                                          style: MyStyles.body,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
