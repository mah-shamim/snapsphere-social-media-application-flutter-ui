import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/common_size/nk_spacing.dart';
import 'package:tribpix/components/widgets/comman_list_view.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/session/session_helper.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/dashbord/components/feed_container.dart';
import 'package:tribpix/ui/dashbord/controller/dashbord_controller.dart';
import 'package:tribpix/utills/const_string.dart';

class DashbordBody extends StatefulWidget {
  const DashbordBody({Key? key}) : super(key: key);

  @override
  State<DashbordBody> createState() => _DashbordBodyState();
}

class _DashbordBodyState extends State<DashbordBody> {
  DashbordController controller = Get.put(DashbordController());

  @override
  void initState() {
    SessionHelper().setIntro(1);
    super.initState();
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
            MyRegularText(
              label: feedLabel,
              fontSize: 24,
              color: whiteColor,
            ),
            SizedBox(height:  AppDimensions.instance!.height * 0.01,),
            Expanded(
              child: CommanList(
                length: 7,
                physics: const AlwaysScrollableScrollPhysics(),
                child:(context, index){
                  return Padding(
                    padding: nkMediumPadding(bottom: 0, top: AppDimensions.instance!.height * 0.02,left: 0,right: 0),

                    child: FeedContainer(
                      onTap: (){},
                      onShareTap: (){},
                      onVideoTap: (){},
                      telentDescription: 'adfyasdadtcadytayd fyfdy ',
                      FeedTitle: 'gdujwy wugudg dfd',
                      userIcon:  'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&w=1600' ,
                      userName: 'krushant',
                      thumbnailPath:  'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&w=1600',
                      userDetail: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      likeCount: 'Liked by Annabel and 100+ others',
                      commentCount: 'View all 78 comments',
                      uploadTime: '1day ago',

                    )
                  );
                } ,
              ),
            ),
            SizedBox(height: AppDimensions.instance!.height*0.01,),
          ],
        ),
      ),
    );
  }
}
