import 'package:flutter/material.dart';
import 'package:manav_s_application/presentation/user_type_screen/user_type_screen.dart';
import 'package:manav_s_application/presentation/complain_screen/complain_screen.dart';
import 'package:manav_s_application/presentation/lost_and_found_screen/lost_and_found_screen.dart';
import 'package:manav_s_application/presentation/passenger_home_on_screen/passenger_home_on_screen.dart';
import 'package:manav_s_application/presentation/passenger_home_off_screen/passenger_home_off_screen.dart';
import 'package:manav_s_application/presentation/login_page_driver_screen/login_page_driver_screen.dart';
import 'package:manav_s_application/presentation/driver_home_on_logged_out_screen/driver_home_on_logged_out_screen.dart';
import 'package:manav_s_application/presentation/driver_home_on_logged_out_one_screen/driver_home_on_logged_out_one_screen.dart';
import 'package:manav_s_application/presentation/driver_home_on_screen/driver_home_on_screen.dart';
import 'package:manav_s_application/presentation/driver_home_off_screen/driver_home_off_screen.dart';
import 'package:manav_s_application/presentation/login_page_main_screen/login_page_main_screen.dart';
import 'package:manav_s_application/presentation/passenger_homepage_screen/passenger_homepage_screen.dart';
import 'package:manav_s_application/presentation/track_screen/track_screen.dart';
import 'package:manav_s_application/presentation/spashone_screen/spashone_screen.dart';
import 'package:manav_s_application/presentation/spashtwo_screen/spashtwo_screen.dart';
import 'package:manav_s_application/presentation/spashthree_screen/spashthree_screen.dart';
import 'package:manav_s_application/presentation/passenger_home_logged_out_screen/passenger_home_logged_out_screen.dart';
import 'package:manav_s_application/presentation/ticket_booking_screen/ticket_booking_screen.dart';
import 'package:manav_s_application/presentation/more_info_screen/more_info_screen.dart';
import 'package:manav_s_application/presentation/collision_avoidance_off_screen/collision_avoidance_off_screen.dart';
import 'package:manav_s_application/presentation/collision_avoidance_on_typetwo_screen/collision_avoidance_on_typetwo_screen.dart';
import 'package:manav_s_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String userTypeScreen = '/user_type_screen';

  static const String complainScreen = '/complain_screen';

  static const String lostAndFoundScreen = '/lost_and_found_screen';

  static const String passengerHomeOnScreen = '/passenger_home_on_screen';

  static const String passengerHomeOffScreen = '/passenger_home_off_screen';

  static const String loginPageDriverScreen = '/login_page_driver_screen';

  static const String driverHomeOnLoggedOutScreen =
      '/driver_home_on_logged_out_screen';

  static const String driverHomeOnLoggedOutOneScreen =
      '/driver_home_on_logged_out_one_screen';

  static const String driverHomeOnScreen = '/driver_home_on_screen';

  static const String driverHomeOffScreen = '/driver_home_off_screen';

  static const String loginPageMainScreen = '/login_page_main_screen';

  static const String passengerHomepageScreen = '/passenger_homepage_screen';

  static const String trackScreen = '/track_screen';

  static const String spashoneScreen = '/spashone_screen';

  static const String spashtwoScreen = '/spashtwo_screen';

  static const String spashthreeScreen = '/spashthree_screen';

  static const String passengerHomeLoggedOutScreen =
      '/passenger_home_logged_out_screen';

  static const String ticketBookingScreen = '/ticket_booking_screen';

  static const String moreInfoScreen = '/more_info_screen';

  static const String collisionAvoidanceOffScreen =
      '/collision_avoidance_off_screen';

  static const String collisionAvoidanceOnTypetwoScreen =
      '/collision_avoidance_on_typetwo_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        userTypeScreen: UserTypeScreen.builder,
        complainScreen: ComplainScreen.builder,
        lostAndFoundScreen: LostAndFoundScreen.builder,
        passengerHomeOnScreen: PassengerHomeOnScreen.builder,
        passengerHomeOffScreen: PassengerHomeOffScreen.builder,
        loginPageDriverScreen: LoginPageDriverScreen.builder,
        driverHomeOnLoggedOutScreen: DriverHomeOnLoggedOutScreen.builder,
        driverHomeOnLoggedOutOneScreen: DriverHomeOnLoggedOutOneScreen.builder,
        driverHomeOnScreen: DriverHomeOnScreen.builder,
        driverHomeOffScreen: DriverHomeOffScreen.builder,
        loginPageMainScreen: LoginPageMainScreen.builder,
        passengerHomepageScreen: PassengerHomepageScreen.builder,
        trackScreen: TrackScreen.builder,
        spashoneScreen: SpashoneScreen.builder,
        spashtwoScreen: SpashtwoScreen.builder,
        spashthreeScreen: SpashthreeScreen.builder,
        passengerHomeLoggedOutScreen: PassengerHomeLoggedOutScreen.builder,
        ticketBookingScreen: TicketBookingScreen.builder,
        moreInfoScreen: MoreInfoScreen.builder,
        collisionAvoidanceOffScreen: CollisionAvoidanceOffScreen.builder,
        collisionAvoidanceOnTypetwoScreen:
            CollisionAvoidanceOnTypetwoScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: UserTypeScreen.builder
      };
}
