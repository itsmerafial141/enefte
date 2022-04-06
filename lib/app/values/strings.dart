import 'dart:math' as math;
import 'package:enefte/app/modules/collection_items/screens/CLCFavoritedScreen.dart';
import 'package:enefte/app/modules/profile/screens/PRFActivityScreen.dart';
import 'package:enefte/app/modules/profile/screens/PRFCreatedScreen.dart';
import 'package:enefte/app/modules/profile/screens/PRFFavoritedScreen.dart';
import 'package:enefte/app/modules/profile/screens/PRFOfferMadeScreen.dart';
import 'package:enefte/app/modules/profile/screens/PRFOfferReceivedScreen.dart';
import 'package:enefte/app/values/colors.dart';
import 'package:flutter/cupertino.dart';

import '../modules/collection_items/screens/CLCOfferMadeScreen.dart';
import '../modules/profile/screens/PRFCollectedScreen.dart';

class MyStrings {
  // API
  static final String url =
      "https://firestore.googleapis.com/v1/projects/enefte-afeef/databases/(default)/documents";
  static final String api_key = "AIzaSyB8lYRVRG8XFRNMzsqxAUytVyNu8NNazps";

  // Onboarding
  static final List listImageOnBoarding = [
    "assets/images/onb1.png",
    "assets/images/onb2.png",
    "assets/images/onb3.png",
  ];
  static final List listHeadingOnBoarding = [
    "Discover largest\nNFT marketplace",
    "Start yout own\nNFT gallery now",
    "Discovering the\nworld of crypto art",
  ];
  static final List listbodyOnBoarding = [
    "Buy and sell digital items",
    "Buy and sell digital items",
    "Buy and sell digital items",
  ];

  // Connect with Wallets
  static final List listOptionWalletTittle = [
    "MetaMask",
    "Trust Wallet",
    "Enter ethereum address",
  ];
  static final List listOptionWalletIcon = [
    "assets/icons/cww_icon_wolf.png",
    "assets/icons/cww_icon_shield.png",
    "assets/icons/cww_con_link.png",
  ];

  // Homepage
  static final List listKategoriHomePage = [
    "Trending",
    "Art",
    "Gaming",
    "Culture",
    "Video",
    "Animation",
    "Image",
  ];

  static final List listCardImage = [
    "assets/images/Rectangle 8.png",
    "assets/images/nft1.png",
  ];

  static final List listNameCategories = [
    "-",
    "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)].toUpperCase()}"
        "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
        "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)]}"
        "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
        "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)]}"
        " ${MyStrings.hurufKonsonan[math.Random().nextInt(MyStrings.hurufKonsonan.length)].toUpperCase()}"
        "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
        "${MyStrings.hurufKonsonan[math.Random().nextInt(MyStrings.hurufKonsonan.length)]}"
        "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}",
  ];

  //Navigasi
  static final List listNavigasiImage = [
    "assets/icons/Icon Home.png",
    "assets/icons/Icon Search.png",
    "assets/icons/Icon Stats.png",
    "assets/icons/Icon Profile.png",
  ];

  //Stats
  static final List listTabStatsView = [
    "Rankings",
    "Activity",
  ];

  //Profile
  static final List listTabProfileView = [
    "Collected",
    "Created",
    "Activity",
    "Favorited",
    "Offers Mode",
    "Offers Received",
  ];

  static final List<Widget> listProfileScreen = [
    PRFCollectedScreen(),
    PRFCreatedScreen(),
    PRFActivityScreen(),
    PRFFavoritedScreen(),
    PRFOfferMadeScreen(),
    PRFOfferReceivedScreen(),
  ];
  static final List listCreatedFilter = [
    "Items",
    "Collections",
  ];

  //Collection_item
  static final List listTabCollectionItems = [
    "Items",
    "Activity",
  ];

  static final List<Widget> listCollectionScreen = [
    CLCFavoritedScreen(),
    CLCOfferMadeScreen(),
  ];
  static final List<Color> listColorUpDown = [
    MyColors.danger,
    MyColors.success,
  ];
  // nama

  static final hurufVokal = [
    "a",
    "i",
    "u",
    "e",
    "o",
  ];
  static final huruf1 = [
    "d",
    "f",
    "g",
    "h",
    "k",
    "m",
    "n",
    "p",
    "r",
    "s",
    "t",
  ];
  static final hurufKonsonan = [
    "b",
    "c",
    "d",
    "f",
    "g",
    "h",
    "j",
    "k",
    "l",
    "m",
    "n",
    "p",
    "q",
    "r",
    "s",
    "t",
    "v",
    "w",
    "x",
    "y",
    "z",
  ];
}
