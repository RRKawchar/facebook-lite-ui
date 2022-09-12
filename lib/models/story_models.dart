import 'package:facebook_lite_ui_app/utils/app_images.dart';
import 'package:flutter/material.dart';

class StoryModel{

  final VoidCallback onTap;
  final String images;
  final String name;

  StoryModel({required this.images,required this.name,required this.onTap});



}
  List<StoryModel> storyData=[
    StoryModel(
        images: AppImages.billPic,
        name: "Bill Gates",
        onTap: (){}
    ),
    StoryModel(
        images: AppImages.elonPic,
        name: "Elon Musk",
        onTap: (){}
    ),
    StoryModel(
        images: AppImages.jeffPic,
        name: "Jeff Bezos",
        onTap: (){}
    ),
    StoryModel(
        images: AppImages.markPic,
        name: "Mark Zuckerberg",
        onTap: (){}
    ),
  ];



