import 'package:get/get.dart';
import 'package:tribpix/ui/bottom_tab/index.dart';
import 'package:tribpix/ui/dashbord/dashbord_screen.dart';
import 'package:tribpix/ui/login/login_screen.dart';
import 'package:tribpix/ui/profile/components/account_privacy_screen.dart';
import 'package:tribpix/ui/profile/components/bilingual_screen.dart';
import 'package:tribpix/ui/profile/components/invite_screen.dart';
import 'package:tribpix/ui/profile/components/notification_screen.dart';
import 'package:tribpix/ui/profile/components/search_screen.dart';
import 'package:tribpix/ui/profile/components/setting_screen.dart';
import 'package:tribpix/ui/profile/profile_screen.dart';
import 'package:tribpix/ui/signup/signup_screen.dart';
import 'package:tribpix/ui/splash/splash_screen.dart';
import 'package:tribpix/ui/tbuzz/components/tbuzz_detail.dart';
import 'package:tribpix/ui/tbuzz/tbuzz_screen.dart';


import '../general_binding/common_binding.dart';

class AppRoutes {
  static const String initialRoutes = "/";
  static const String splash = "/splash";
  static const String login = "/login";
  static const String signup = "/signup";
  static const String dashbord = "/dashbord";
  static const String bottomTab = "/bottomTab";
  static const String tbuzz = "/tbuzz";
  static const String tbuzzDetail = "/tbuzzDetail";
  static const String profileScreen = "/profileScreen";
  static const String settingScreen = "/settingScreen";
  static const String bilingualScreen = "/bilingualScreen";
  static const String searchScreen = "/searchScreen";
  static const String inviteScreen = "/inviteScreen";
  static const String notificationScreen = "/notificationScreen";
  static const String accountPrivacyScreen = "/accountPrivacyScreen";

  static List<GetPage<dynamic>> get genratedRoutes => [
        GetPage(name: splash, page: () => const SplashScreen()),
        GetPage(
            name: login,
            page: () => const LoginScreen(),
            binding: CommonBinding()),
    GetPage(
            name: signup,
            page: () => const SignupScreen(),
            binding: CommonBinding()),
    GetPage(
            name: dashbord,
            page: () => const DashbordScreen(),
            binding: CommonBinding()),
    GetPage(
            name: bottomTab,
            page: () =>  const BottomTab(),
            binding: CommonBinding()),
    GetPage(
            name: tbuzz,
            page: () =>  const TBuzzScreen(),
            binding: CommonBinding()),
    GetPage(
            name: tbuzzDetail,
            page: () =>  const TBuzzDetail(),
            binding: CommonBinding()),
    GetPage(
            name: profileScreen,
            page: () =>  const ProfileScreen(),
            binding: CommonBinding()),
    GetPage(
            name: settingScreen,
            page: () =>  const SettingScreen(),
            binding: CommonBinding()),
    GetPage(
            name: bilingualScreen,
            page: () =>  const BilingualScreen(),
            binding: CommonBinding()),
    GetPage(
            name: searchScreen,
            page: () =>  const SearchScreen(),
            binding: CommonBinding()),
    GetPage(
            name: inviteScreen,
            page: () =>  const InviteScreen(),
            binding: CommonBinding()),
    GetPage(
            name: notificationScreen,
            page: () =>  const NotificationScreen(),
            binding: CommonBinding()),
    GetPage(
            name: accountPrivacyScreen,
            page: () =>  const AccountPrivacyScreen(),
            binding: CommonBinding()),

      ];
}
