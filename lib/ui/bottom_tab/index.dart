
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/routes/routes.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/dashbord/controller/dashbord_controller.dart';
import 'package:tribpix/utills/const_image.dart';
import 'package:tribpix/utills/const_string.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({Key? key}) : super(key: key);

  static Route<String> route() {
    return MaterialPageRoute(builder: (_) => const BottomTab());
  }

  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  DashbordController controller = Get.put(DashbordController());
  Widget? _child;
  int selectedIndex = 0;




  int _page = 0;
  var uid;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      extendBody: true,

      body:  Navigator(
        reportsRouteUpdateToEngine: true,
        key: Get.nestedKey(2),
        initialRoute:AppRoutes.dashbord,
        onGenerateRoute: controller.onGenerateRoute,
      ),
      bottomNavigationBar: CustomNavigationBar(

        iconSize: 30.0,
        selectedColor: const Color(0xff040307),
        strokeColor: const Color(0x30040307),
        unSelectedColor: const Color(0xffd9d9d9),
        backgroundColor: appBgColor,
        items: [
          CustomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: _page == 0? [buttonGradiantColor,buttonGradiantSColor]:[whiteColor,whiteColor],
                    ).createShader(bounds);
                  },
                  child: SvgPicture.asset(
                    // _page == 0 ?home_icon1:searchMenuIcon,
                    feedIcon,
                    width: 28,
                    height: 28,

                  ),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: MyRegularText(label: feedLabel,color:  _page == 0
                    ? buttonGradiantColor
                    :  whiteColor,),
              )
          ),
          CustomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: _page == 1? [buttonGradiantColor,buttonGradiantSColor]:[whiteColor,whiteColor],
                    ).createShader(bounds);
                  },
                  child: SvgPicture.asset(
                    // _page == 0 ?home_icon1:searchMenuIcon,
                    tBuzzIcon,
                    width: 28,
                    height: 28,

                  ),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: MyRegularText(label:tBuzzLabel,color: _page == 1
                    ? buttonGradiantColor
                    :  whiteColor,),
              )
          ),
          CustomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: _page == 2? [buttonGradiantColor,buttonGradiantSColor]:[whiteColor,whiteColor],
                    ).createShader(bounds);
                  },
                  child: SvgPicture.asset(
                    // _page == 0 ?home_icon1:searchMenuIcon,
                    flickIcon,
                    width: 28,
                    height: 28,


                  ),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: MyRegularText(label: flickLabel,color: _page == 2
                    ? buttonGradiantColor
                    :  whiteColor,),
              )
          ),
          CustomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: _page == 3? [buttonGradiantColor,buttonGradiantSColor]:[whiteColor,whiteColor],
                    ).createShader(bounds);
                  },
                  child: SvgPicture.asset(
                    // _page == 0 ?home_icon1:searchMenuIcon,
                    profileIcon,
                    width: 28,
                    height: 28,


                  ),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: MyRegularText(label: profileLabel,color: _page == 3
                    ? buttonGradiantColor
                    :  whiteColor,),
              )
          ),

        ],
        onTap: (index) {
          setState(() {
            _page = index;
            _handleNavigationChange(_page);
          });
        },
      ),
    );
  }

  Future? _handleNavigationChange(int index) async{
    selectedIndex = index;
    switch (index) {
      case 0:
        return await Get.offAllNamed(AppRoutes.dashbord,id: 2);
      case 1:
        return await Get.offAllNamed(AppRoutes.tbuzz,id: 2);
      case 2:
        return await Get.offAllNamed(AppRoutes.dashbord,id: 2);
        case 3:
        return await Get.offAllNamed(AppRoutes.profileScreen,id: 2);
    }
    _child = AnimatedSwitcher(
      switchInCurve: Curves.fastOutSlowIn,
      switchOutCurve: Curves.fastLinearToSlowEaseIn,
      duration: const Duration(milliseconds: 250),
      child: _child,
    );
  }

}
