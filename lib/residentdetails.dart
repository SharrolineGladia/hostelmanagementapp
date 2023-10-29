import 'package:flutter/material.dart';
class ResidenntDetailsView extends StatefulWidget {
  const ResidenntDetailsView({super.key});

  @override
  State<ResidenntDetailsView> createState() => _ResidenntDetailsViewState();
}

class _ResidenntDetailsViewState extends State<ResidenntDetailsView> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> userProfiles = [
      {'name': 'User 1', 'phone': '123-456-7890', 'room': '101'},
      {'name': 'User 2', 'phone': '234-567-8901', 'room': '102'},
      {'name': 'User 3', 'phone': '345-678-9012', 'room': '103'},
      {'name': 'User 4', 'phone': '456-789-0123', 'room': '104'},
      {'name': 'User 5', 'phone': '567-890-1234', 'room': '105'},
    ];
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
          size: 30,
        ),),),
      body: Container(
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
        child: ListView.builder(
          itemCount: userProfiles.length,
          itemBuilder: (context, index) {
            final userProfile = userProfiles[index];
            return ListTile(
              title: Text(userProfile['name'] ?? 'N/A'),
              subtitle: Text('Phone: ${userProfile['phone']}, Room: ${userProfile['room']}'),
              trailing: ElevatedButton(
                onPressed: () {
                  // Handle "Manage" button action here
                  // You can add logic to manage the user associated with this profile.
                },
                child: Text('Manage'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade200),
              ),
            );
          },
        ),
      ),);
  }
}
