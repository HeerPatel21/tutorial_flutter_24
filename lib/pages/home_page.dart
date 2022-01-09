import 'package:flutter/material.dart';
import '../bg_image.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ), //AppBar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? SingleChildScrollView(
                child: Card(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: data[index]["title"],
                    );
                  },
                  itemCount: data.length,
                ),
              ))
            : Center(
                child: CircularProgressIndicator(),
              ),
      ), //padding
      drawer: MyDrawer(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ), //floatingActionButton
    ); //scaffold
  }
}
