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
                colors: [Colors.blue.shade300, Colors.greenAccent],
              ),
            ),
          ),
          title: Text(
            "Edit Your Profile",
            style: TextStyle(color: Colors.white, letterSpacing: 1),
          ),
        ),
        body: Stepper(
          currentStep: i,
          onStepContinue: () {
            setState(
              () {
                if (i < 10) {
                  i++;
                }
              },
            );
          },
          onStepCancel: () {
            setState(
              () {
                if (i > 0) {
                  i--;
                }
              },
            );
          },
          steps: [
            Step(
              isActive: true,
              title: Text("Profile Picture"),
              content: ListTile(
                title: Text("My Profile"),
                leading: Icon(Icons.person),
                subtitle: Text("dharmishtha makwana"),
              ),
            ),
            Step(
                isActive: true,
                title: Text("Name"),
                content: ListTile(
                  title: Text("Name"),
                  leading: Icon(Icons.person),
                  subtitle: Text("Dharmishtha"),
                )),
            Step(
              isActive: true,
              title: Text("Phone"),
              content: ListTile(
                subtitle: Text("99********"),
                leading: Icon(Icons.call),
                title: Text("Phone number"),
              ),
            ),
            Step(
              isActive: true,
              title: Text("Email"),
              content: ListTile(
                subtitle: Text("makwanadharmishtha44@gmail.com"),
                leading: Icon(Icons.email),
                title: Text("Email"),
              ),
            ),
            Step(
              isActive: true,
              title: Text("DOB"),
              content: ListTile(
                subtitle: Text("30/05/2005"),
                leading: Icon(Icons.celebration),
                title: Text("Date of birth"),
              ),
            ),
            Step(
              isActive: true,
              title: Text("Gender"),
              content: ListTile(
                subtitle: Text("female"),
                leading: Icon(Icons.female),
                title: Text("Female"),
              ),
            ),
            Step(
              isActive: true,
              title: Text("Current Location"),
              content: ListTile(
                subtitle: Text("Surat"),
                leading: Icon(Icons.location_on),
                title: Text("Location"),
              ),
            ),
            Step(
              isActive: true,
              title: Text("Nationalities"),
              content: ListTile(
                subtitle: Text("Indian "),
                title: Text("Nationalities"),
              ),
            ),
            Step(
              isActive: true,
              title: Text("Religion"),
              content: ListTile(
                subtitle: Text("Hindu"),
                leading: Icon(Icons.temple_hindu),
                title: Text("Religion"),
              ),
            ),
            Step(
              isActive: true,
              title: Text("Language"),
              content: ListTile(
                subtitle: Text("Gujarati,hindhi,English"),
                leading: Icon(Icons.language),
                title: Text("language"),
              ),
            ),
            Step(
              isActive: true,
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
