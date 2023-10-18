import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Finder UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JobFinderUI(),
    );
  }
}

class JobFinderUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    // Placeholder for the image
                    Container(height: 200, color: Colors.grey[200]), // Placeholder
                    SizedBox(height: 30),
                    Text(
                      'Discover your Dream job Here',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Explore all the most exiting jobs roles based on your interest and study major',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Register'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Sign In'),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.purple),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}