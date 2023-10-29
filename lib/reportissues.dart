import 'package:flutter/material.dart';
class ReportIssues extends StatefulWidget {
  const ReportIssues({super.key});

  @override
  State<ReportIssues> createState() => _ReportIssuesState();
}

class _ReportIssuesState extends State<ReportIssues> {
  String selectedCategory = 'Maintenance';
  String issueDescription = '';

  List<String> categories = ['Maintenance', 'Cleanliness', 'Security'];
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
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height:30),
                DropdownButtonFormField(
                  value: selectedCategory,
                  items: categories.map((category) {
                    return DropdownMenuItem(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCategory = value.toString();
                    });
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Issue Description'),
                  onChanged: (value) {
                    setState(() {
                      issueDescription = value;
                    });
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle issue reporting logic here
                    // You can send the selectedCategory and issueDescription to a backend or store them as needed.
                  },
                  child: Text('Report Issue'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                ),
              ],
            ),
          ),
        ),),
    );
  }
}
