import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/components/widgets/my_theme_button.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/utills/const_image.dart';
import 'package:tribpix/utills/const_string.dart';
import 'package:tribpix/utills/utils.dart';


class ProfileContainer extends StatelessWidget {
  String userIcon;
  String userName;
  String userDetail;
  String userPostCount;
  String userFollowerCount;
  String userFollowingCount;



  void Function()? onTap;
  ProfileContainer({Key? key ,required this.userIcon,required this.userFollowerCount,required this.userFollowingCount,required this.userPostCount,required this.onTap,required this.userName,required this.userDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:containerBgColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding:EdgeInsets.all( AppDimensions.instance!.height*0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: AppDimensions.instance!.height*0.1,
                  height: AppDimensions.instance!.height*0.1,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(userIcon),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),

                SizedBox(width: AppDimensions.instance!.width*0.02,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyRegularText(
                          label: userName,
                          fontSize: 16,
                          color: whiteColor,
                        ),
                        SvgPicture.asset(
                          editIcon,
                        )
                      ],
                    ),
                    SizedBox(height:  AppDimensions.instance!.height*0.01,),
                    Row(
                      mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            MyRegularText(
                              label: userPostCount,
                              fontSize: 18,
                            ),
                            SizedBox(height:  AppDimensions.instance!.height*0.002,),
                            MyRegularText(
                              label: postLabel,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            MyRegularText(
                              label: userFollowerCount,
                              fontSize: 18,
                            ),
                            SizedBox(height:  AppDimensions.instance!.height*0.002,),
                            MyRegularText(
                              label: followersLabel,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            MyRegularText(
                              label: userFollowingCount,
                              fontSize: 18,
                            ),
                            SizedBox(height:  AppDimensions.instance!.height*0.002,),
                            MyRegularText(
                              label: followingLabel,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height:  AppDimensions.instance!.height*0.01,),
                    MyThemeButton(
                      width:  AppDimensions.instance!.height*0.26,
                      buttonText: followMe,
                      decoration: Utils.kGradientBoxDecorationFollow,
                      decorationIn:   Utils.kInnerDecorationFollow,
                      onPressed: () {},
                    ),

                  ],
                ),

              ],
            ),
            SizedBox(height: AppDimensions.instance!.height*0.02,),
            MyRegularText(label: 'Jack of all, Master of Design  Product Designer Creator of Lorem ipsum i m feeling good to making this video post & post it’s great platform to share',align: TextAlign.start,maxlines: 3,),
          ],
        ),
      ),
    );
  }
}
