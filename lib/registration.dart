import 'package:flutter/material.dart';
import 'login.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 35,top: 130),
            child: Text('Create account',
                style:TextStyle(
                  color: Colors.black,
                  fontSize: 33,
                )
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5),

              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey,
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, 'login');
                      },
                        child: Text('Sign in',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b),
                          ),
                        ),
                      ),

                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(
                            0xff4c505b
                        ),
                        child: IconButton(
                          onPressed: (){} ,
                          icon: Icon(Icons.arrow_forward),
                        ),
                      )
                    ],
                  ),
                ],
              ) ,
            ),
          ),
        ],
      ) ,
    );
  }
}
