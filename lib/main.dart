import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        routes: <String, WidgetBuilder>{
          "/menu" : (BuildContext context) => Menu(),
          "/inicio" : (BuildContext context) => Inicio(),
          "/parte1" : (BuildContext context) => Parte1(),
          "/parte2" : (BuildContext context) => Parte2(),
          "/parte3" : (BuildContext context) => Parte3(),
          "/parte4" : (BuildContext context) => Parte4(),
          "/parte5" : (BuildContext context) => Parte5(),
        } ,
        home: Bienvenida()
    );
  }
}
class Bienvenida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
        padding: EdgeInsets.only(
          top: 130,
          bottom: 10,
          right: 10,
          left: 10
        ),

          child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    textSection,
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/1.jpg',
                      width: 350,
                      height: 200,
                    )
                  ],
                ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.indigo,
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/inicio");
                      },
                      child: SizedBox(
                        width: 300,
                        height: 50,
                        child: Center(
                          child: Text("INICIAR",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ]
          ),
      ),
    );
  }
  Widget textSection = Container(
    padding: const EdgeInsets.all(10),
    child: Text(
      'Bienvenido' + '\n'
          'Estudio numerologico',
      softWrap: true,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 35,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4
          ..color = Colors.indigo,
      ),
    ),
  );
}
class Inicio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: 130,
            bottom: 10,
            right: 10,
            left: 10
        ),

        child: Column(
          children: [
            Row(
              // Aqui es donde se solicitan los datos.
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    color: Colors.indigo,
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {
                      Navigator.pushNamed(context, "/menu");
                    },
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: Center(
                        child: Text("SIGUIENTE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
class Parte1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("URGENCIA INTERIOR"),),
      body: Center(
        child: Text("URGENCIA INTERIOR"),
      ),
    );
  }
}
class Parte2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("TONICA FUNDAMENTAL"),),
      body: Center(
        child: Text("TONICA FUNDAMENTAL"),
      ),
    );
  }
}
class Parte3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("TONICA DEL DIA"),),
      body: Center(
        child: Text("TONICA DEL DIA"),
      ),
    );
  }
}
class Parte4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("ACONTECIMIENTO DEL DIA"),),
      body: Center(
        child: Text("ACONTECIMIENTO DEL DIA"),
      ),
    );
  }
}
class Parte5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("CABALA DEL AÑO"),),
      body: Center(
        child: Text("CABALA DEL AÑO"),
      ),
    );
  }
}

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: 130,
            bottom: 10,
            right: 10,
            left: 10
        ),
        /*decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.clarin.com/2020/02/05/el-20-del-2-del___y9sTFTym_340x340__1.jpg"),
                alignment: Alignment.topCenter,
                fit: BoxFit.fill)),*/
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.indigo,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/parte4");
                        },
                        child: SizedBox(
                          width: 250,
                          height: 100,
                          child: Center(
                            child: Text("ACONTECIMIENTO DEL DIA",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.indigo,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/parte2");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("TONICA DEL FUNDAMENTAL",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.indigo,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/parte3");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("TONICA DEL DIA",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.indigo,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/parte1");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("URGENCIA INTERIOR",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.indigo,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/parte5");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("CABALA DEL AÑO",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    color: Colors.indigo,
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {
                      Navigator.pushNamed(context, "/inicio");
                    },
                    child: SizedBox(
                      width: 250,
                      height: 50,
                      child: Center(
                        child: Text("RETROCEDER",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}