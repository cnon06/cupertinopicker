import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled46/values.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  var hebele =  DropdownMenuItem(child: Text("USD"),
    value: "USD",
  );




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           Container(
             width: 400,
             height: 150,

             child: CupertinoPicker(
               itemExtent: 30,
              backgroundColor: Colors.lime,
                 onSelectedItemChanged: (selectedIndex)
                 {
                   print(currenciesList[selectedIndex]);
                  },
                 children: dd_loop(),),
           ),
          ],
        ),
      ),

    );
  }


  List <Text> dd_loop()
  {

    List <Text> lt1 = [];

    for( var gf in currenciesList)
      lt1.add(Text(gf));



    return lt1;
  }

}
