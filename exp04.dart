import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: MyForm(),
  ));
}
class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFormState();
  }
}
class MyFormState extends State<MyForm> {
  var _myFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Form"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
        child: Form(
            key: _myFormKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    validator: (msg) {
                      if (msg.isEmpty) {
                        return "Please enter name";
                      }
                      return null;
                    },
                                        decoration: InputDecoration(labelText: "Name", hintText: "Enter Your Name", border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    validator: (msg) {
                      if (msg.isEmpty) {
                        return "Please enter Mobile Number";
                      }
                      if (msg.length != 10) {
                        return "Please Enter Correct Digits";
                      }
                      return null;
                    },
                    decoration: InputDecoration(labelText: "Mobile", hintText: "Enter Your Mobile No.", border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                          validator: (msg) {
                      if (msg.isEmpty) {
                        return "Please enter Mobile Number";
                      }
                      if (msg.length != 6) {
                        return "Please Enter Correct Digits";
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Password", hintText: "Enter Your Password.", border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          _myFormKey.currentState.validate();
        },
      ),
          );
  }
}
