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
            margin: EdgeInsets.all(10),
            child: Text(widget.name.toString(),),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(widget.clgname.toString(),),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(widget.branch.toString(),),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(widget.year.toString(),),
          ),
        ],
      ),
    );
  }
}