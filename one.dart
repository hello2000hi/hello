import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: calculator(),));
}

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  TextEditingController ans=new TextEditingController();
  int tot=0;
  List<String> sym=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(width: 230,
            child: TextField(
              controller: ans,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                  )
              ),
            ),
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="1";
                });
              }, child: Text("1")),
              SizedBox(width: 3,),
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="2";
                });
              }, child: Text("2")),
              SizedBox(width: 3,),
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="3";
                });
              }, child: Text("3")),
              SizedBox(width: 3,),
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="+";
                  sym.add("+");
                });
              }, child: Text("+")),
              SizedBox(width: 3,),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="4";
                });
              }, child: Text("4")),
              SizedBox(width: 3,),
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="5";
                });
              }, child: Text("5")),
              SizedBox(width: 3,),
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="6";
                });
              }, child: Text("6")),
              SizedBox(width: 3,),
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="-";
                  sym.add("-");
                });
              }, child: Text("-")),
              SizedBox(width: 3,),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="7";
                });
              }, child: Text("7")),
              SizedBox(width: 3,),
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="8";
                });
              }, child: Text("8")),
              SizedBox(width: 3,),
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="9";
                });
              }, child: Text("9")),
              SizedBox(width: 3,),
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="x";
                  sym.add("x");
                });
              }, child: Text("X")),
              SizedBox(width: 3,),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="0";
                });
              }, child: Text("0")),
              SizedBox(width: 3,),
              SizedBox(
                  width: 115,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      String con=ans.text;
                      int tot;
                      List<String> Answer=con.split(RegExp(r"[+\-x/]"));
                      int num1 = int.parse(Answer[0]);
                      int num2 = int.parse(Answer[1]);
                      String op=sym[0];
                      sym.clear();
                      print(op);
                      ans.clear();
                      switch (op) {
                        case '+':
                          tot=num1+num2;
                          ans.text=tot.toString();
                          print(tot);
                          break;
                        case "-":
                          tot=num1-num2;
                          ans.text+=tot.toString();
                          break;
                        case "x":
                          tot=num1*num2;
                          ans.text+=tot.toString();
                          break;
                        case "/":
                          tot=num1%num2;
                          ans.text+=tot.toString();
                          break;
                      }

                    });
                  }, child: Text("="))
              ),
              SizedBox(width: 3,),
              ElevatedButton(onPressed: (){
                setState(() {
                  ans.text +="/";
                  sym.add("/");
                });
              }, child: Text("/")),
              SizedBox(width: 3,),
            ],
          ),
          SizedBox(height: 5,),
        ],
      ),
    );
  }
}
