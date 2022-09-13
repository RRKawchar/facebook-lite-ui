import 'package:facebook_lite_ui_app/main_screen/my_tab_main.dart';
import 'package:facebook_lite_ui_app/provider/dart_theme_provider.dart';
import 'package:facebook_lite_ui_app/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  DarkThemeProvider themeChangeProvider=DarkThemeProvider();

  void getCurrentAppTheme()async{
    themeChangeProvider.darkTheme=await themeChangeProvider.themeSharedPreference.getTheme();
  }
  @override
  void initState() {
   getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

   return MultiProvider(
      providers: [
        ChangeNotifierProvider(

            create: (context,){
              return themeChangeProvider;
            }
        ),

      ],
      child:Consumer<DarkThemeProvider>(
          builder: (context, snapshot,child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme:Styles.themeData(themeChangeProvider.darkTheme, context),
              home: MyTabMain(),
            );
          }
      ),
    );


  }
}

