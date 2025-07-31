import 'package:flutter/material.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/theme/color/colors.dart';


class TBuzzContainer extends StatelessWidget {
  String userIcon;
  String userName;
  String tbuzzTitle;
  String tbuzzDescription;


  String uploadTime;


  void Function()? onTap;
  String? thumbnailPath;
  TBuzzContainer({Key? key ,required this.userIcon,required this.uploadTime,required this.onTap,required this.userName,required this.tbuzzDescription,required this.tbuzzTitle, this.thumbnailPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:containerBgColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding:EdgeInsets.all( AppDimensions.instance!.height*0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  thumbnailPath!.isNotEmpty? ClipRRect(
                    borderRadius:    BorderRadius.circular(14),
                    child: Image.network(
                      thumbnailPath!,
                      fit: BoxFit.fitHeight,
                      height:   AppDimensions.instance!.height * 0.15,
                      width: AppDimensions.instance!.width* 0.27,
                    ),
                  ):Image.network(
                    'http://139.59.3.15/voting-app/public/storage/video_thumbnail/1692966780.png',
                    fit: BoxFit.fitWidth,
                    height:   AppDimensions.instance!.height * 0.25,
                    width: AppDimensions.instance!.width,
                  ),
                  SizedBox(width: AppDimensions.instance!.width*0.03,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyRegularText(label: tbuzzTitle,fontWeight: FontWeight.bold,color: whiteColor,maxlines: 2,align: TextAlign.start,),
                        SizedBox(height: AppDimensions.instance!.height*0.01 ,),
                        MyRegularText(label: tbuzzDescription,fontSize: 10,maxlines: 4,align: TextAlign.start
                          ,color: whiteColor,),
                        SizedBox(height: AppDimensions.instance!.height*0.01,),
                        Row(
                          children: [
                            Container(
                              width: AppDimensions.instance!.height*0.02,
                              height: AppDimensions.instance!.height*0.02 ,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(userIcon),
                                  fit: BoxFit.fill,
                                ),
                                shape: OvalBorder(),
                              ),
                            ),
                            SizedBox(width: AppDimensions.instance!.width*0.02 ,),
                            MyRegularText(label: userName,fontSize: 10,fontWeight: FontWeight.bold,color: whiteColor,),
                            SizedBox(width: AppDimensions.instance!.width*0.02 ,),
                            MyRegularText(label: uploadTime ,fontSize: 10,fontWeight: FontWeight.bold,color: containerLabelColor,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),





            ],
          ),
        ),
      ),
    );
  }
}
