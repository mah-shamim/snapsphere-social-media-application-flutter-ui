import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/common_size/nk_spacing.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/routes/routes.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/profile/components/profile_container.dart';
import 'package:tribpix/ui/profile/controller/profile_controller.dart';
import 'package:tribpix/utills/const_image.dart';
import 'package:tribpix/utills/const_string.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> with SingleTickerProviderStateMixin  {
  ProfileController controller = Get.put(ProfileController());
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: nkMediumPadding(bottom: 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyRegularText(
                  label: profileLabel,
                  fontSize: 24,
                  color: whiteColor,
                ),
                InkResponse(
                  onTap: (){
                    Get.toNamed(AppRoutes.settingScreen);
                  },
                  child: SvgPicture.asset(
                    settingIcon,
                    height: AppDimensions.instance!.height * 0.032,
                    width: AppDimensions.instance!.height * 0.032,
                  ),
                )
              ],
            ),
            SizedBox(
              height: AppDimensions.instance!.height * 0.01,
            ),
            ProfileContainer(
              userFollowerCount: '122',
              userFollowingCount: '67',
              userPostCount: '37K',
              onTap: () {},

              userIcon: 'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&w=1600',
              userName: 'krushant',
              userDetail: 'gdujwy wugudg dfd sff sdiji sfjis sdt kd sdt dodg dcd wkwg qvdvv dwdv kdndvf',
            ),
            SizedBox(height: AppDimensions.instance!.height * 0.02,),
            Container(
              height: AppDimensions.instance!.height*0.07,
              padding: EdgeInsets.only(
                  top: AppDimensions.instance!.height * 0.006,
                  bottom: AppDimensions.instance!.height * 0.006),
              decoration: BoxDecoration(
                color: containerBgColor,
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,

                // padding:  EdgeInsets.only(top: AppDimensions.instance!.height*0.006,bottom: AppDimensions.instance!.height*0.006),
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: appBgColor,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: AppDimensions.instance!.width * 0.12,
                          right: AppDimensions.instance!.width * 0.12),
                      child: MyRegularText(
                        label: postTabLabel,
                      ),
                    ),
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: AppDimensions.instance!.width * 0.11,
                          right: AppDimensions.instance!.width * 0.11),
                      child: MyRegularText(
                        label: videoLabel,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  commanGrid(controller.photosList),

                  // second tab bar view widget
                  commanGrid(controller.photosList),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  commanGrid(list){
    return GridView.builder(
        padding:  EdgeInsets.only(top: AppDimensions.instance!.height * 0.02, bottom:AppDimensions.instance!.height * 0.02),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width:  AppDimensions.instance!.width * 0.3,
            height: AppDimensions.instance!.width * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(list.value[index]),
                fit: BoxFit.fill,
              ),
            ),
          );
        });
  }

}