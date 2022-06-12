import 'package:flutter/material.dart';

class ShowDetails extends StatefulWidget {

  final String ?name;
  final String ?clgname;
  final String ?branch;
  final String ?year;
  

  const ShowDetails({Key? key, this.name, this.clgname, this.branch, this.year}) : super(key: key);

  @override
  State<ShowDetails> createState() => _ShowDetailsState();
}

class _ShowDetailsState extends State<ShowDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Details')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0),
            padding: EdgeInsets.all(10),
            child: Text("Name : "+ widget.name.toString(),),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            padding: EdgeInsets.all(10),
            child: Text("ClgName : "+ widget.clgname.toString(),),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            padding: EdgeInsets.all(10),
            child: Text("Branch : "+ widget.branch.toString(),),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            padding: EdgeInsets.all(10),
            child: Text("Year : "+ widget.year.toString(),),
          ),
        ],
      ),
    );
  }
}