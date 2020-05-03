import 'package:flutter/material.dart';

import '../mixins/validation.dart';

class LoginForm extends StatefulWidget {
  createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 16)),
            submitField(),
          ]
        )
      )
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType:  TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email: ',
        hintText: 'Enter you email!'
      ),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      }
    );
  }

  Widget passwordField() {
    return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password: ',
          hintText: 'Enter you passaword!'
        ),
        validator: validatePassword,
        onSaved: (String value) {
          password = value;
        }
    );
  }

  Widget submitField() {
    return RaisedButton(
      onPressed: () {
        if(formKey.currentState.validate()) {
          formKey.currentState.save();
          print('POST to API $email and $password');
        }
      },
      color: Colors.blue,
      child: Text('Submit')
    );
  }
}