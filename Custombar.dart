import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Mybar(),
    );
  }
}

class Custombar extends AppBar{
  Custombar(
    {Key? key,required Widget title,Color backgroundColor = Colors.green,List<Widget>? actions}
  ):super(key: key,
            title: title,
            backgroundColor: backgroundColor,
            actions: actions,
            );
}
class Mybar extends StatefulWidget {
  const Mybar({Key? key}) : super(key: key);

  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<Mybar> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: Custombar(
          backgroundColor: Colors.black,
          title: Text('Custom AppBar'),
          actions: [
            Icon(Icons.favorite),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
              ),
              Icon(Icons.more_vert),
          ],
        ),

        
      );
  }

  
  }