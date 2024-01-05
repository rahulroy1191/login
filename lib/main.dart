import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo App",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/ff.jpeg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 150, left: 50)),
              Text(
                "My name \n is Rahul ",
                style: TextStyle(fontSize: 33, color: Colors.white),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    SingleChildScrollView(),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 250, left: 20, right: 20)),
                    TextField(
                        decoration: InputDecoration(
                            hintText: "Enter your gmail/Number",
                            label: Text("Email"),
                            prefixIcon: Icon(Icons.add),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(10)))),
                    SizedBox(
                      height: 30,
                      width: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your Password",
                          label: Text("Password"),
                          prefixIcon: Icon(Icons.add),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10))),
                    ),TextButton(onPressed: (){}, child: Text("Log In",style: TextStyle(backgroundColor: Colors.blue,fontSize: 33),))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
