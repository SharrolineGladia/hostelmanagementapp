import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  final bool isEditing;
  final TextEditingController? controller;

  InfoCard({
    required this.text,
    required this.icon,
    required this.onPressed,
    this.isEditing = false,
    this.controller,
  });

  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            widget.icon,
            color: Colors.teal,
          ),
          title: widget.isEditing
              ? TextFormField(
            controller: widget.controller,
            style: TextStyle(
              color: Colors.teal,
              fontSize: 20,
            ),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(Icons.edit, color: Colors.teal),
                onPressed: () {
                  // Handle editing
                },
              ),
            ),
          )
              : Text(
            widget.text,
            style: TextStyle(
              color: Colors.teal,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
