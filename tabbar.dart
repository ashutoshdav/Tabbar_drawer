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
      home: TabBarclass(),
    );
  }
}
class TabBarclass extends StatefulWidget {
  const TabBarclass({Key? key}) : super(key: key);

  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBarclass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('TabBar Example'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.grey,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          bottom: TabBar(
            tabs: [
              Text(
                'Virat',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Dhoni',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Sachin',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              
              child: Image.asset('image/virat.jpg'),
            ),
            Container(
             
              child: Image.asset('image/dhoni.jpg'),
            ),
            Container(
              
              child: Image.asset('image/sachin2.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}