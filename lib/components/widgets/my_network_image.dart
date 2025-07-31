

/////////////////////////////////////////// [MyNetworkImage Use to Custome] //////////////////////////////////


               ////!!!!!!!!!!!!!!! WARNING !!!!!!!!!!!!!!!////
               /* cached_network_image 3.2.3 is not currently confotable with DART SDK 3.0.0 and later */

/* 
import 'package:flutter/material.dart';

class MyNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final Color? color;
  final Alignment alignment;
  final BoxFit? fit;
  var cacheManager;
  final LoadingErrorWidgetBuilder? errorWidget;
  final PlaceholderWidgetBuilder? placeholder;
  final ProgressIndicatorBuilder? progressIndicatorBuilder;
  final ImageWidgetBuilder? imageBuilder;

  MyNetworkImage(
      {super.key,
      required this.imageUrl,
      this.width,
      this.height,
      this.color,
      this.alignment = Alignment.center,
      this.fit,
      this.cacheManager,
      this.errorWidget,
      this.placeholder,
      this.progressIndicatorBuilder,
      this.imageBuilder});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageRenderMethodForWeb: ImageRenderMethodForWeb.HtmlImage,
      imageUrl: imageUrl.toString(),
      height: height,
      width: width,
      color: color,
      alignment: alignment,
      fit: fit ?? BoxFit.cover,
      cacheManager: cacheManager,
      errorWidget: errorWidget ??
          (context, url, error) {
            print('IMAGE ERROR ${error.toString()}');
            return NkCommonFunction.errorWidget();
          },
      imageBuilder: imageBuilder,
      placeholder: placeholder ??
          (context, url) {
            return MyProgressIndicator();
          },
      progressIndicatorBuilder: progressIndicatorBuilder,
    );
  }
}
 */