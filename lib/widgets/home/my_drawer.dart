import 'package:facebook_lite_ui_app/pages/friend_page.dart';
import 'package:facebook_lite_ui_app/pages/market_page.dart';
import 'package:facebook_lite_ui_app/pages/message_page.dart';
import 'package:facebook_lite_ui_app/pages/profile_page.dart';
import 'package:facebook_lite_ui_app/pages/video_page.dart';
import 'package:facebook_lite_ui_app/provider/dart_theme_provider.dart';
import 'package:facebook_lite_ui_app/utils/app_colors.dart';
import 'package:facebook_lite_ui_app/widgets/reuseble_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final  themevalue=Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(0.8):Colors.white.withOpacity(0.8);
    final themeChange=Provider.of<DarkThemeProvider>(context);
    return Drawer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: themevalue,
                      size: 30,
                    )),
                ReusebleText(
                  text: "Menu",color: themevalue,
                  size: 30,
                ),
                Container(
                  child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon:  Icon(Icons.search,color: Colors.black,),
                    onPressed: () {},
                  ),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.colorGray),
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/image/myPhoto.png'),
              ),
              title: ReusebleText(
                text: "Riyazur Rohman Kawchar",color: themevalue,
                size: 20,
              ),
              subtitle: ReusebleText(
                text: "View your profile",color: themevalue,
                size: 15,
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>ProfilePage()));
              },
            ),
            Divider(
              thickness: 1,
              color: themevalue,
            ),

             ListTile(
               leading: Icon(Icons.dark_mode,color: Colors.blue,),
               title: ReusebleText(text: "Theme ",color: themevalue,),
               trailing: Switch(
                 value:themeChange.darkTheme,
                 onChanged: (value){
                     setState(() {
                      themeChange.darkTheme=value;

                     });
                 },
               ),
             ),
            listTileWidget(icon: Icons.coronavirus_rounded, iconColor: Colors.red, title: "Covid-19 Information Center", textColor:themevalue, onTap: (){
              print("Clicked Covid icon");
            }, size: 20),

            listTileWidget(icon: Icons.message_outlined, iconColor: Colors.green, title: "Message", textColor: themevalue, onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Material(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: MessagePage(),
                ),
              )));
            }, size: 20),
            listTileWidget(icon: Icons.group, iconColor: Colors.red, title: "Groups", textColor: themevalue, onTap: (){
              print("Clicked groups icon");
            }, size: 20),
            listTileWidget(icon: Icons.shopping_bag, iconColor: Colors.blueAccent, title: "Market Place", textColor: themevalue, onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Material(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: MarketPage(),
                ),
              )));
            }, size: 20),
            listTileWidget(icon: Icons.people, iconColor: Colors.deepPurple, title: "Friends", textColor: themevalue, onTap: (){
              print("Clicked Covid icon");
            }, size: 20),
            listTileWidget(icon: Icons.video_label, iconColor: Colors.blue, title: "Videos", textColor: themevalue, onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Material(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: VideoPage(),
                ),
              )));
            }, size: 20),
            listTileWidget(icon: Icons.pages, iconColor: Colors.red, title: "Pages", textColor: themevalue, onTap: (){
              print("Clicked pages icon");
            }, size: 20),
            listTileWidget(icon: Icons.settings, iconColor: Colors.grey, title: "Settings", textColor: themevalue, onTap: (){
              print("Clicked Covid icon");
            }, size: 20),
            listTileWidget(icon: Icons.privacy_tip, iconColor: Colors.blueGrey, title: "Privacy Policy", textColor: themevalue, onTap: (){
              print("Clicked Covid icon");
            }, size: 20),
            listTileWidget(icon: Icons.help, iconColor: Colors.grey, title: "Help Center", textColor: themevalue, onTap: (){
              print("Clicked help center icon");
            }, size: 20),
            listTileWidget(icon: Icons.book, iconColor: Colors.green, title: "About", textColor: themevalue, onTap: (){
              print("Clicked About icon");
            }, size: 20),
            listTileWidget(icon: Icons.logout, iconColor: Colors.red, title: "LogOut", textColor: themevalue, onTap: (){
              print("Clicked logout icon");
            }, size: 20),

          ],
        ))
      ],
    ));
  }

  // Widget listTileWidget(
  //   IconData icon,
  //   Color textColor,
  //   Color iconColor,
  //   String title,
  //   VoidCallback onTap,
  //   double size,
  // ) {
  //   return ListTile(
  //       leading: Icon(
  //         icon,
  //         color: iconColor,
  //       ),
  //       title: Text(
  //          title,style: TextStyle(color: textColor,fontSize: size),
  //
  //       ),
  //       onTap: onTap);
  // }
}

class listTileWidget extends StatelessWidget {
     final IconData icon;
     final  Color textColor;
     final Color iconColor;
     final String title;
     final VoidCallback onTap;
      final double size;

   listTileWidget({Key? key,required this.icon,required this.iconColor,required this.title,required this.textColor,required this.onTap,required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          icon,
          color: iconColor,
        ),
        title: Text(
          title,style: TextStyle(color: textColor,fontSize: size),

        ),
        onTap: onTap);
  }
}


