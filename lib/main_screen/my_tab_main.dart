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

class MyTabMain extends StatefulWidget {
  const MyTabMain({Key? key}) : super(key: key);

  @override
  State<MyTabMain> createState() => _MyTabMainState();
}

class _MyTabMainState extends State<MyTabMain>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  var toptabs = [
    const Tab(
      icon:  Icon(
        Icons.home_outlined,
        color: AppColors.colorBlack,
      ),
    ),
    const Tab(
      icon:  Icon(Icons.people_outlined, color: AppColors.colorBlack),
    ),
    const Tab(
      icon:  Icon(Icons.message_outlined, color: AppColors.colorBlack),
    ),
    Tab(
      icon: Badge(
        position: BadgePosition.topEnd(top: -20,end: -5),
        badgeContent: ReusebleText(text: "3",color: Colors.white,size: 16,),
        child: const Icon(
          Icons.notifications_outlined,
          color: AppColors.colorBlack,
        ),
      ),
    ),
    const Tab(
      icon:  Icon(Icons.video_library_outlined, color: AppColors.colorBlack),
    ),
    const Tab(
      icon: Icon(Icons.shopping_bag_outlined, color: AppColors.colorBlack),
    ),
  ];

  var pages = [
    const HomePage(),
    const FriendPage(),
    const MessagePage(),
    const NotificationPage(),
    const VideoPage(),
    const MarketPage()
  ];

  Future<bool> _onWillPop() async {
    if (_tabController!.index == 0) {
      await SystemNavigator.pop();
    }

    Future.delayed(const Duration(milliseconds: 200), () {
      _tabController!.index = 0;
    });

    return _tabController!.index == 0;
  }

  final _scaffolKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _tabController =
        TabController(length: toptabs.length, initialIndex: 0, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffolKey,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
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
            indicatorColor: AppColors.colorBlack,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: toptabs,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: const MyDrawer(),
        ),
        body: TabBarView(controller: _tabController, children: pages),
      ),
    );
  }
}
