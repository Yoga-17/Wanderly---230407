import 'package:flutter/material.dart';
import 'package:wanderly/presentation/splash_screen/splash_screen.dart';
import 'package:wanderly/presentation/chennai_tourist_spots_church_screen/chennai_tourist_spots_church_screen.dart';
import 'package:wanderly/presentation/chennai_tourist_spots_screen/chennai_tourist_spots_screen.dart';
import 'package:wanderly/presentation/chennai_tourist_spots_zoo_screen/chennai_tourist_spots_zoo_screen.dart';
import 'package:wanderly/presentation/home_screen/home_screen.dart';
import 'package:wanderly/presentation/chennai_screen/chennai_screen.dart';
import 'package:wanderly/presentation/login_sginup_screen/login_sginup_screen.dart';
import 'package:wanderly/presentation/login_screen/login_screen.dart';
import 'package:wanderly/presentation/chennai_insider_screen/chennai_insider_screen.dart';
import 'package:wanderly/presentation/chennai_insider_day_plan_screen/chennai_insider_day_plan_screen.dart';
import 'package:wanderly/presentation/wanderbot_screen/wanderbot_screen.dart';
import 'package:wanderly/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String chennaiTouristSpotsChurchScreen =
      '/chennai_tourist_spots_church_screen';

  static const String chennaiTouristSpotsScreen =
      '/chennai_tourist_spots_screen';

  static const String chennaiTouristSpotsZooScreen =
      '/chennai_tourist_spots_zoo_screen';

  static const String homeScreen = '/home_screen';

  static const String chennaiScreen = '/chennai_screen';

  static const String loginSginupScreen = '/login_sginup_screen';

  static const String loginScreen = '/login_screen';

  static const String chennaiInsiderScreen = '/chennai_insider_screen';

  static const String chennaiInsiderDayPlanScreen =
      '/chennai_insider_day_plan_screen';

  static const String wanderbotScreen = '/wanderbot_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        chennaiTouristSpotsChurchScreen:
            ChennaiTouristSpotsChurchScreen.builder,
        chennaiTouristSpotsScreen: ChennaiTouristSpotsScreen.builder,
        chennaiTouristSpotsZooScreen: ChennaiTouristSpotsZooScreen.builder,
        homeScreen: HomeScreen.builder,
        chennaiScreen: ChennaiScreen.builder,
        loginSginupScreen: LoginSginupScreen.builder,
        loginScreen: LoginScreen.builder,
        chennaiInsiderScreen: ChennaiInsiderScreen.builder,
        chennaiInsiderDayPlanScreen: ChennaiInsiderDayPlanScreen.builder,
        wanderbotScreen: WanderbotScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
