

import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
    Contacts({super.key  ,required this.icon, required this.text});
 IconData icon;
 String text;
  @override
  Widget build(BuildContext context) {
    return  Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Icon( icon,
                    size: 25,
                    color:Colors.grey ,
                    ),
                    const SizedBox(width: 20,),
                    Text(text,
                    style:   const TextStyle(color: Colors.grey,
                    fontSize: 10,
                    fontWeight:  FontWeight.bold
                    ),
                    
                    ),
                   ],
                ),
              )
;
  }
}