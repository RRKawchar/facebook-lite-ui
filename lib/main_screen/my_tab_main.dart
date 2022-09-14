import 'package:badges/badges.dart';
import 'package:facebook_lite_ui_app/pages/friend_page.dart';
import 'package:facebook_lite_ui_app/pages/home_page.dart';
import 'package:facebook_lite_ui_app/pages/market_page.dart';
import 'package:facebook_lite_ui_app/pages/message_page.dart';
import 'package:facebook_lite_ui_app/pages/notification_page.dart';
import 'package:facebook_lite_ui_app/pages/video_page.dart';
import 'package:facebook_lite_ui_app/utils/all_text.dart';
import 'package:facebook_lite_ui_app/utils/app_colors.dart';
import 'package:facebook_lite_ui_app/widgets/home/my_drawer.dart';
import 'package:facebook_lite_ui_app/widgets/reuseble_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MyTabMain extends StatefulWidget {
  const MyTabMain({Key? key}) : super(key: key);

  @override
  State<MyTabMain> createState() => _MyTabMainState();
}

class _MyTabMainState extends State<MyTabMain>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  var pages = [
    const HomePage(),
    const FriendPage(),
    const MessagePage(),
    const NotificationPage(),
    const VideoPage(),
    const MarketPage()
  ];

  DateTime pre_backpress = DateTime.now();

  Future<bool> _onWillPop() async {

    if (_tabController!.index == 0) {

      final timegap = DateTime.now().difference(pre_backpress);
      final cantExit = timegap >= const Duration(seconds: 2);
      pre_backpress = DateTime.now();

      if (cantExit) {
        const snack =  SnackBar(
          content:
           Text("Press back again to exit"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
        );
        ScaffoldMessenger.of(context).showSnackBar(snack);
        return false;

      } else {
        await SystemNavigator.pop();
        return true;
      }


    }

    Future.delayed(const Duration(milliseconds: 200), () {
      _tabController!.index = 0;
    });

    return _tabController!.index == 0;
  }

  final _scaffolKey = GlobalKey<ScaffoldState>();

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
    _tabController =
        TabController(length: 6, initialIndex: 0, vsync: this);
    _initBannerId();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffolKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: ReusebleText(
            text: AllText.facebookText,
            color: AppColors.colorBlue.withOpacity(0.8),
            size: 25,
            fontWeight: FontWeight.bold,fontFamily: 'Anton',
          ),
          actions: [
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.colorGray),
              child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: const Icon(
                  Icons.search,
                  color: AppColors.colorBlack,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.colorGray),
              child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: const Icon(
                  Icons.menu,
                  color: AppColors.colorBlack,
                ),
                onPressed: () => _scaffolKey.currentState!.openEndDrawer(),
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Theme.of(context).brightness==Brightness.light?Colors.blueAccent:Colors.blueAccent,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
               Tab(
                icon:  Icon(
                  Icons.home_outlined,color: Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(0.8):Colors.white,
                ),
              ),
               Tab(
                icon:  Icon(Icons.people_outlined, color: Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(0.8):Colors.white,),
              ),
               Tab(
                icon:  Icon(Icons.message_outlined, color: Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(0.8):Colors.white,),
              ),
              Tab(
                icon: Badge(
                  position: BadgePosition.topEnd(top: -20,end: -5),
                  badgeContent: ReusebleText(text: "3",color: Colors.white,size: 16,),
                  child: Icon(
                    Icons.notifications_outlined,
                      color: Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(0.8):Colors.white,
                  ),
                ),
              ),
               Tab(
                icon:  Icon(Icons.video_library_outlined,color: Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(0.8):Colors.white,),
              ),
               Tab(
                icon: Icon(Icons.shopping_bag_outlined, color: Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(0.8):Colors.white,),
              ),
            ],
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          child: const MyDrawer(),
        ),
        body: TabBarView(controller: _tabController, children: pages),
        bottomNavigationBar: isLoadedAd? Container(
          height: bannerAd!.size.height.toDouble(),
          width: bannerAd!.size.width.toDouble(),
          child: AdWidget(ad: bannerAd!,),

        ):SizedBox(),

      ),

    );
  }
}
