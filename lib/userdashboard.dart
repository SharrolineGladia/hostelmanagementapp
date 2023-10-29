import 'package:flutter/material.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({Key? key});

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffFFD6F7),
                Color(0xffDC98FF),
              ],
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30),
                Text("HELLO USER!",style: TextStyle(fontSize:40,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(height: 220),
      GestureDetector(
      onTap: ()=>Navigator.pushNamed(context,'/profile'),
      child: Container(
      height: 53,
      width: 320,
      decoration: BoxDecoration(
      color:Colors.white,
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.white),
      ),
      child: const Center(child: Text('YOUR PROFILE',style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      ),),),),),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: ()=>Navigator.pushNamed(context,'/favouritemeal'),
                  child: Container(
                    height: 53,
                    width: 320,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Center(child: Text('FAVOURITE MEALS',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),),),),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: ()=>Navigator.pushNamed(context,'/reportissues'),
                  child: Container(
                    height: 53,
                    width: 320,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Center(child: Text('REPORT ISSUES',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),),),),

                SizedBox(height: 240),
                IconButton(onPressed: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: SizedBox(
      height: 400,
      child: Column(
        children: [
          IconButton(
          onPressed: (){
          Navigator.pop(context);},
          icon:Icon(Icons.drag_handle_rounded,size: 40,color:Colors.black45,),
          ),
          SizedBox(height:20),
          Divider(
            color: Colors.black38, // You can customize the color// You can customize the thickness
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Contact Number:9787645173",style:TextStyle(fontSize: 20)),
            ],
          ),

          Divider(
            color: Colors.black38, // You can customize the color// You can customize the thickness
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Text("Mail id:hosteltclg@tce.edu",style:TextStyle(fontSize: 20)),
            ],
          ),

          Divider(
            color: Colors.black38,
            thickness: 1,// You can customize the color // You can customize the thickness
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Other details",style:TextStyle(fontSize: 20)),
            ],
          ),
          Divider(
            color: Colors.black38, // You can customize the color// You can customize the thickness
          ),
        ],
      ),
      ),
    );
    },
                  );
                  },
              icon:Icon(Icons.drag_handle_rounded,size: 40,color: Colors.white,)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
