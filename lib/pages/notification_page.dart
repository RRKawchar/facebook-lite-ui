import 'package:facebook_lite_ui_app/models/message_models.dart';
import 'package:facebook_lite_ui_app/utils/app_colors.dart';
import 'package:facebook_lite_ui_app/widgets/reuseble_text.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    final  themevalue=Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(0.8):Colors.white.withOpacity(0.8);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusebleText(text: "Notifications",size: 30,color:themevalue ,),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.colorGray
                ),
                child: IconButton(
                  tooltip: "Mark all notification as read",
                  icon: Icon(Icons.check_circle_outline,color: Colors.green,),
                  onPressed: (){

                  },
                ),
              )
            ],
          ),
        ),
       const Divider(thickness: 1,color: AppColors.colorGray,),
        Expanded(

            child: ListView.builder(
              itemCount: messageData.length,
                itemBuilder: (context,index){

                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        backgroundImage: AssetImage(messageData[index].avatar),
                      ),
                      title: ReusebleText(
                        text: messageData[index].name,color: themevalue,
                      ),
                      subtitle: ReusebleText(text: messageData[index].time,size: 12,color: themevalue,),
                      trailing: Icon(Icons.more_vert_outlined,size: 25,),
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
