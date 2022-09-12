
import 'package:facebook_lite_ui_app/models/story_models.dart';
import 'package:facebook_lite_ui_app/utils/app_images.dart';
import 'package:facebook_lite_ui_app/widgets/reuseble_text.dart';
import 'package:flutter/material.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10.0,
          children: [
            Container(
              height: 255,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20)
              ),
              child:Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap:(){

                    },
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 150,
                          margin:const EdgeInsets.only(bottom: 40.0),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage(
                                AppImages.myPic
                              ),fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        ReusebleText(text: "Add to Story",size: 22,fontWeight: FontWeight.bold,)
                      ],
                    ),
                  ),
                  Positioned(
                   bottom: 70,
                      left: 45,
                      child: IconButton(
                        onPressed: (){},
                        icon:const Icon(Icons.add_circle_rounded,size: 40,color: Colors.blue,),
                      )

                  ),



                ],
              ) ,
            ),

             for(var i=0;i<storyData.length;i++)...[

                ReusableContainerClass(image: storyData[i].images, text: storyData[i].name, onTap: storyData[i].onTap),

             ]




          ],
        ),

      ),

    );
  }
}
class ReusableContainerClass extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onTap;
   ReusableContainerClass({Key? key,required this.image,required this.text,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255,
      width: 150,
      child: Stack(
        fit: StackFit.expand,
        children: [
          GestureDetector(
            onTap: onTap,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image:  AssetImage(
                 image,
                ),fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: ReusebleText(text:text,color: Colors.white,size: 18,fontWeight: FontWeight.bold,)

          ),
        ],
      ),
    );
  }
}
