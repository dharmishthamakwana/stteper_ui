import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue.shade300, Colors.greenAccent]))),
          title: Text(
            "Edit Your Profile",
            style: TextStyle(color: Colors.white, letterSpacing: 1),
          ),
        ),
        body: Stepper(
          currentStep: i,
          onStepContinue: () {
            setState(() {
              if (i < 10) {
                i++;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (i > 0) {
                i--;
              }
            });
          },
          steps: [
            Step(
              title: Text("Profile Picture"),
              content: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabled: true,
                    hintText: 'enter your pic'),
              ),
            ),
            Step(
              title: Text("Name"),
              content: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabled: true,
                    hintText: 'enter your name'),
              ),
            ),
            Step(
              title: Text("Phone"),
              content: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabled: true,
                    hintText: 'enter your phone number'),
              ),
            ),
            Step(
              title: Text("Email"),
              content: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabled: true,
                    hintText: 'enter your email'),
              ),
            ),
            Step(
              title: Text("DOB"),
              content: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabled: true,
                    hintText: 'enter your birthdate'),
              ),
            ),
            Step(
              title: Text("Gender"),
              content: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabled: true,
                    hintText: 'enter your gender'),
              ),
            ),
            Step(
              title: Text("Current Location"),
              content: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabled: true,
                    hintText: 'enter your current location'),
              ),
            ),
            Step(
              title: Text("Nationalities"),
              content: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabled: true,
                    hintText: 'enter your nationalities'),
                ),
              ),

            Step(
              title: Text("Religion"),
              content: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabled: true,
                    hintText: 'enter your Religion'),
              ),
            ),
            Step(
              title: Text("Language"),
              content: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabled: true,
                    hintText: 'language'),
              ),
            ),
            Step(
              title: Text("Biography"),
              content: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabled: true,
                    hintText: 'enter your biography'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int i = 0;
}
