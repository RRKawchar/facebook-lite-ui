import 'package:facebook_lite_ui_app/widgets/all_text.dart';
import 'package:facebook_lite_ui_app/widgets/app_colors.dart';
import 'package:facebook_lite_ui_app/widgets/reuseble_text.dart';
import 'package:flutter/material.dart';

class MyTabMain extends StatefulWidget {
  const MyTabMain({Key? key}) : super(key: key);

  @override
  State<MyTabMain> createState() => _MyTabMainState();
}

class _MyTabMainState extends State<MyTabMain>with SingleTickerProviderStateMixin {
 TabController? _tabController;
  var toptabs=const[

    Tab(icon: Icon(Icons.home_outlined,color: AppColors.colorBlack,),),
    Tab(icon: Icon(Icons.people_outlined,color: AppColors.colorBlack),),
    Tab(icon: Icon(Icons.message_outlined,color: AppColors.colorBlack),),
    Tab(icon: Icon(Icons.notifications_outlined,color: AppColors.colorBlack),),
    Tab(icon: Icon(Icons.video_library_outlined,color: AppColors.colorBlack),),
    Tab(icon: Icon(Icons.shopping_bag_outlined,color: AppColors.colorBlack),),

  ];
 @override
  void initState() {
    _tabController=TabController(length: toptabs.length,initialIndex: 0, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar:  AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: ReusebleText(text: AllText.facebookText,color: AppColors.colorBlue.withOpacity(0.8),fontFamily: 'Anton',size: 25,fontWeight: FontWeight.bold,),
        actions: [
           Container(

             decoration: BoxDecoration(
               shape: BoxShape.circle,
               color: AppColors.colorGray
             ),
             child: IconButton(
               splashColor: Colors.transparent,
               highlightColor: Colors.transparent,
               icon: Icon(Icons.search,color: AppColors.colorBlack,),
               onPressed: (){

               },
             ),
           ),
          Container(
         margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.colorGray
            ),
            child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              icon: Icon(Icons.menu,color: AppColors.colorBlack,),
              onPressed: (){

              },
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: AppColors.colorBlack,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs:toptabs,
        ),
      ),
    );
  }
}
