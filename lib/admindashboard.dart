import 'package:flutter/material.dart';
class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,leading: GestureDetector(
        onTap: () {
      Navigator.of(context).pop();
    },
    child: Icon(
    Icons.arrow_back,
    color: Colors.black,
    size: 30,),),),
      body:Center(
        child: Container(
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width:300,
                height:50,
                child: TextButton(onPressed: (){
                  Navigator.pushNamed(context, '/reports');
                }, child: Text("REPORTS AND QUERIES",style:TextStyle(color: Colors.white)),style: TextButton.styleFrom(backgroundColor: Colors.black87),),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                height:50,
                child: TextButton(onPressed: (){
                  Navigator.pushNamed(context, '/residentdetails');
                }, child: Text("RESIDENT DETAILS",style:TextStyle(color: Colors.white)),style: TextButton.styleFrom(backgroundColor: Colors.black87),),
              ),
              SizedBox(height:20),
              Container(
                width: 300,
                height:50,
                child: TextButton(onPressed: (){
                  Navigator.pushNamed(context, '/foodvotingview');
                }, child: Text("FOOD VOTINGS",style:TextStyle(color: Colors.white)),style: TextButton.styleFrom(backgroundColor: Colors.black87),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
