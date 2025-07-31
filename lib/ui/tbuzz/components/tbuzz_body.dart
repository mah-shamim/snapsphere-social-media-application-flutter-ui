import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/common_size/nk_spacing.dart';
import 'package:tribpix/components/widgets/comman_list_view.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/routes/routes.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/tbuzz/components/tbuzz_container.dart';
import 'package:tribpix/ui/tbuzz/controller/tbuzz_controller.dart';
import 'package:tribpix/utills/const_string.dart';

class TBuzzBody extends StatefulWidget {
  const TBuzzBody({Key? key}) : super(key: key);

  @override
  State<TBuzzBody> createState() => _TBuzzBodyState();
}

class _TBuzzBodyState extends State<TBuzzBody> {
  TBuzzController controller = Get.put(TBuzzController());

  @override
  void initState() {
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
              label: tBuzzLabel,
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

                    child: TBuzzContainer(
                      onTap: (){
                        Get.toNamed(AppRoutes.tbuzzDetail);
                      },
                      tbuzzDescription: 'adfyasdadtcadytayd fyfdy adswf sdfsifjif wfiw dtvcd dwdjwdwdvw wdyd',
                      userIcon:  'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&w=1600' ,
                      userName: 'krushant',
                      tbuzzTitle: 'gdujwy wugudg dfd sff sdiji sfjis sdt kd sdt dodg dcd wkwg qvdvv dwdv kdndvf',
                      thumbnailPath:  'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&w=1600',
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
