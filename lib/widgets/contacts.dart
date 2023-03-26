

import 'package:flutter/material.dart';
import 'package:my_info/Colors/color.dart';
import 'package:my_info/screen/my_main_screen.dart';

class Contacts extends StatelessWidget {
    Contacts({super.key  ,required this.icon, required this.text});
 IconData icon;
 String text;
      Color color= isDark? widgitDark:widgitSunny;
      
  @override
  Widget build(BuildContext context) {
    return  Container(
      
                padding:  const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  
                  border: Border.all(color: color),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Icon( icon,
                    size: 25,
                    color:color ,
                    ),
                    const SizedBox(width: 20,),
                    Text(text,
                    style:  TextStyle(color:color,
                    fontSize: 16,
                    fontWeight:  FontWeight.bold
                    ),
                    
                    ),
                   ],
                ),
              )
;
  }
}