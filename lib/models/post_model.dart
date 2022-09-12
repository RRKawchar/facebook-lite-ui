import 'package:facebook_lite_ui_app/utils/all_text.dart';
import 'package:facebook_lite_ui_app/utils/app_images.dart';
import 'package:flutter/material.dart';

class PostModel{
   final String like;
   final String comment;
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String postTitle;
  final String postImage;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  PostModel({
    required this.avatarImage,
    required this.avatarOnPressed,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.postTitle,
    required this.postImage,
    required this.likeOnPressed,
    required this.commentOnPressed,
    required this.shareOnPressed,
    required this.like,
    required this.comment

});

}

List<PostModel> postData=[
  PostModel(
      avatarImage: AppImages.billPic,
      avatarOnPressed: (){},
      name: "Bill Gates",
      time: "12 min ago",
      moreOnPressed: (){},
      postTitle: AllText.billGatesStutas,
      postImage: AppImages.bill_gates,
      likeOnPressed: (){},
      commentOnPressed: (){},
      shareOnPressed: (){},
      like: "1m",
      comment: "100k"
  ),
  PostModel(
      avatarImage: AppImages.jeffPic,
      avatarOnPressed: (){},
      name: "Jeff Bezos",
      time: "1 hour ago",
      moreOnPressed: (){},
      postTitle: AllText.jeffBezosStatus,
      postImage: AppImages.jeffPic,
      likeOnPressed: (){},
      commentOnPressed: (){},
      shareOnPressed: (){},
      like: "2m",
      comment: "122k"
  ),
  PostModel(
      avatarImage: AppImages.elonPic,
      avatarOnPressed: (){},
      name: "Elon Musk",
      time: "30 min ago",
      moreOnPressed: (){},
      postTitle: AllText.elonMuskStatus,
      postImage: AppImages.elonPic,
      likeOnPressed: (){},
      commentOnPressed: (){},
      shareOnPressed: (){},
      like: "3m",
      comment: "200k"
  ),
  PostModel(
      avatarImage: AppImages.markPic,
      avatarOnPressed: (){},
      name: "Mark Zuckerberg",
      time: "45 min ago",
      moreOnPressed: (){},
      postTitle: AllText.markStatus,
      postImage: AppImages.markPic,
      likeOnPressed: (){},
      commentOnPressed: (){},
      shareOnPressed: (){},
      like: "3m",
      comment: "300k"
  ),
];