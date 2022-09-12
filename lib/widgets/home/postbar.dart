import 'package:facebook_lite_ui_app/utils/app_colors.dart';
import 'package:facebook_lite_ui_app/utils/app_images.dart';
import 'package:facebook_lite_ui_app/widgets/reuseble_text.dart';
import 'package:flutter/material.dart';

class PostBar extends StatelessWidget {
  const PostBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
         iconSize: 50,
            onPressed: (){},
            icon: CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage(AppImages.myPic),
            )
        ),
        ReusebleText(text: "What's on your mind?",color: Colors.grey.withOpacity(0.6),size: 22,fontWeight: FontWeight.bold,),
        Container(
          height: 60,
          child: VerticalDivider(
            color: AppColors.colorBlack,
          ),
        ),
        Column(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.photo_album_outlined)),
            ReusebleText(text: "Photo")
          ],
        )
      ],
    );

  }
}
