import 'package:facebook_lite_ui_app/models/marketPlace_model.dart';
import 'package:facebook_lite_ui_app/utils/app_colors.dart';
import 'package:facebook_lite_ui_app/widgets/reuseble_text.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    final  themevalue=Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(0.8):Colors.white.withOpacity(0.8);
    final  themevalue2=Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(0.8):Colors.black.withOpacity(0.8);
    final  themevalue3=Theme.of(context).brightness==Brightness.light?Colors.white.withOpacity(0.8):Colors.white;
    return Column(
      children: [
        Container(
          margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusebleText(text: "Market place",size: 25,fontWeight: FontWeight.bold,color: themevalue,),
              Row(

                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,color: AppColors.colorGray
                    ),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      tooltip: "Product search here",
                      icon: Icon(Icons.search_outlined,size: 25,color: themevalue2,),
                      onPressed: (){},
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Divider(thickness: 1,color: themevalue,),
         Expanded(

             child: GridView.count(
               crossAxisCount: 2,
               primary: false,
               padding:const EdgeInsets.all(20),
                crossAxisSpacing: 10,
               mainAxisSpacing: 10,
               childAspectRatio: 2/3,
               children: [
                 for(int i=0;i<marketPlaceData.length;i++)...[
                   InkWell(
                     child: Card(
                       color: themevalue3,
                       child: Column(
                         children: [
                           Expanded(
                               child: Image(
                                 image: AssetImage(marketPlaceData[i].photo),
                               )
                           ),
                           ReusebleText(text: marketPlaceData[i].title,size: 18,fontWeight: FontWeight.bold,),
                           ReusebleText(text: marketPlaceData[i].price,size: 14,fontWeight: FontWeight.bold,)
                         ],
                       ),
                     ),
                     onTap: (){
                       print("Clicked Product");
                     },
                   )
                 ]
               ],
             )

         )
      ],
    );
  }
}
