import 'package:flutter/material.dart';

class mylogin extends StatefulWidget {
  const mylogin({Key? key}) : super(key: key);

  @override
  _myloginState createState() => _myloginState();
}

class _myloginState extends State<mylogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 55,top: 130),
            child: Text('WELCOME BACK',
            style:TextStyle(
              color: Colors.black,
            letterSpacing: 3,
              fontSize: 33,
            ),
            ),

          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5),

              child: Column(
                children: [
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
                      Text('sign in ',
                        style: TextStyle(
                        fontSize: 30,
                      ),),

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     TextButton(onPressed: (){
                       Navigator.pushNamed(context, 'register');
                     },
                         child: Text('sign up',
                         style: TextStyle(
                           decoration: TextDecoration.underline,
                           fontSize: 18,
                           color: Color(0xff4c505b),
                         ),
                         ),
                     ),
                      TextButton(onPressed: (){},
                        child: Text('Forgot password ?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ) ,
            ),
          ),
        ],
      ) ,
    );
  }
}
