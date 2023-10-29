import 'package:flutter/material.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image:DecorationImage(image: AssetImage('images/purplebg.jpg'),fit: BoxFit.cover,),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Center(

          child:SafeArea(
            child: Column(
              children: [
                SizedBox(height:30),
                Text("Thiagarjar College Of Engineering",
                  style: TextStyle(fontSize: 20,color: Colors.black87,fontFamily:'RobotoMono',fontWeight: FontWeight.bold),),
                SizedBox(height:10),
                Text("\" Where quality and ethics matter \"",style: TextStyle(fontSize: 12,color: Colors.grey[600],fontFamily: 'RobotoMono'),),
                SizedBox(height:25),
                CircleAvatar(
                  radius:150,
                  backgroundImage: AssetImage("images/collegebuilding.jpg"),
                ),
                SizedBox(height:30),
                Text("HOSTEL MANAGEMENT APP",style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height:30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: ()=>Navigator.pushNamed(context,'/userselection'),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        padding:EdgeInsets.fromLTRB(130,20,130,20),
                        child: Text("WELCOME!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Click to proceed further",style: TextStyle(fontSize: 17,color: Colors.grey[600]),),
                    Icon(Icons.arrow_forward,color:Colors.black,size: 30,),
                  ],
                ),
              ],
            ),
          ),),
      ),
    );
  }
}
