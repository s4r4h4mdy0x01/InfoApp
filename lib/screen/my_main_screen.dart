import 'package:flutter/material.dart';
import 'package:my_info/Colors/color.dart';
import 'package:my_info/widgets/contacts.dart';
import 'package:my_info/widgets/products.dart';
import 'package:my_info/widgets/row_cir.dart';




class InfoApp extends StatefulWidget {
    InfoApp({super.key});
static const IconData facebook = IconData(0xe255, fontFamily: 'MaterialIcons');
static const IconData telegram = IconData(0xf0586, fontFamily: 'MaterialIcons');

  @override
  State<InfoApp> createState() => _InfoAppState();
}

class _InfoAppState extends State<InfoApp> {
 //bool isDark = true;

 var my_icon = Icons.wb_sunny;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: isDark? colorDark:colorSunny,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
                physics: const BouncingScrollPhysics(),
                 
              children: [
                IconButton(
                  onPressed: (){
                    setState(() {
                      if(my_icon==Icons.wb_sunny){
                         my_icon = Icons.brightness_2;
                         isDark=true;
                      }
                      else {
                  my_icon = Icons.wb_sunny;
                  isDark=false;
                  }
                    });
                  },
                  icon: Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(10),
                             
                    child: Icon(my_icon,
                    size:30 ,
                    color: isDark? colorIconDark:colorIconSunny,
                    ),
                  ),
                ),
              const  SizedBox(height: 15,),
               CreateRow(url: 'https://e7.pngegg.com/pngimages/134/36/png-clipart-anime-manga-fan-art-drawing-anime-girl-mammal-cg-artwork.png',text1: 'Sara Hamdy',radius: 60.0,fontSize:30 ,text2: 'Flutter Developer'),
                my_text('Contacts :'),
                Contacts(icon: Icons.mail,text: 'sara101hamdy@gmail.com',),
               const SizedBox(height: 20,),
                 Contacts(icon: Icons.facebook ,text: 'https://www.facebook.com/',),
                   const SizedBox(height: 20,),
                 Contacts(icon: Icons.telegram ,text: '@sara20hamdy',),
                   const SizedBox(height: 20,),
                   my_text('Products :'),
      
                Products(header: CreateRow(url:'https://user-images.githubusercontent.com/39466067/93390563-8238c300-f833-11ea-91ec-1ad23fedb8d1.png' , radius: 40,
                text1: 'BMI App',text2: 'Creating by  Flutter' ,), 
                description: 'This project is my implementation of the BMI calculator app built while following "The Complete Flutter Development Bootcamp using Dart" '),
                 const SizedBox(height: 15,),
                 Products(header: CreateRow(url:'https://i.ytimg.com/vi/PMcXhYmFFN4/maxresdefault.jpg' , radius: 40,
                text1: 'Login App',text2: 'Creating by  Flutter' ,), 
                description: 'Flutter Login, Register Page UI TutorialThis is our first Flutter UI speed code tutorial, in this video we will create Minimal Login Page '),
               
      
      
              
      
              ],
            
      
      
            ),
          ),
        ),
      ),
          ) ;
  }

  Widget my_text(String title)=> Padding(
    padding: const EdgeInsets.symmetric(vertical: 20.0),
    child: Text(
      title,
       style:   TextStyle(
                fontWeight: FontWeight.w700, fontSize: 25,  color: isDark? Colors.white:Colors.black87,),
                
    ),
  );
}