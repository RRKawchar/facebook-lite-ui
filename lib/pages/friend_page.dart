import 'package:facebook_lite_ui_app/models/friend_model.dart';
import 'package:facebook_lite_ui_app/utils/app_colors.dart';
import 'package:facebook_lite_ui_app/widgets/reuseble_text.dart';
import 'package:flutter/material.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusebleText(text: "Friends",size: 24,color: AppColors.colorBlack,),
              Row(
                children: [
                  ContainerWidget1(icon: Icons.person,iconColor: Colors.green, onPressed: (){}),
                  ContainerWidget1(icon: Icons.people,iconColor: Colors.red, onPressed: (){}),

                ],
              )
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: AppColors.colorGray,
        ),

        Expanded(
            child: ListView.builder(
                itemCount: friendData.length,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          backgroundImage:AssetImage(friendData[index].avatar) ,
                        ),
                        title: Text(friendData[index].name),
                        trailing: Wrap(
                          spacing: 10.0,
                          children: [

                            textButtonWidget(text: "Add Friend",
                                textColor: AppColors.backgroundColor,
                                onPressed: (){},
                                backgroundColor:AppColors.colorBlue
                            ),
                            textButtonWidget(text: "Remove",
                                textColor: AppColors.colorBlack,
                                onPressed: (){},
                                backgroundColor:AppColors.colorGray
                            ),

                          ],
                        ),
                        onTap: (){

                          print("Clicked Profile");
                        },
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
class textButtonWidget extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  textButtonWidget({Key? key,required this.text,required this.textColor,required this.onPressed,required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor:backgroundColor,
          padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 10)
      ),
      child: ReusebleText(text: text,size: 18,color:textColor,),
    );
  }
}



class ContainerWidget1 extends StatelessWidget {

  final IconData icon;
  final VoidCallback onPressed;
  Color? iconColor;
   ContainerWidget1({Key? key,required this.icon,required this.onPressed,this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(left: 10.0),
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: AppColors.colorGray),
      child: IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        icon: Icon(
          icon,
          color: iconColor,
        ),
        onPressed:onPressed,
      ),
    );
  }
}

