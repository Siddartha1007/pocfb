import 'package:flutter/material.dart';
import 'package:pocfb/view_models/adddetailsviewmodel.dart';
import 'package:stacked/stacked.dart';

class AddDetails extends StatefulWidget {
  const AddDetails({Key? key}) : super(key: key);

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddDetailsViewModel>.reactive(
      viewModelBuilder: () => AddDetailsViewModel(), 
      builder: (_, model, __) => buildLayout(model),
    );

  }

  buildLayout(AddDetailsViewModel model){
      return Scaffold(
      appBar: AppBar(title: const Text('New Student')),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                child: TextField(
                  controller: model.nameController,
                  decoration: const InputDecoration(
                      labelText: 'Enter Name', border: OutlineInputBorder()),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                child: TextField(
                  controller: model.clgnameController,
                  decoration: const InputDecoration(
                      labelText: 'Enter ClgName',
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                child: TextField(
                  controller: model.branchController,
                  decoration: const InputDecoration(
                      labelText: 'Enter Branch', border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                child: TextField(
                  controller: model.yearController,
                  decoration: const InputDecoration(
                      labelText: 'Enter Year', border: OutlineInputBorder()),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text('Add',),
                    onPressed: () {
                      model.addtasktofirebase();
                    },
                  ))
            ],
          )),
    );
  }
}