import 'package:get/get.dart';

import 'package:enefte/app/modules/connect_with_wallet/bindings/connect_with_wallet_binding.dart';
import 'package:enefte/app/modules/connect_with_wallet/views/connect_with_wallet_view.dart';
import 'package:enefte/app/modules/homepage/bindings/homepage_binding.dart';
import 'package:enefte/app/modules/homepage/views/homepage_view.dart';
import 'package:enefte/app/modules/navigasi/bindings/navigasi_binding.dart';
import 'package:enefte/app/modules/navigasi/views/navigasi_view.dart';
import 'package:enefte/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:enefte/app/modules/onboarding/views/onboarding_view.dart';
import 'package:enefte/app/modules/profile/bindings/profile_binding.dart';
import 'package:enefte/app/modules/profile/views/profile_view.dart';
import 'package:enefte/app/modules/search/bindings/search_binding.dart';
import 'package:enefte/app/modules/search/views/search_view.dart';
import 'package:enefte/app/modules/setup_profile/bindings/setup_profile_binding.dart';
import 'package:enefte/app/modules/setup_profile/views/setup_profile_view.dart';
import 'package:enefte/app/modules/start_screen/bindings/start_screen_binding.dart';
import 'package:enefte/app/modules/start_screen/views/start_screen_view.dart';
import 'package:enefte/app/modules/stats/bindings/stats_binding.dart';
import 'package:enefte/app/modules/stats/views/stats_view.dart';
import 'package:enefte/app/modules/welcome_page/bindings/welcome_page_binding.dart';
import 'package:enefte/app/modules/welcome_page/views/welcome_page_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL_OB = Routes.ONBOARDING;
  static const INITIAL_SS = Routes.START_SCREEN;
  static const INITIAL_CWW = Routes.CONNECT_WITH_WALLET;
  static const INITIAL_SP = Routes.SETUP_PROFILE;
  static const INITIAL_WP = Routes.WELCOME_PAGE;
  static const INITIAL_HP = Routes.HOMEPAGE;
  static const INITIAL_NV = Routes.NAVIGASI;
  static const INITIAL_SR = Routes.SEARCH;
  static const INITIAL_ST = Routes.STATS;
  static const INITIAL_PR = Routes.PROFILE;

  static final routes = [
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.START_SCREEN,
      page: () => StartScreenView(),
      binding: StartScreenBinding(),
    ),
    GetPage(
      name: _Paths.CONNECT_WITH_WALLET,
      page: () => ConnectWithWalletView(),
      binding: ConnectWithWalletBinding(),
    ),
    GetPage(
      name: _Paths.SETUP_PROFILE,
      page: () => SetupProfileView(),
      binding: SetupProfileBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME_PAGE,
      page: () => WelcomePageView(),
      binding: WelcomePageBinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => HomepageView(),
      binding: HomepageBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGASI,
      page: () => NavigasiView(),
      binding: NavigasiBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.STATS,
      page: () => StatsView(),
      binding: StatsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
