import 'package:facebook_lite_ui_app/models/video_model.dart';
import 'package:facebook_lite_ui_app/utils/app_icons.dart';
import 'package:facebook_lite_ui_app/widgets/reuseble_text.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusebleText(text: "Videos",size: 30,),
              Container(
                child: Tooltip(
                  message: "Play Video Automatically",
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value){
                      setState(() {
                       isSwitched=value;
                       print(isSwitched);

                      });

                    },
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(thickness: 1,color: Colors.black26,),
        Expanded(

            child: ListView.builder(
                itemCount: videoData.length,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            iconSize: 50,
                              onPressed:videoData[index].avatarOnPressed
                              , icon: CircleAvatar(
                               radius: 80.0,
                            backgroundImage: AssetImage(
                              videoData[index].avatarImage,
                            ),
                          )
                          ),
                          Expanded(

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      ReusebleText(text: videoData[index].name,size: 20,color: Colors.black,fontWeight: FontWeight.bold,),
                                      TextButton(
                                          onPressed: (){},
                                          child: ReusebleText(text: "Follow",size: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent,)
                                      )
                                    ],
                                  ),
                                  Wrap(
                                    spacing: 10,
                                    children: [
                                      ReusebleText(text: videoData[index].time,size: 18,),
                                      Icon(Icons.public)
                                    ],
                                  )
                                ],
                              )

                          ),
                          IconButton(
                              onPressed: videoData[index].moreOnPressed,
                              icon: Icon(Icons.more_horiz_outlined)
                          )
                        ],
                      ),
                      Container(
                        margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             YoutubePlayerControllerProvider(

                                 controller: YoutubePlayerController(

                                   params: YoutubePlayerParams(
                                     mute: false,
                                     autoPlay: false,
                                     showControls: true,
                                     showFullscreenButton: true,

                                   ),


                                 ),
                                 child: YoutubePlayerIFrame(
                                   aspectRatio: 16/9,
                                 )
                             ),
                            Padding(

                                padding: EdgeInsets.all(8.0),
                              child: ReusebleText(text: videoData[index].videoPostTitle,size: 18,color: Colors.black,),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              IconButton(onPressed: videoData[index].likeOnpressed,
                                  icon: AppIcons.likeIcon),
                              ReusebleText(text: "12")
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(onPressed: videoData[index].commentOnPressed,
                                  icon: AppIcons.messageIcon),
                              ReusebleText(text: "134")
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(onPressed: videoData[index].sharedOnPressed,
                                  icon: AppIcons.shareIcon),

                            ],
                          ),

                        ],
                      )
                    ],
                  );

                }

            )

        )
      ],
    );
  }
}
