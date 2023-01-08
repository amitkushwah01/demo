import 'package:drawer/slas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title:'My Application',
      theme:ThemeData(primarySwatch:Colors.blue),
      home:slas()
    );
  }
}
class Mainpage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
      return pagestate();
    }
}
class pagestate extends State<Mainpage>
{
  var cl=Colors.orange;
  Widget build(BuildContext context)
  {
    return Scaffold(
      drawer: Drawer(),
      appBar:AppBar(title:Text('AppBar')),
      body:
      InkWell(
        onTap:() {
          cl=Colors.red;
          setState(() {});
        },
        onDoubleTap: () {
          cl=Colors.orange;
          setState(() {});
        },
        child: Container(color:cl,height: double.infinity,width: double.infinity,child:
        Center(child: Text('Tap Red and Double Tap Orange',style: TextStyle(fontSize: 25),))))
    );
  }
}
//