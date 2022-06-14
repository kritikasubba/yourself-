import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:lottie/lottie.dart';
import 'package:yourself/app/resources/size_constants.dart';

class ProfilePage extends StatelessWidget {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _townController = TextEditingController();

  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headline5,
        ),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CircleAvatar(
                minRadius: 50,
                maxRadius: 50,
                backgroundColor: const Color(0xff5B8C5A),
                child: Lottie.asset('assets/images/card.json'),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Change Profile Picture',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 10,
              ),
              _TextFormFieldWidget(
                  nameController: _nameController,
                  ageController: _ageController,
                  townController: _townController),
              Lottie.asset('assets/images/profile.json'),
            ],
          ),
        ),
      )),
    );
  }
}

class _TextFormFieldWidget extends StatelessWidget {
  const _TextFormFieldWidget({
    Key? key,
    required TextEditingController nameController,
    required TextEditingController ageController,
    required TextEditingController townController,
  })  : _nameController = nameController,
        _ageController = ageController,
        _townController = townController,
        super(key: key);

  final TextEditingController _nameController;
  final TextEditingController _ageController;
  final TextEditingController _townController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: _nameController,
          decoration: const InputDecoration(
            label: Text('Full name'),
            hintText: 'Enter your full name',
          ),
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            label: Text('age'),
            hintText: 'Enter your age',
          ),
          controller: _ageController,
        ),
        TextFormField(
          controller: _townController,
          decoration: const InputDecoration(
            label: Text('Home Town'),
            hintText: 'Enter your home town',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: const Color(0xff5B8C5A),
                maximumSize: const Size(350, 50),
                minimumSize: const Size(350, 50)),
            onPressed: () {
              final name = _nameController.text;
              final age = int.parse(_ageController.text);
              final homeTown = _townController.text;
              createUser(name: name, age: age, homeTown: homeTown);
            },
            child: const Text('Create')),
            SBC.lH,
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: const Color(0xff5B8C5A),
                maximumSize: const Size(350, 50),
                minimumSize: const Size(350, 50)),
            onPressed: showToast,
            child: const Text('Update Profile'))
      ],
    );
  }
}

void showToast() => Fluttertoast.showToast(
    msg: "profile is updated successfully",
    fontSize: 18,
    // backgroundColor: Colors.red,
    gravity: ToastGravity.CENTER);


Future createUser(
    {required String name, required int age, required String homeTown}) async {
  //Reference to document
  final docUser = FirebaseFirestore.instance
      .collection('users')
      .doc(); //firebase ko collection mah users ko data send garna
  final user = User(id: docUser.id, age: age, homeTown: homeTown, name: name);

  final json = user.toJson();

  // final json = {
  //   'name': name,
  //   'age': age,
  //   'caste': 'Rai',
  //   'home Town': 'Dharan'
  // };
//create document and write data to firebase
  await docUser.set(json);
}

class User {
  String? id;
  String? name;
  int? age;

  String? homeTown;

  User({
    required this.id,
    required this.age,
    required this.homeTown,
    required this.name,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'home Town': homeTown,
        'age': age,
      };
  static User fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        name: json['name'],
        homeTown: json['home town'],
        age: json['age'],
      );
}
// Stream<List<User>> readUsers() => FirebaseFirestore.instance.collection('users').snapshots().map((snapshot) => 
// snapshot.docs.map((doc) => User.fromJson(doc.data()).toList()); //snapshot() = to get all the documents from firebase collection

