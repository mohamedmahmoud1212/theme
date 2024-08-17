import 'package:flutter/material.dart';
import 'package:reactive_theme/reactive_theme.dart';
import 'package:theme/shared/sharedpre.dart';
class theme extends StatefulWidget {
  const theme({super.key});

  @override
  State<theme> createState() => _themeState();
}

class _themeState extends State<theme> {
  var cache = CacheHelper();
  var result1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // InkWell(
          //   onTap: (){
          //     setState(() {
          //       var res1 = cache.getData(key: "first");
          //       result1 = res1;
          //
          //       cache.setData(key: "first", value: ReactiveSwitch(), );
          //
          //     });
          //   },
          // ),
       InkWell(child: ReactiveSwitch(),onTap: (){

       },),
        Center(child: ReactiveThemeBtn(),),
        ReactiveMode.isDarkMode(context)
            ? const Text('is darkmode')
            : const Text('is not darkmode changed'),

      ],),
    );
  }
}
