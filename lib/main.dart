import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "BMI Calculator",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text("Gender"),
              SizedBox(
                height: 8,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.all(
                          color: Colors.greenAccent,
                          width: 2,
                        ),
                        color: Colors.white24,
                      ),
                      height: 200,
                      child: Stack(
                        children: [
                          Positioned.fill(
                              child: Icon(
                            Icons.man,
                            size: 150,
                          )),
                          Positioned(
                              right: 8,
                              top: 8,
                              child: Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white24,
                      height: 200,
                      child: Stack(
                        children: [
                          Positioned.fill(
                              child: Icon(
                            Icons.woman,
                            size: 150,
                          )),
                          Positioned(
                              right: 8,
                              top: 8,
                              child: Icon(
                                Icons.check_circle,
                                color: Colors.grey,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text("Weight"),
              SizedBox(
                height: 8,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Container(
                      height: 50,
                      color: Colors.grey.shade100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.remove_circle, color: Colors.black),
                          SizedBox(
                              width: 100,
                              child: TextField(
                                style: TextStyle(color: Colors.black),
                              )),
                          Icon(Icons.add_circle, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 50,
                      color: Colors.grey.shade100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Container(
                      height: 50,
                      color: Colors.grey.shade100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.remove_circle, color: Colors.black),
                          SizedBox(
                              width: 100,
                              child: TextField(
                                style: TextStyle(color: Colors.black),
                              )),
                          Icon(Icons.add_circle, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 50,
                      color: Colors.grey.shade100,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              InkWell(
                child: Container(
                  height: 48,
                  color: Colors.green,
                  child: Center(
                    child: Text("Click"),
                  ),
                ),
                onTap:(){
                  print("asdasd");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
