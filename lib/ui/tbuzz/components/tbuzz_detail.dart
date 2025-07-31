import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/common_size/nk_spacing.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/theme/color/colors.dart';

class TBuzzDetail extends StatefulWidget {
  const TBuzzDetail({super.key});

  @override
  State<TBuzzDetail> createState() => _TBuzzDetailState();
}

class _TBuzzDetailState extends State<TBuzzDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.network('https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&w=1600',height:   AppDimensions.instance!.height * 0.44,fit: BoxFit.cover,),
                  Positioned(
                      top:  AppDimensions.instance!.height * 0.064,
                      left:    AppDimensions.instance!.width*0.04 ,
                      child: InkResponse(
                          onTap: (){
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back_rounded,size: 30,color: whiteColor,))),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height:   AppDimensions.instance!.height * 0.064,
                      width:   AppDimensions.instance!.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            tBuzzDetailColor  ,
                            tBuzzDetailTColor
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                        )
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: AppDimensions.instance!.height*0.02,
                      left:    AppDimensions.instance!.width*0.04 ,
                      child: Container(
                          width:  AppDimensions.instance!.width*0.7,
                          child: MyRegularText(label: '5 things to know about the conundrum of lupus',fontSize: 16,color: whiteColor,align: TextAlign.start,fontWeight:   FontWeight.bold,)))
                ],
              ),
            ),
              SizedBox(height:  AppDimensions.instance!.height * 0.02,),
            Padding(
              padding: nkMediumPadding(bottom: 0,top: 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: AppDimensions.instance!.height*0.02,
                            height: AppDimensions.instance!.height*0.02 ,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                          SizedBox(width: AppDimensions.instance!.width*0.02 ,),
                          MyRegularText(label: 'krushant',fontSize: 10,fontWeight: FontWeight.bold,color: whiteColor,),
                        ],
                      ),

                      MyRegularText(label: 'Publised May 13, 2020 ' ,fontSize: 10,fontWeight: FontWeight.bold,color: containerLabelColor,),
                    ],
                  ),
                  SizedBox(height:  AppDimensions.instance!.height * 0.02,),
                  MyRegularText(label: 'They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about their wedding They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about their wedding They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about ',fontSize: 14,color: whiteColor,maxlines: 200,align: TextAlign.start,),
                  SizedBox(height:  AppDimensions.instance!.height * 0.02,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
