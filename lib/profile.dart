import 'package:flutter/material.dart';
import 'package:hostelmanagement2/components/infocard.dart';

const url = "CSE 2nd year";
const email = "myname@student.tce.edu";
const phone = "90441539202"; // not a real number :)
const location = "Chennai, India";

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isEditing = false;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _roleController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _urlController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = "My Name";
    _roleController.text = "Student";
    _phoneController.text = phone;
    _urlController.text = url;
    _locationController.text = location;
    _emailController.text = email;
  }

  void toggleEditMode() {
    setState(() {
      isEditing = !isEditing;
    });
  }

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
        child: SafeArea(
          minimum: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              isEditing
                  ? TextFormField(
                controller: _nameController,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
                  : Text(
                _nameController.text,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              isEditing
                  ? TextFormField(
                controller: _roleController,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              )
                  : Text(
                _roleController.text,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              // Update InfoCard instances to include the edit button and handle editing
              InfoCard(
                text: _phoneController.text,
                icon: Icons.phone,
                onPressed: () {
                  if (isEditing) {
                    // Handle editing phone number
                  }
                },
                isEditing: isEditing,
                controller: _phoneController,
              ),
              InfoCard(
                text: _urlController.text,
                icon: Icons.web,
                onPressed: () {
                  if (isEditing) {
                    // Handle editing URL
                  }
                },
                isEditing: isEditing,
                controller: _urlController,
              ),
              InfoCard(
                text: _locationController.text,
                icon: Icons.location_city,
                onPressed: () {
                  if (isEditing) {
                    // Handle editing location
                  }
                },
                isEditing: isEditing,
                controller: _locationController,
              ),
              InfoCard(
                text: _emailController.text,
                icon: Icons.email,
                onPressed: () {
                  if (isEditing) {
                    // Handle editing email
                  }
                },
                isEditing: isEditing,
                controller: _emailController,
              ),

              // Add an edit button to toggle edit mode
              ElevatedButton(
                onPressed: toggleEditMode,
                child: Text(isEditing ? 'Save' : 'Edit'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Profile(),
  ));
}
