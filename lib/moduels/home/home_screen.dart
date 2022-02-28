
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: Icon(
         Icons.menu,
       ),
       title: Text(
         'FirstApp',
         style: TextStyle(
           fontSize: 30.0,
           fontWeight: FontWeight.bold,
         ),
       ),
       actions: [
         IconButton(
             onPressed: onpress,
             icon: Icon(
           Icons.notifications,
         )),
         IconButton(
             onPressed: (){
               print('hello');
             },
             icon: Icon(
               Icons.notifications,
             )
         ),

       ],
       centerTitle: true,
       backgroundColor: Colors.green,
     ),
     body:SingleChildScrollView(
       scrollDirection:Axis.horizontal,
       child: Row(

         children: [

           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Container(
                   decoration:BoxDecoration(
                     border: Border.all(
                       color:Colors.black38,
                       width: 10,
                     ),

                   ) ,
                   child: Stack(

                     alignment: Alignment.bottomCenter,
                     children: [
                       Image(
                         image: NetworkImage('https://miro.medium.com/max/1400/1*Ot8MGVCiZSZc0wGWJ0-eMg.png',

                       ),
                         height: 150.0,
                         width: 150.0,
                         fit: BoxFit.cover,
                       ),
                       Container(
                         alignment: Alignment.center,

                         width: 150.0,

                         color: Colors.black.withOpacity(.7),
                         padding: EdgeInsets.symmetric(
                         vertical: 5.0,
                         ),

                         child: Text(
                             'Flowers',
                           style:TextStyle(
                             fontSize: 25.0,
                             color: Colors.white,
                             fontWeight: FontWeight.bold,

                           ),
                         ),
                       ),
                     ],
                   ),
                 ),

               ),

             ],
           ),
           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Container(
                   decoration:BoxDecoration(
                     border: Border.all(
                       color:Colors.black38,
                       width: 10,
                     ),

                   ) ,
                   child: Stack(

                     alignment: Alignment.bottomCenter,
                     children: [
                       Image(
                         image: NetworkImage('https://miro.medium.com/max/1400/1*Ot8MGVCiZSZc0wGWJ0-eMg.png',

                         ),
                         height: 150.0,
                         width: 150.0,
                         fit: BoxFit.cover,
                       ),
                       Container(
                         alignment: Alignment.center,

                         width: 150.0,

                         color: Colors.black.withOpacity(.7),
                         padding: EdgeInsets.symmetric(
                           vertical: 5.0,
                         ),

                         child: Text(
                           'Flowers',
                           style:TextStyle(
                             fontSize: 25.0,
                             color: Colors.white,
                             fontWeight: FontWeight.bold,

                           ),
                         ),
                       ),
                     ],
                   ),
                 ),

               ),

             ],
           ),
         ],
       ),

     ),


         );

  }
}
onpress(){
  print('button pressed');
}
