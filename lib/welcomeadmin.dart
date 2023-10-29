import 'package:flutter/material.dart';
import 'package:hostelmanagement2/regscreenadmin.dart';

import 'package:hostelmanagement2/loginscreenadmin.dart';

class WelcomeAdmin extends StatelessWidget {
  const WelcomeAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),),),
        body:Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors:[
                    Color(0xffFFD6F7),
                    Color(0xffDC98FF),
                  ]
              )
          ),
          child: Column(
              children: [
                /*Row(
                  mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(onTap:()=>Navigator.pushNamed(context,'/userselection'),
          child: Icon(Icons.arrow_back_outlined,color: Colors.black,size:30)),
            ],
                ),*/
                SizedBox(height:100),
                Icon(Icons.account_circle,color: Colors.white,size:50),
                const SizedBox(
                  height: 100,
                ),
                const Text('Welcome Back',style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),),
                const SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginScreenAdmin()));
                  },
                  child: Container(
                    height: 53,
                    width: 320,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Center(child: Text('SIGN IN',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),),
                  ),
                ),
                const SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const RegScreenAdmin()));
                  },
                  child: Container(
                    height: 53,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Center(child: Text('SIGN UP',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),),
                  ),
                ),
                const Spacer(),
                const Text('Or Login with Google',style: TextStyle(
                    fontSize: 17,
                    color: Colors.white
                ),),//
                Container(
                    height:75,
                    width:200,
                    child: const Image(image: AssetImage('images/googlelogo.png')))
              ]
          ),
        ),
      ),);
  }
}