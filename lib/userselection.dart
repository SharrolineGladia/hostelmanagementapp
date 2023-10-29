import 'package:flutter/material.dart';
class UserSelection extends StatefulWidget {
  const UserSelection({super.key});

  @override
  State<UserSelection> createState() => _UserSelectionState();
}

class _UserSelectionState extends State<UserSelection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image:AssetImage('images/purplebg.jpg'),fit: BoxFit.fill,)
      ),
      child: SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,
              leading: IconButton(
                onPressed:()=>Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back_outlined),iconSize: 30,color: Colors.black,),),
            body:Center(
                child:Column(
                    children:[
                      SizedBox(height:100),
                      Icon(Icons.school,color: Colors.white,size: 200,),
                      SizedBox(height:30),
                      Container(
                        height:50,
                        width:300,
                        child: ElevatedButton.icon(
                            onPressed: (){
                              Navigator.pushNamed(context, '/welcomeadmin');
                            },
                            label:Text("Admin",style:TextStyle(fontSize: 20)),icon:Icon(Icons.account_circle_outlined),
                            style:ElevatedButton.styleFrom(backgroundColor: Colors.black87)),
                      ),
                      SizedBox(height:20),
                      Container(
                        height:50,
                        width:300,
                        child: ElevatedButton.icon(
                            onPressed: (){
                              Navigator.pushNamed(context, '/welcomeuser');
                            },
                            label:Text("User",style: TextStyle(fontSize: 20),),icon:Icon(Icons.admin_panel_settings_outlined),
                            style:ElevatedButton.styleFrom(backgroundColor: Colors.black87)),
                      ),
                      SizedBox(height: 50),
                      Text("Please select if you are an admin or a student user!",style: TextStyle(color: Colors.black45,fontSize: 15),)
                    ]
                )
            )
        ),
      ),
    );
  }
}
