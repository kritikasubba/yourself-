import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:date_time_field/date_time_field.dart';

class ProfilePage extends StatelessWidget {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _townController = TextEditingController();

   
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.arrow_back_ios),
            Row(
              children: const [
                Icon(Icons.person),
                Text('Profile'),
              ],
            ),
          ],
        ),
      ),
      body:
      
      
     SingleChildScrollView(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CircleAvatar(
                minRadius: 50,
                maxRadius: 50,
                child: Lottie.asset('assets/images/card.json'),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text('Change Profile Picture'),
              const SizedBox(
                height: 10,
              ),
              Column(
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
                    decoration:  const InputDecoration(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(300, 50),
                           minimumSize: const Size(300, 50)
                        ),
                        onPressed: (){
                         final name = _nameController.text;
                              final age = int.parse(_ageController.text);
                              final homeTown = _townController.text;
                              createUser(name: name, age: age, homeTown: homeTown);

                      }, child: const Text('Create')),
                    
                      
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}

Future createUser({required String name, required int age, required String homeTown}) async {
  //Reference to document
  final docUser = FirebaseFirestore.instance
      .collection('users')
      .doc(); //firebase ko collection mah users ko data send garna
final user = User(
  id: docUser.id,
  age: age,  homeTown: homeTown, name: name);

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

  Map<String , dynamic> toJson() =>{
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

