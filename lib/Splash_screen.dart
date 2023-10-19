import 'package:flutter/material.dart';



class SplashScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child:  Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Container(
                width: 100,
                height: 100,
                
                child: Image.asset('assets/images/group.jpg'
                
                )
                ),
                
             const SizedBox(
              height: 30,
             ),
              
                const Text('FOODORICH',
                style: TextStyle(
                  fontFamily: 'MainFont',
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  
                ),
                ),
             
            ],
          )),
      )
    );
  }
}