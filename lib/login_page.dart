import 'dart:math';

import 'package:flutter/material.dart';
import 'package:foodorich_customer_app/main.dart';

class login_page extends StatefulWidget{
  const login_page({super.key});
   

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  TextEditingController PhoneNumber= TextEditingController();
  TextEditingController Otp= TextEditingController();
  bool value= false;
   GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body:
        Form(
          key:_formKey ,
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(
              horizontal: 9,
              vertical: 15,
            ),
          
          child: Column(
            
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 31,
                height: 24,
                margin: const EdgeInsets.only(top: 64,left: 50),
                child: Image.asset('lib/assets/images/group.jpg')),
                const SizedBox( height: 8),
                
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: Text('FOODORICH'.toUpperCase(),
                        
                  style: const TextStyle(
                    fontFamily: 'MainFont',
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                
                          
                  ),
                  ),
                ),
                const SizedBox(height: 38),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: const Text('Sign in',
                  style: TextStyle(
                    
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                     fontStyle: FontStyle.normal,
                  )
                  ),
                ),

                const SizedBox(height:38 ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Phone Number',
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(height: 8,),
              
              Padding(
                padding: const EdgeInsets.only(
                      left: 13.0, right: 17.0,bottom: 0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: PhoneNumber,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color:Colors.black )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color:Colors.transparent )
                      ),
                      hintText: '+91790786675',
                      
                    ),
                ),
                
              ),
              const SizedBox(height:38 ),
              Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: Text(
                    'OTP',
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                 const SizedBox(height: 8,),
                 Padding(
                padding: const EdgeInsets.only(
                      left: 13.0, right: 17.0,bottom: 0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: Otp,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color:Colors.black )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color:Colors.transparent )
                      ),
                      
                      
                    ),
                ),
                
              ),
              const SizedBox(height:38 ),
            Padding(
              padding: const EdgeInsets.only(
                      left: 13.0, right: 17.0,bottom: 0),
              
                child: ElevatedButton(onPressed: (){
                  String phone_number= PhoneNumber.text.toString();
                  String otp= Otp.text.toString();
                      
                  print("Phone Number: $phone_number, otp: $otp");
                }, 
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
                child: Container(
                      height: 48, 
                      child: const Center(
                        child: Text('Sign in',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                      ),
                    ),
                  ),
              ),
               const SizedBox(height: 15),
               Container(
                margin:const EdgeInsets.only(left: 16),
                 child: Row(
                   children: [
            
                     Row(
                       children: [
                        Checkbox(value:value , onChanged:((value) {
                          setState(() {
                            this.value=value!;
                          });
                        }) ),
                         const Text('Remember me',
                         style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
               
                         ),),
                       ],
                     ),
                   ],
                 ),
               ),
               const SizedBox(height: 20),
            
               const Center(
                 child: Text('Or',
                 style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                 ),),
               ),
                 const SizedBox(height: 17),
               Align(
                alignment: Alignment.center,
                child: Container(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        child: Image.asset('lib/assets/images/google 1.png')),
                        
                        Container(
                        width: 30,
                        height: 30,
                        child: Image.asset('lib/assets/images/facebook 1.png')),
                        
                    ]),
                ),
               ),
               const Spacer(),
              //  SizedBox(height: 17),
               Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Don’t have an acount? ",
                              style: theme.textTheme.bodyLarge!.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text: "Sign up",
                              style: theme.textTheme.bodyLarge!.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            const TextSpan(
                              text: "",
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
             
            
          ),
        )
        ),
    
      ),
    );  }
}