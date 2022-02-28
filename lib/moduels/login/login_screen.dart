
import 'package:coursewael/moduels/home/home_screen.dart';
import 'package:coursewael/shared/compenents/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   var emailcontroller = TextEditingController();

   var passwordcontroller = TextEditingController();

   var fk =GlobalKey<FormState>();

   bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(

            child: Form(
               key:fk,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                 defaultFormField(
                   controller: emailcontroller,
                     type: TextInputType.emailAddress,
                     onSubmit: (value){
                   print(value);
                   },
                     onChange: (value){
                       print(value);
                     },
                     v: (String? value)
                    {
                      if(value!.isEmpty)
                      {
                        return'The Email  Cant Be null';
                      }else {
                        return null;
                      }
                    },
                     label: 'Email',
                     prefix: Icons.email,

                 ) ,
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                      controller: passwordcontroller,
                      type: TextInputType.visiblePassword,
                      onSubmit: (value){
                        print(value);
                      },
                      onChange: (value){
                        print(value);
                      },
                      v: (String? value)
                      {
                        if(value!.isEmpty)
                        {
                          return'The Password  Cant Be null';
                        }else {
                          return null;
                        }
                      },
                      label: 'Password',
                      prefix: Icons.lock,
                      suffix: Icons.remove_red_eye,
                      ispassword: true,


                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                defaultButton(
                  width: double.infinity,
                    background: Colors.lightGreen,
                    f1: (){
                    if(fk.currentState!.validate())
                      {
                      print(emailcontroller!.text);
                      print(passwordcontroller!.text);
                      }
                    },
                    text: 'Login',

                ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    width: double.infinity,
                    background: Colors.lightGreen,
                    f1: (){
                      print(emailcontroller!.text);
                      print(passwordcontroller!.text);
                    },
                    text: 'Regester',

                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  Row(
                    children: [
                      Text(
                          'Dont have account',
                      ),
                      TextButton(
                          onPressed:(){} ,
                          child: Text(
                            'Regester Now',
                          ),
                      ),

                    ],
                  ),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
