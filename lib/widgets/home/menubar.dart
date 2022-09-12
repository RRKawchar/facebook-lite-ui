import 'package:facebook_lite_ui_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReusableRowClass(
          icon: Icons.post_add_outlined,
          iconColor: AppColors.colorBlue,
          text: "Text",
        ),
        Container(
          height: 40,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        ReusableRowClass(
          icon: Icons.video_call_outlined,
          iconColor: AppColors.colorRed,
          text: "Live Video",
        ),
        Container(
          height: 40,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        ReusableRowClass(
          icon: Icons.location_on,
          iconColor: AppColors.colorRed,
          text: "Location",
        ),



      ],
    );
  }
}

class ReusableRowClass extends StatelessWidget {
  final IconData icon;
  final String text;
  Color? iconColor;
  Color? textColor;
  FontWeight? fontWeight;
  ReusableRowClass(
      {Key? key,
      required this.icon,
      required this.text,
      this.iconColor,
      this.textColor,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 20, color: textColor),
        )
      ],
    );
  }
}
