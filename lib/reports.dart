import 'package:flutter/material.dart';
class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    List<String> reportedIssues = ['Report 1', 'Report 2'];
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
          itemCount: reportedIssues.length,
          itemBuilder: (context, index) {
            final issue = reportedIssues[index];
            return ListTile(
              title: Text(issue),
              trailing: ElevatedButton(
                onPressed: () {
                  // Handle view button action here
                  // You can display more details of the issue.
                },
                child: Text('View'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade200),
              ),
            );
          },
        ),
      ),);
  }
}
