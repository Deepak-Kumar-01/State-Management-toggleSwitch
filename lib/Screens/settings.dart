import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../modals/DarkModel.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode=Provider.of<DarkModel>(context).isDark;
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Settings",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Center(
            child: Text("Default light mode"),
          ),
          Text("Turn off to switch into dark mode"),
          Switch(value: isDarkMode, onChanged: (bool value){
           print("Inside setting $value");
           final toggle=Provider.of<DarkModel>(context,listen: false).toggle();
           print(toggle);
          })
        ],
      ),
    );;
  }
}
