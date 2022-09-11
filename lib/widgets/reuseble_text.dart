import 'package:facebook_lite_ui_app/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class ReusebleText extends StatelessWidget {

  final String text;
  double? size;
   Color color;
   String? fontFamily;
   FontWeight? fontWeight;
   ReusebleText({Key? key,required this.text,this.size,this.color=AppColors.colorBlack,this.fontFamily,this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size,color: color,fontFamily: fontFamily,fontWeight: fontWeight),
    );
  }
}
