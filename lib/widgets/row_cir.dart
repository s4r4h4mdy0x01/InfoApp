

import 'package:flutter/material.dart';
import 'package:my_info/Colors/color.dart';

class CreateRow extends StatelessWidget {
   CreateRow({super.key, required this.url, required this.text1, this.radius, this.fontSize , required this.text2});
  double?  radius=40;
  double? fontSize=20;
    String url;
  String text1;
  String text2;

  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                CircleAvatar(
                    radius: radius,
                    backgroundImage: NetworkImage(url),
        
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(text1,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                       color: isDark? Colors.white:Colors.black87,
        
        
                    ),
                    ),
                      Text(text2,
                      maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      color: isDark? widgitDark:widgitSunny,
                      
                      
        
                    ),
                    ),
                  ],
                  ),
                  
        
                ],
              );
  }
}