import 'package:facebook_lite_ui_app/models/message_models.dart';
import 'package:facebook_lite_ui_app/utils/app_colors.dart';
import 'package:facebook_lite_ui_app/widgets/reuseble_text.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusebleText(text: "Message",size: 22,color: AppColors.colorBlack,),
              Row(
                children: [
                  MessageContainer(icon: Icons.message_outlined, color: AppColors.colorGreen, Onpressed: (){}),
                  MessageContainer(icon: Icons.settings, color: AppColors.colorBlack.withOpacity(0.5), Onpressed: (){}),

                ],
              )
            ],
          ),
        ),
        Divider(thickness: 1,color: AppColors.colorGray,),
        Expanded(
            child: ListView.builder(
                itemCount: messageData.length,
                itemBuilder: (context,index){

                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: AppColors.colorBlue.withOpacity(0.4),
                          backgroundImage: AssetImage(messageData[index].avatar),
                        ),
                        title: ReusebleText(text: messageData[index].name,size: 20,),
                        subtitle: ReusebleText(text: messageData[index].time,size: 12,),
                        trailing: IconButton(
                          onPressed: (){
                          },
                          icon: messageData[index].status,
                        ),
                      ),

                    ],
                  );
                }

            )

        )
      ],
    );
  }
}
class MessageContainer extends StatelessWidget {
  final IconData icon;
  final VoidCallback Onpressed;
  final Color color;
  MessageContainer({Key? key,required this.icon,required this.color,required this.Onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(left: 10.0),
      decoration: const BoxDecoration(
        color: AppColors.colorGray,
        shape:BoxShape.circle,

      ),
      child: IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        icon:Icon(
          icon,color: color,
        ),
        onPressed: Onpressed
      ),
    );
  }
}

