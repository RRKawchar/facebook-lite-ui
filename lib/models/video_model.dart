
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoModel{
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String videoPostTitle;
  final String? videoPostLink;
  final VoidCallback likeOnpressed;
  final VoidCallback commentOnPressed;
  final VoidCallback sharedOnPressed;

  VideoModel({
    required this.avatarOnPressed,
    required this.avatarImage,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.videoPostTitle,
    this.videoPostLink,
    required this.likeOnpressed,
    required this.commentOnPressed,
    required this.sharedOnPressed,
  });

}

List<VideoModel> videoData=[

  VideoModel(
      avatarOnPressed: (){},
      avatarImage: "assets/image/myPhoto.png",
      name: "Riyazur Rohman Kawchar",
      time: "Just Now",
      moreOnPressed: (){},
      videoPostTitle: "The Bengali Breakup Mashup Remix (2018) | All-Time Hit Songs | Official's Video Song",
      videoPostLink: YoutubePlayer.convertUrlToId(
        "https://youtu.be/BsVn20j0mCI"
      ),
      likeOnpressed: (){print("Liked clicked");},
      commentOnPressed: (){print("Comment clicked");},
      sharedOnPressed: (){print("Share clicked");}
  ),
  VideoModel(
      avatarOnPressed: (){},
      avatarImage: "assets/songImages/ajmir.jpg",
      name: "Md Ajmir Hossain",
      time: "2 days ago",
      moreOnPressed: (){},
      videoPostTitle: "Bengali Love Mashup Version 2 | Best Of Bengali Music Songs | SVF",
      videoPostLink: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=dKS1lp4eAb8"
      ),
      likeOnpressed: (){print("Liked clicked");},
      commentOnPressed: (){print("Comment clicked");},
      sharedOnPressed: (){print("Share clicked");}
  ),
  VideoModel(
      avatarOnPressed: (){},
      avatarImage: "assets/songImages/tanvir.png",
      name: "Md Tanvir ",
      time: "3 days ago",
      moreOnPressed: (){},
      videoPostTitle: "The Bengali Breakup Mashup Remix (2018) | All-Time Hit Songs | Official's Video Song",
      videoPostLink: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=Rkxt7C7sxL8"
      ),
      likeOnpressed: (){print("Liked clicked");},
      commentOnPressed: (){print("Comment clicked");},
      sharedOnPressed: (){print("Share clicked");}
  ),
  VideoModel(
      avatarOnPressed: (){},
      avatarImage: "assets/songImages/rifat.png",
      name: "Md Rifat",
      time: "15 days ago",
      moreOnPressed: (){},
      videoPostTitle: "Heartless Broken 💔 Mashup 2021 | Midnight Memories | Sad Song | Breakup Mashup | Find Out Think",
      videoPostLink: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=wschBwOAhTo"
      ),
      likeOnpressed: (){print("Liked clicked");},
      commentOnPressed: (){print("Comment clicked");},
      sharedOnPressed: (){print("Share clicked");}
  ),
  VideoModel(
      avatarOnPressed: (){},
      avatarImage: "assets/songImages/riaz.png",
      name: "Riaz uddin Ovi",
      time: "Just Now",
      moreOnPressed: (){},
      videoPostTitle: "Best Of Sad Song Mashup | Breakup Mashup 2022 | Find Out Think | Bollywood Song | NonStop Jukebox",
      videoPostLink: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=75a8zkehIzk"
      ),
      likeOnpressed: (){print("Liked clicked");},
      commentOnPressed: (){print("Comment clicked");},
      sharedOnPressed: (){print("Share clicked");}
  ),
];