


import 'package:flutter/material.dart';

Widget defaultButton({
   double width =double.infinity,
   Color background= Colors.greenAccent ,
  required Function? f1,
  required String text,

})=>  Container(
  width: width,
  color: background,

  child: MaterialButton(
    onPressed: (){
      f1!();
    },
    child: Text(
      text,
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ),
);
Widget defaultFormField ( {
  required TextEditingController controller,
  required TextInputType type,
  required Function onSubmit,
  required Function onChange,
  required Function? v,
  required String label,
  required IconData prefix,
  IconData? suffix,
   Function? suffixPressed,
  Function? onTab,
  bool  ispassword = false,
  bool isClickable =true,
})=>TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: ispassword,
  enabled: isClickable,
  onFieldSubmitted: (value){
    onSubmit(value);
  },
  onChanged: (value){
    onChange(value);
  },
    validator:(String? value){return v!(value);},
  onTap: (){
    onTab!();
  },

  style: TextStyle(fontSize: 25.0),
  decoration: InputDecoration(
    labelText: label,

    prefixIcon: Icon(prefix),
    suffixIcon: suffix!= null ? Icon (suffix,)  : null,

    border:OutlineInputBorder(),
  ),
);
Widget buildTasksItem()=> Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 40.0,
        backgroundColor: Colors.purpleAccent,
        child: Text(

          '02.00 pm ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      SizedBox(
        width:20.0 ,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Task Title',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '2 april 2021',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ],
  ),
);