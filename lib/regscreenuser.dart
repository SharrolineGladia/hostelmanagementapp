import 'package:flutter/material.dart';

class RegScreenUser extends StatefulWidget {
  const RegScreenUser({Key? key}) : super(key: key);

  @override
  State<RegScreenUser> createState() => _RegScreenUserState();
}

class _RegScreenUserState extends State<RegScreenUser> {
  @override
  bool _obscureText = true;
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffFFD6F7),
                  Color(0xffDC98FF),
                ]),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Create Your\nAccount',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.check,color: Colors.grey,),
                            label: Text('Full Name',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.black26,
                            ),)
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.check,color: Colors.grey,),
                            label: Text('College mail id',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.black26,
                            ),)
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.check,color: Colors.grey,),
                            label: Text('User Id',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.black26,
                            ),)
                        ),
                      ),
                      TextField(
                        obscureText: _obscureText, // Use obscureText to toggle visibility
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            icon: Icon(
                              _obscureText ? Icons.visibility : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black26,
                          ),
                        ),
                      ),
                      TextField(
                        obscureText: _obscureText, // Use obscureText to toggle visibility
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            icon: Icon(
                              _obscureText ? Icons.visibility : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                          ),
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black26,
                          ),
                        ),
                      ),

                      const SizedBox(height: 10,),
                      const SizedBox(height: 70,),
                      GestureDetector(
                        onTap:() =>Navigator.pushNamed(context, '/userdashboard'),
                        child: Container(
                          height: 55,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xffFFD6F7),
                                  Color(0xffDC98FF),
                                ]
                            ),
                          ),
                          child: const Center(child: Text('SIGN IN',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white
                          ),),),
                        ),
                      ),
                      const SizedBox(height: 80,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}