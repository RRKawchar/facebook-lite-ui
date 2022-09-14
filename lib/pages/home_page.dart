
import 'package:facebook_lite_ui_app/widgets/home/menubar.dart';
import 'package:facebook_lite_ui_app/widgets/home/post.dart';
import 'package:facebook_lite_ui_app/widgets/home/postbar.dart';
import 'package:facebook_lite_ui_app/widgets/home/storybar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 8.0),
          child: ListView(
            children: const [
              PostBar(),
              Divider(thickness: 1,color: Colors.black12,),
              MenuBar(),
              Divider(thickness: 4,color: Colors.black12,),
              StoryBar(),
              Divider(thickness: 4,color: Colors.black12,),
              Post()

            ],
          ),
        );



  }
}
