import 'package:enefte/app/values/colors.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';
import '../widgets/search_list_card_widget.dart';
import '../widgets/search_list_collection_widget.dart';
import '../widgets/search_list_featured_widget.dart';
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
                  SRCListFeaturedWidget(),
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
                  SizedBox(
                    height: 20,
                  ),
                  SRCListCardWidget()
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
                  SRCListCollectionWidget(),
                ],
              ),
      ),
    );
  }
}
