import 'package:flutter/material.dart';
class example extends StatefulWidget {
  @override
  _exampleState createState() => _exampleState();
}

class _exampleState extends State<example> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          focusNode: FocusNode(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
              color: _isFocused ? Color.fromARGB(255, 97, 0, 26) : Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: _isFocused ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          onTap: () {
            setState(() {
              _isFocused = true;
            });
          },
          onChanged: (value) {
            setState(() {
              // Add your logic here if needed
            });
          },
          onSubmitted: (value) {
            setState(() {
              _isFocused = false;
            });
          },
        ),
      ),
    );
  }
}
