import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChaMa Home'),
        backgroundColor: Colors.black26,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              onPressed: () async {
                Navigator.pushNamed(context, '/Player') ;
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black26 ,
              ),
              child: const Text('Play a Song'),
            ),
            const SizedBox(height: 20,) ,

            ElevatedButton(
              onPressed: () async {
                Navigator.pushNamed(context, '/readData') ;
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black26 ,
              ),
              child: const Text('Read Data'),
            ),
            const SizedBox(height: 20,) ,

            ElevatedButton(
              onPressed: () async {
                Navigator.pushNamed(context, '/createUser') ;
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black26 ,
              ),
              child: const Text('Create User'),
            ),
            const SizedBox(height: 20,) ,

            ElevatedButton(
                onPressed: () async {
                  FirebaseAuth.instance.signOut() ;
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black26 ,
              ),
              child: const Text('Sign Out'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
