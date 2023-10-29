import 'package:flutter/material.dart';
class FeedbackSubmit extends StatefulWidget {
  const FeedbackSubmit({super.key});

  @override
  State<FeedbackSubmit> createState() => _FeedbackState();
}

class _FeedbackState extends State<FeedbackSubmit> {
  int? selectedRating; // Make selectedRating nullable

  List<String> ratings = ['Excellent', 'Good', 'Average', 'Poor', 'Worst'];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("Give in your feedback"),backgroundColor: Colors.purple[200],),
    );
  }
}
