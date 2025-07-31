import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/components/widgets/my_theme_button.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/utills/const_image.dart';


class FeedContainer extends StatelessWidget {
  String userIcon;
  String userName;
  String userDetail;
  String FeedTitle;
  String telentDescription;
  String likeCount;
  String commentCount;
  String uploadTime;


  void Function()? onTap;
  void Function()? onShareTap;
  void Function()? onVideoTap;
  String? thumbnailPath;
  FeedContainer({Key? key ,required this.userIcon,required this.uploadTime ,required this.likeCount,required this.commentCount,required this.onVideoTap,required this.onTap,required this.onShareTap,required this.userName,required this.userDetail,required this.FeedTitle,required this.telentDescription, this.thumbnailPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:containerBgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding:EdgeInsets.all( AppDimensions.instance!.height*0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Container(
                        width: AppDimensions.instance!.height*0.06,
                        height: AppDimensions.instance!.height*0.06,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(userIcon),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                      SizedBox(width: AppDimensions.instance!.width*0.02,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyRegularText(label: userName,fontSize: 10,fontWeight: FontWeight.bold,color: whiteColor,),
                            SizedBox(height: AppDimensions.instance!.height*0.006 ,),
                            MyRegularText(label: FeedTitle,fontSize: 10,maxlines: 3,align: TextAlign.start
                              ,color: whiteColor,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Icon(Icons.more_vert,size: AppDimensions.instance!.height*0.03,color: whiteColor,)
              ],
            ),
            SizedBox(height: AppDimensions.instance!.height*0.01,),

            Column(
              children: [
                InkWell(
                  onTap: onVideoTap,
                  child: thumbnailPath!.isNotEmpty? Image.network(
                    thumbnailPath!,
                    fit: BoxFit.fitWidth,
                    height:   AppDimensions.instance!.height * 0.25,
                    width: AppDimensions.instance!.width,
                  ):Image.network(
                    'http://139.59.3.15/voting-app/public/storage/video_thumbnail/1692966780.png',
                    fit: BoxFit.fitWidth,
                    height:   AppDimensions.instance!.height * 0.25,
                    width: AppDimensions.instance!.width,
                  ),
                ),
                // SizedBox(height: AppDimensions.instance!.height*0.016,),
                // MyRegularText(label: telentVideoLink,fontSize: 12,maxlines: 2,
                //   align: TextAlign.start,),
              ],
            ),
                       SizedBox(height: AppDimensions.instance!.height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      likeIcon,
                      fit: BoxFit.fill,
                      height: AppDimensions.instance!.height * 0.03,
                      width: AppDimensions.instance!.width * 0.03,
                    ),
                    SizedBox(width: AppDimensions.instance!.width*0.036,),
                    SvgPicture.asset(
                      commentIcon ,
                      fit: BoxFit.fill,
                      height: AppDimensions.instance!.height * 0.03,
                      width: AppDimensions.instance!.width * 0.03,
                    ),
                    SizedBox(width: AppDimensions.instance!.width*0.036,),
                    SvgPicture.asset(
                      shareIcon,
                      fit: BoxFit.fill,
                      height: AppDimensions.instance!.height * 0.03,
                      width: AppDimensions.instance!.width * 0.03,
                    ),
                  ],
                ),
                SvgPicture.asset(
                  saveIcon,
                  fit: BoxFit.fill,
                  height: AppDimensions.instance!.height * 0.03,
                  width: AppDimensions.instance!.width * 0.03,
                ),
              ],
            ),
            SizedBox(height: AppDimensions.instance!.height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: AppDimensions.instance!.height*0.06,
                  height:AppDimensions.instance!.height*0.03,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: AppDimensions.instance!.height*0.026,
                          height: AppDimensions.instance!.height*0.026,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80"),
                              fit: BoxFit.fitHeight,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: AppDimensions.instance!.height*0.014,
                        top: 0,
                        child: Container(
                          width: AppDimensions.instance!.height*0.026,
                          height: AppDimensions.instance!.height*0.026,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
                              fit: BoxFit.fitHeight,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: AppDimensions.instance!.height*0.028,
                        top: 0,
                        child: Container(
                          width: AppDimensions.instance!.height*0.026,
                          height: AppDimensions.instance!.height*0.026,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://www.seiu1000.org/sites/main/files/imagecache/hero/main-images/camera_lense_0.jpeg"),
                              fit: BoxFit.fitHeight,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: AppDimensions.instance!.width*0.02,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyRegularText(label: likeCount,fontSize: 10,maxlines: 1,color: whiteColor,),
                    SizedBox(height: AppDimensions.instance!.height*0.006,),
                    MyRegularText(label: commentCount,fontSize: 10,maxlines: 2,color: whiteColor,),
                  ],
                )
              ],
            ),
            SizedBox(height: AppDimensions.instance!.height*0.01,),
            MyRegularText(label: uploadTime,fontSize: 10,maxlines: 1,color: whiteColor,),


          ],
        ),
      ),
    );
  }
}
