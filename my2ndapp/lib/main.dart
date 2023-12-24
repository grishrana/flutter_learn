import 'dart:developer';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ClaculatorHomePage()
    );
  }
}

class ClaculatorHomePage  extends StatefulWidget {
  ClaculatorHomePage ({super.key});

  @override
  State<ClaculatorHomePage> createState() => _ClaculatorHomePageState();
}

class _ClaculatorHomePageState extends State<ClaculatorHomePage> {
  double result=0;
  TextEditingController n1=TextEditingController();
  TextEditingController n2=TextEditingController();
  void mathsOperation(String operation){
    double num1=double.parse(n1.text);
    double num2=double.parse(n2.text);
    if(operation=="add"){
      result=num1+num2;
    }
    else if(operation=="sub"){
      result=num1-num2;
    }
    else if(operation=="mul"){
      result=num1*num2;
    }
    else if(operation=="div"){
      result=num1/num2;
    }
    setState(() {      
    });
    log(result.toString());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("Simple Calculator")),
      ),
      body: Column(
        children: [
          Text("Result= $result"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: n1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter 1st number:",border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: n2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter 2nd number:",border: OutlineInputBorder(borderRadius: BorderRadius.circular(33))),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    mathsOperation("sum");
                  }, child: const Text("SUM")),
                  const SizedBox(
                    width: 50.0,
                  ),
                  ElevatedButton(onPressed: (){
                    mathsOperation("div");
                  }, child: const Text("DIV"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      mathsOperation("mul");
                    }, child: const Text("MUL")),
                    const SizedBox(
                      width: 50.0,
                    ),
                    ElevatedButton(onPressed: (){
                      mathsOperation("sub");
                    }, child: const Text("SUB"))
                  ],
                ),
            ],
          )
        ]
        ),
    );
  }
}


