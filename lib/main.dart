import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(const MyApp());
}

@override
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'randomquest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var pergunta = "randomquest";
  int _posicao1 = -1;
  int _posicao2 = -1;
  var lista1 = ['1', '2', '3', '4', '5']..shuffle();
  var lista2 = ['a', 'b', 'c', 'd', 'e']..shuffle();

void MudaPosic1 (){
  _posicao1++;
  if(_posicao1 == lista1.length) _posicao1 = 0; //start the loop over
  setState(() {
      pergunta = lista1.elementAt(_posicao1);
  });
}

void MudaPosic2 (){
  _posicao2++;
  if(_posicao2 == lista2.length) _posicao2 = 0; //start the loop over
  setState(() {
      pergunta = lista2.elementAt(_posicao2);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(toolbarHeight: MediaQuery.of(context).size.height * 0.20, backgroundColor: Colors.black, toolbarOpacity: 0.5, title: Image.asset('images/logo.png', width: MediaQuery.of(context).size.width * 0.20, fit: BoxFit.cover,)),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[ 
                  IconButton(   
                    splashColor: Colors.white,
                    highlightColor: Colors.transparent,  
                    icon: Image.asset('images/eye.png'),
                    iconSize: 150,
                    onPressed: () {MudaPosic1();
                    },
                    color: Colors.black,
                  ),
                  IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: Image.asset('images/eye.png'),
                    iconSize: 150,
                    onPressed: () {MudaPosic2();
                      }, 
                    color: Colors.black, 
                  ),
                ],
              ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.30),
            SizedBox(height: 1, child: Container(color: Colors.black,),),
            SizedBox(height: MediaQuery.of(context).size.height * 0.10),
            Text(pergunta, style: const TextStyle(fontSize: 20)
            )], 
          ),
        ));
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
