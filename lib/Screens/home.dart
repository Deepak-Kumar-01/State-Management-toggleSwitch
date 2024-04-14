import 'package:darklightmode/modals/DarkModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode=Provider.of<DarkModel>(context).isDark;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Home",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          Center(
            child: Text("Default light mode"),
          ),
          Text("Turn off to switch into dark mode"),
          Switch(value: isDarkMode, onChanged: (bool value){
            print("Clicked $value");


          }),

        ],
      ),
    );;
  }
}
