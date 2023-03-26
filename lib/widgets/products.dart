import 'package:flutter/material.dart';
import 'package:my_info/Colors/color.dart';
import 'package:my_info/widgets/row_cir.dart';


class Products extends StatelessWidget {
   Products({super.key ,required this.header, required this.description});
 late CreateRow  header;
 String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header,
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: SizedBox(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  'Description :',
                  style: TextStyle(color: isDark? widgitDark:widgitSunny),
                ),
                SizedBox(
                  width: 220,
                  height: 300,
                  child: Text(
                  description,
                    style:   TextStyle(color: isDark? Colors.white:Colors.black87,),
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        )

      ],
    );
  }
}