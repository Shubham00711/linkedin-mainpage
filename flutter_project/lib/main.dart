import 'package:flutter/material.dart';
import 'home_page.dart';
import 'profile_page.dart';

const primaryColor = Color(0xFF0A66C2);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'LinkedIn';
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Quicksand'
      ),
      title: appTitle,
      routes: {
        '/home':(context) => Homepage(),
        '/profile':(context) => const Profilepage(),
      },
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}
// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'LinkedIn',
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              )),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Sign in',
                style: TextStyle(fontSize: 20),
              )),
          SizedBox(height: 10),
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(
              icon: const Icon(
                Icons.person,
                color: primaryColor,
              ),
              hintText: 'Enter Username',
              labelText: 'User Name',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter username';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              icon: const Icon(
                Icons.lock_outline_rounded,
                color: primaryColor,
              ),
              hintText: 'Enter password',
              labelText: 'Password',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid password';
              }
              return null;
            },
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password ?',
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 10,
                color: primaryColor,
                child: const Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  // It returns true if the form is valid, otherwise returns false
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/home');
                    print(nameController.text);
                    print(passwordController.text);
                    nameController.clear();
                    passwordController.clear();
                  }
                },
              )),
        ],
      ),
    );
  }
}
