import 'package:flutter/material.dart';
import 'operaciones.dart';

void main() {
  runApp(MyApp());
}
Operaciones usuario = Operaciones();
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
          "/DatosDia" : (BuildContext context) => DatosDia(),
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

class Inicio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      routes: <String, WidgetBuilder>{
        "/menu" : (BuildContext context) => Menu(),
        "/inicio" : (BuildContext context) => Inicio(),
        "/parte1" : (BuildContext context) => Parte1(),
        "/parte2" : (BuildContext context) => Parte2(),
        "/parte3" : (BuildContext context) => Parte3(),
        "/DatosDia" : (BuildContext context) => DatosDia(),
        "/parte4" : (BuildContext context) => Parte4(),
        "/parte5" : (BuildContext context) => Parte5(),
      } ,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),

      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {


    String nameValue;
    String mesValue;
    String yearValue;
    String diaValue;

    final nameController = TextEditingController();
    final mesController = TextEditingController();
    final yearController= TextEditingController();
    final diaController = TextEditingController();
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(labelText: "Nombre Completo:"),
            validator:(value){
              if(value.isEmpty){
                return 'Campo Obligatorio';
              }
              return null;
            },
          ),
          TextFormField(
            controller: yearController,
            decoration: InputDecoration(labelText: "Año de nacimiento:"),
            keyboardType: TextInputType.number,
            validator: (value){
              if(value.isEmpty){
                return 'Campo Obligatorio';
              }
              return null;
            },
          ),
          TextFormField(
            controller: diaController,
            decoration: InputDecoration(labelText: "Dia de nacimiento:"),
            keyboardType: TextInputType.number,
            validator: (value){
              if(value.isEmpty){
                return 'Campo Obligatorio';
              }
              return null;
            },
          ),
          TextFormField(
            controller: mesController,
            decoration: InputDecoration(labelText: "Mes de nacimiento:"),
            keyboardType: TextInputType.number,
            validator: (value){
              if(value.isEmpty){
                return 'Campo Obligatorio';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {

                }
                diaValue = diaController.text;
                yearValue = yearController.text;
                mesValue = mesController.text;
                nameValue = nameController.text;

                String fecha = diaValue.toString() + " " +  mesValue.toString() + " " + yearValue.toString();
                usuario.nombreCompleto = nameValue;
                usuario.fechaNacimiento = fecha;
                print(fecha);
                print(nameValue);
                Navigator.pushNamed(context, '/menu');
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

class Parte1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("URGENCIA INTERIOR"),),
      body: Container(
          child: Container(
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
              ],
            ),
          )
      ),
    );
  }
  Widget textSection = Container(
    child: Text(
      usuario.interpretacionUrgenciaInterior(),
    ),
  );
}
class Parte2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("TONICA FUNDAMENTAL"),),
      body: Container(
          child: Container(
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
              ],
            ),
          )
      ),
    );
  }
  Widget textSection = Container(
    child: Container(
      child: Text(
          usuario.interpretacionTonicoFundamental(),
      ),
    )
  );
}
class Parte3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("TONICA DEL DIA"),),
      body: Container(
          child: Container(
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
              ],
            ),
          )
      ),
    );
  }
  Widget textSection = Container(
    child: Text(
      usuario.interpretacionTonicaDelDia(),
    ),
  );
}

class DatosDia extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      routes: <String, WidgetBuilder>{
        "/menu" : (BuildContext context) => Menu(),
        "/inicio" : (BuildContext context) => Inicio(),
        "/parte1" : (BuildContext context) => Parte1(),
        "/parte2" : (BuildContext context) => Parte2(),
        "/parte3" : (BuildContext context) => Parte3(),
        "/DatosDia" : (BuildContext context) => DatosDia(),
        "/parte4" : (BuildContext context) => Parte4(),
        "/parte5" : (BuildContext context) => Parte5(),
      } ,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),

      ),
    );
  }
}
// Falta implementar el segundo formulario
/*
// Create a Form widget.
class MyCustomForm2 extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState2 extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {


    String horaValue;
    String mesValue;
    String yearValue;
    String diaValue;

    final horaController = TextEditingController();
    final mesController = TextEditingController();
    final yearController= TextEditingController();
    final diaController = TextEditingController();
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: "Hora de Acontecimiento:"),
            keyboardType: TextInputType.number,
            validator:(value){
              if(value.isEmpty){
                return 'Campo Obligatorio';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Año de nacimient:"),
            keyboardType: TextInputType.number,
            validator: (value){
              if(value.isEmpty){
                return 'Campo Obligatorio';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Dia de nacimiento:"),
            keyboardType: TextInputType.number,
            validator: (value){
              if(value.isEmpty){
                return 'Campo Obligatorio';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Mes de nacimiento:"),
            keyboardType: TextInputType.number,
            validator: (value){
              if(value.isEmpty){
                return 'Campo Obligatorio';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                diaValue = diaController.text;
                yearValue = yearController.text;
                mesValue = mesController.text;
                horaValue = horaController.text;

                String fecha = diaValue.toString() + " "+ mesValue.toString() + " "+  yearValue.toString();
                usuario.fechaInvestigar = fecha;
                usuario.horaAcontecimiento = int.parse(horaValue);
                Navigator.pushNamed(context, '/parte4');
              },
              child: Text('SIGUIENTE'),
            ),
          ),
        ],
      ),
    );
  }
}
*/
class Parte4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("ACONTECIMIENTO DEL DIA"),),
      body: Container(
          child: Container(
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
              ],
            ),
          )
      ),
    );
  }
  Widget textSection = Container(
    child: Text(
        "Aqui va el resultado"
    ),
  );
}
class Parte5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("CABALA DEL AÑO"),),
      body: Container(
          child: Container(
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
              ],
            ),
          )
      ),
    );
  }
  Widget textSection = Container(
    child: Text(
      usuario.interpretacionCabalaDelAno(0),
    ),
  );
}

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: Text('OPERACIONES')
      ),
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
                          Navigator.pushNamed(context, "/DatosDia");
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
          ],
        ),
      ),
    );
  }
}