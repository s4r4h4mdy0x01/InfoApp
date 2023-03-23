import 'package:flutter/material.dart';
import 'package:my_info/row_cir.dart';


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
               const Text(
                  'Description :',
                  style: TextStyle(color: Colors.white60),
                ),
                SizedBox(
                  width: 220,
                  height: 300,
                  child: Text(
                  description,
                    style:  const TextStyle(color: Colors.white),
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