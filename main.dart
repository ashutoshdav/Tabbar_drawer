import 'package:flutter/material.dart';
import 'package:project_9/tabbar.dart';
import 'package:project_9/Custombar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Home page',style: TextStyle(fontSize: 30,color: Colors.grey),),
      ),

      drawer: Drawerbar(),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.black),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Mybar(),
                  ),
                );
              },
              child: Text('Customized appbar'),
            ),

                SizedBox(height: 10,),
             ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.black),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TabBarclass(),
                  ),
                );
              },
              child: Text('Tabbar'),
            ),
          ],
        ),
      ),
    );
  }
}


class Drawerbar extends StatelessWidget{
  const Drawerbar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child :Container(color: Colors.black,
     child: ListView(
       padding: EdgeInsets.zero,
       children: [
        
         UserAccountsDrawerHeader(
           
           accountName: Text('Ashutosh Dave'),
           accountEmail: Text('Ashutoshdave@gmail.com'),
           currentAccountPicture: CircleAvatar(
             backgroundColor: Colors.black,
             child: Text('A',style: TextStyle(fontSize: 40,color: Colors.grey),),
           ),
           
         ),
         
         ListTile(
           leading: Icon(Icons.settings,color: Colors.grey,),
           title: Text('Setting',style: TextStyle(fontSize: 20,color: Colors.grey),),
           onTap:(){
             Navigator.pop(context);
           },
         ),

         ListTile(
           leading: Icon(Icons.home,color: Colors.grey,),
           title: Text('Home',style: TextStyle(fontSize: 20,color: Colors.grey),),
           onTap:(){
             Navigator.pop(context);
           },
         ),

         ListTile(
           leading: Icon(Icons.contacts,color: Colors.grey,),
           title: Text('Contact us',style: TextStyle(fontSize: 20,color: Colors.grey),),
           onTap:(){
             Navigator.pop(context);
           },
         ),
       ],
     ),
      ),
    );
    
  }
}