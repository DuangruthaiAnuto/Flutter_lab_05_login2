import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String errmsg = "";
  String email = "";
  String password = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          children: [
            //---Email---
            TextFormField(
              validator: (String inputEmail) {
                if (inputEmail.isEmpty) {
                  return "Please input email";
                } else {
                  return null;
                }
              },
              onChanged: (String inputEmail) {
                setState(() {
                  email = inputEmail;
                });
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Icon(
                  Icons.email,
                  color: Colors.grey[700],
                  size: 20.0,
                ),
              ),
            ),

            SizedBox(height: 10),

            //---Password---
            TextFormField(
              validator: (String inputPassword) {
                if (inputPassword.isEmpty) {
                  return "Please input Password";
                } else {
                  return null;
                }
              },
              onChanged: (String inputPassword) {
                setState(() {
                  password = inputPassword;
                });
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey[700],
                  size: 20.0,
                ),
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white),
                ),
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
                onPressed: () {
                  //Code for Login
                  FocusScope.of(context).unfocus();
                  setState(() {
                    errmsg = "";
                    if (email.isEmpty) {
                      errmsg = "Plese email\n";
                    }
                    if (password.isEmpty) {
                      errmsg += "Plese password";
                    }
                  }); //หุบแป้น
                },
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: Text(
                errmsg, //Code for Show error message
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                email, //Code for Show error message
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                password, //Code for Show error message
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Function to store user detail

  //Function Return email textfield

  //Function Return password textfield

}
