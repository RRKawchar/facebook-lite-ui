import 'package:facebook_lite_ui_app/models/post_model.dart';
import 'package:facebook_lite_ui_app/utils/app_icons.dart';
import 'package:facebook_lite_ui_app/widgets/reuseble_text.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {

  BannerAd? bannerAd;
  bool isLoadedAd=false;

  _initBannerId(){
    bannerAd=BannerAd(
        size: AdSize.banner,
        adUnitId:"ca-app-pub-9545089282892051/2054710598",
        listener: BannerAdListener(
            onAdLoaded: (ad){
              setState(() {
                isLoadedAd=true;
              });
            },
            onAdFailedToLoad: (ad,error){

            }
        ),
        request: AdRequest()
    );
    bannerAd!.load();

  }

  @override
  void initState() {
    _initBannerId();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final  themevalue=Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(0.8):Colors.white.withOpacity(0.8);
    return Container(
      child: Column(
        children: [
          for (var i = 0; i < postData.length; i++) ...[
            Row(
              children: [
                IconButton(
                    iconSize: 50,
                    onPressed: () {},
                    icon: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(postData[i].avatarImage),
                    )),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusebleText(
                        text: postData[i].name,color:themevalue,
                        size: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      Wrap(
                        spacing: 10.0,
                        children: [
                          ReusebleText(text: postData[i].time,color: themevalue),
                          const Icon(
                            Icons.public,
                            size: 18,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                IconButton(
                    iconSize: 35,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz_outlined,
                    ))
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ReusebleText(
                      text: postData[i].postTitle,color: themevalue,
                      size: 20,
                    ),
                  ),
                  Container(
                    height: 350,
                    width: double.maxFinite,
                    child: Image(
                      image: AssetImage(
                        postData[i].postImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: postData[i].likeOnPressed,
                      icon: AppIcons.likeIcon,
                    ),
                    ReusebleText(
                      text: postData[i].like,color: themevalue,
                      size: 14,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: postData[i].commentOnPressed,
                      icon: AppIcons.messageIcon,
                    ),
                    ReusebleText(
                      text: postData[i].comment,color: themevalue,
                      size: 14,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: postData[i].shareOnPressed,
                      icon: AppIcons.shareIcon,
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 4,
            ),
            //
          ],
        ],
      ),
    );
  }
}
