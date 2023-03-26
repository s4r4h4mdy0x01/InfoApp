

import 'package:flutter/material.dart';


class Display extends StatefulWidget {
   Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
     String valuetext="";
     var textController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Field '),),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Text(
            
            valuetext,
          style:  const TextStyle(fontSize: 20),),
         const SizedBox(height: 30,),
          TextFormField(
            controller:textController ,

            onChanged: (value) {
             setState(() {
               valuetext=value;
             });
              
            },
            
            decoration: InputDecoration(
            labelText: 'Enter Text',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
           
          )),
         const SizedBox(height: 20,),
          Container(
            color: Colors.blue,
            width: double.infinity,
            child: TextButton(onPressed: (){
          print(textController.text);
            }, child:  const Text('Enter', style: TextStyle(fontSize: 20,color: Colors.white,),),),
          )
          

        ],
      ),
    );
  }
}