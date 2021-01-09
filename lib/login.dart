import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
void main() => runApp(logIn());

class logIn extends StatefulWidget {
  @override
  _logInState createState() => _logInState();
}

class _logInState extends State<logIn> {
  TextEditingController emailcontroller,passwordcontroller;
 String email,password;
 void getpassword(){
   password = passwordcontroller.text.toString();

 }
  void getemail(){
    password = emailcontroller.text.toString();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
            body: Center(
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child:  Text('TODO APP', style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),),
                    ),
                Padding(
                 padding: EdgeInsets.only(top: 100,left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Login', style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                SizedBox(height: 30.0,),
                TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                TextField(
                  controller: passwordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Forget password?', style: TextStyle(fontSize: 12.0),),
                      RaisedButton(
                        child: Text('Login'),
                        color: Color(0xffEE7B23),
                        onPressed: signup,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => logIn()));
                  },
                  child: Text.rich(
                    TextSpan(
                        text: 'Don\'t have an account',
                        children: [
                          TextSpan(
                            text: 'signup',
                            style: TextStyle(
                                color: Color(0xffEE7B23)
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
            ])
        )
    )
    );
  }
  Future signUp(BuildContext context){
   getemail();
   getpassword();
   


  }
}
