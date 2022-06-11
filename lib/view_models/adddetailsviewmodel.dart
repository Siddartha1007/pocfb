import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddDetailsViewModel extends ChangeNotifier{

  TextEditingController nameController = TextEditingController();
  TextEditingController clgnameController = TextEditingController();
  TextEditingController branchController = TextEditingController();
  TextEditingController yearController = TextEditingController();

  addtasktofirebase() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    final User user = await auth.currentUser!;
    String uid = user.uid;
    var time = DateTime.now();
    await FirebaseFirestore.instance
        .collection('tasks')
        .doc(uid)
        .collection('mytasks')
        .doc(time.toString())
        .set({
      'name': nameController.text,
      'clgname': clgnameController.text,
      'branch': branchController.text,
      'year': yearController.text,
      'time': time.toString(),
    });
    Fluttertoast.showToast(msg: 'Data Added');
  }


}