import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/pages/Home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 16),
            height: 72,
            width: 72,
            child: CircleAvatar(
              radius: 10,
              backgroundImage:
                  AssetImage('images/pexels-cameron-casey-1334605 copy.jpg'),
            ),
          ),
          Text(
            'Welcome to Lafyuu',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            'Sign in to continue',
            style: TextStyle(fontSize: 11),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(
                label: Text("Your email"),
                hintStyle: TextStyle(fontSize: 12),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.mail),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(
                label: Text("Password"),
                hintStyle: TextStyle(fontSize: 12),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.only(right: 16, left: 16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "HomePage");
              },
              child: Text(
                'Sign in',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(children: [
            Container(
              margin: EdgeInsets.all(16),
              width: 180,
              child: Divider(
                color: Colors.grey,
                thickness: 2,
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              child: Text(
                'OR',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              margin: EdgeInsets.all(16),
              width: 180,
              child: Divider(
                color: Colors.grey,
                thickness: 2,
              ),
            ),
          ]),
          Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              onPressed: () {},
              child: Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    'Login with Google',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              onPressed: () {},
              child: Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    'Login with Facebook',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.blue),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
              child: Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    'Dont have a account?',
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.blue),
                      )),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
