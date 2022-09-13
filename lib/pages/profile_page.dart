import 'package:facebook_lite_ui_app/utils/app_colors.dart';
import 'package:facebook_lite_ui_app/widgets/home/menubar.dart';
import 'package:facebook_lite_ui_app/widgets/home/post.dart';
import 'package:facebook_lite_ui_app/widgets/home/postbar.dart';
import 'package:facebook_lite_ui_app/widgets/reuseble_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  themevalue=Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(0.8):Colors.white.withOpacity(0.8);
    return Scaffold(

      appBar: AppBar(
        title: Row(
          children: [
            // IconButton(
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            //   icon: const Icon(
            //     Icons.arrow_back,
            //     color: AppColors.colorBlack,
            //   ),
            //   splashColor: Colors.transparent,
            //   highlightColor: Colors.transparent,
            // ),
            ReusebleText(text: "Riyazur Rohman Kawchar",color: themevalue,)
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 255,
            width: 400,
            child: Stack(
              fit: StackFit.expand,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        width: 400,
                        margin: const EdgeInsets.only(top: 10.0),
                        child: const ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                          child: Image(
                            image: AssetImage("assets/image/myPhoto2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: 10.0,
                    left: 140,
                    child: Container(
                      height: 120,
                      width: 120,
                      child: const ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        child: Image(
                          image: AssetImage('assets/image/myPhoto.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: ReusebleText(
              text: "Riyazur Rohman Kawchar",color: themevalue,
              size: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
         const SizedBox(height: 10,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        Icon(Icons.add_circle),
                        ReusebleText(text: "Add to Story")
                      ],
                    )
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.edit,color: Colors.black,),
                      ReusebleText(text: "Edit profile")
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey[400]
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
              ],
            ),
          ),
          Column(
            children: [
              profileContainer(icon: Icons.book, text: "Studied at  DIU"),
              profileContainer(icon: Icons.gamepad, text: "Single"),
              profileContainer(icon: Icons.info, text: "About"),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Friends'),
                    TextButton(onPressed: () => {}, child: Text('Find Friends'))
                  ],
                ),
              ),
              Divider(thickness: 1,color: Colors.black38,),
              PostBar(),
              MenuBar(),
              Post(),
            ],
          )
        ],
      ),
    );
  }
}
class profileContainer extends StatelessWidget {
   VoidCallback? onpressed;
   IconData? icon;
  final String text;
   String? buttonText;

  profileContainer({Key? key,this.icon,required this.text,this.onpressed,this.buttonText=""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  themevalue=Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(0.8):Colors.white.withOpacity(0.8);
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
      child: Row(
        children: [
          Icon(icon),
          ReusebleText(text: text,color: themevalue,size: 18,fontWeight: FontWeight.bold,),
          TextButton(
              onPressed:onpressed,
              child: Text(buttonText!),
          )
        ],
      ),
    );
  }
}

