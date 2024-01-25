import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MainScreen();
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Center(
              child: Text(
                'Custom Button',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          body: Container(
            color: Colors.amber.shade100,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(
                      toastLength: Toast.LENGTH_SHORT,
                      //gravity: ToastGravity.CENTER,
                      backgroundColor: Colors.red,
                      fontSize: 20,
                      msg: 'You have login successfully');
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pinkAccent,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 1,
                          spreadRadius: 2,
                          offset: Offset(-4, -4),
                        ),
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 1,
                          spreadRadius: 2,
                          offset: Offset(4, 4),
                        ),
                      ]),
                  width: 100,
                  height: 40,
                  child: const Center(
                      child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void fToast() {
  Fluttertoast.showToast(msg: 'You have login successfully');
}
