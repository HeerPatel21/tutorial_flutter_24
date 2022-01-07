import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
              children: <Widget>[
                BgImage(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  myText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ), //text
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Something Here",
                      labelText: "Name",
                    ),
                  ),
                ),
              ], //widget
            ), //column
  }

}