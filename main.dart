import "package:flutter/material.dart";
import "dart:async";
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),()=>Navigator.of(context).push(NewPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(100.0),),
            Text("WELCOME SCREEN IS THIS"),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
class NewPage extends MaterialPageRoute<Null>{
  NewPage():super(builder:(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("SPLASH SCREEN"),centerTitle: true,),
      body: Center(child: Text("WELCOME TO MAIN SCREEN"),),
    );
  });
}

