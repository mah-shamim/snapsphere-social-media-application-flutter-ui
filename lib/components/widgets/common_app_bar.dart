import 'package:flutter/material.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/common_size/nk_spacing.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/theme/color/colors.dart';


class CommanAppBar extends StatelessWidget {
  String label;
  void Function()? onTap;
   CommanAppBar({Key? key,required this.label,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.instance!.width,
      height: AppDimensions.instance!.height * 0.1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [linearPrimaryButtonColor, linearSecondaryButtonColor],
        )
      ),
      child: Padding(
        padding: nkSmallPadding(left: AppDimensions.instance!.width * 0.03),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkResponse(
                onTap: onTap,
                child: Icon(Icons.arrow_back,color: Colors.white,size: AppDimensions.instance!.width * 0.06,)),
            SizedBox(width:AppDimensions.instance!.width * 0.02 ,),
            MyRegularText(label: label,color: whiteColor,fontSize: AppDimensions.instance!.height * 0.02,)
          ],
        ),
      ),
    );
  }
}
