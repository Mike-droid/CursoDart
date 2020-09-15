import 'package:flutter/material.dart';
import 'package:flutter_app1_platzi/model/photos.dart';

import 'api/api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Prueba de Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final API api = API();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<List<Photos>>(
          future: api.getPhotos(),
          builder:(BuildContext context, AsyncSnapshot<List<Photos>> snapshot){
            if(snapshot.hasData && snapshot.connectionState == ConnectionState.done){
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(snapshot.data[index].thumbnailUrl),
                        ),
                        title: Text(snapshot.data[index].id.toString()),
                        subtitle: Text('Descripción del album ${snapshot.data[index].albumId}'),
                      ),
                    );
              });
            }else{
              return CircularProgressIndicator();
            }
          },
      )
      /*Center(
        child: CustomGradientButton(
        text: Text('México'),
        width: 150,
        height: 50,
        gradientColors: [Colors.green, Colors.white, Colors.red],
        initialPosition: Alignment.centerLeft,
        finalPosition: Alignment.centerRight,
        function: ()=>print('Hola mundo desde Flutter'),
        leadingIcon: Icon(Icons.person),
        finalIcon: Icon(Icons.add_call),
        /*Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(16),
          child: Text('Hola mundo desde Flutter'.toUpperCase()),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.cyanAccent,
                border: Border.all(
                  color: Colors.pink,
                      width: 5
                )
          ),*/
          //transform: Matrix4.rotationZ(0.3),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods
      */
    );
  }
}

class CustomGradientButton extends StatelessWidget{
  final Text text;
  final double width;
  final double height;
  final List<Color> gradientColors;
  final Alignment initialPosition;
  final Alignment finalPosition;
  final Function function;
  final Icon leadingIcon;
  final Icon finalIcon;

  const CustomGradientButton({Key key,
    @required this.text,
    @required this.width,
    @required this.height,
    @required this.gradientColors,
    @required this.initialPosition,
    @required this.finalPosition,
    @required this.function,
    this.leadingIcon,
    this.finalIcon})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(height/2)),
          gradient: LinearGradient(colors: gradientColors,
            begin: initialPosition,
            end: finalPosition,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(2,-2),
              blurRadius: height * .1,
              spreadRadius: 1
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            leadingIcon ?? Container(),
            text,
            finalIcon ?? Offstage(),
          ],
        ),
      ),
    );
  }
  
}