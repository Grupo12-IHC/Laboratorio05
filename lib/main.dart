
import 'package:flutter/material.dart';
import 'operaciones.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
void main() {
  runApp(MyApp());
}
Operaciones usuario = Operaciones();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NUMEROLOGIA',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white ,
          textTheme: Theme.of(context).textTheme.apply(
            displayColor: Colors.white,
          ),
        ),
        routes: <String, WidgetBuilder>{
          "/inicio" : (BuildContext context) => Inicio(),
          "/acontecimientoDelDia" : (BuildContext context) => AcontecimientoDelDia(),
          "/urgenciaInterior" : (BuildContext context) => UrgenciaInterior(),
          "/tonicaDelDia" : (BuildContext context) => TonicaDelDia(),
          "/tonicaFundamental" : (BuildContext context) => TonicaFundamental(),
          "/cabalaDelAno" : (BuildContext context) => CabalaDelAno(),
        } ,
        home: Bienvenida()
    );
  }
}
class Bienvenida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image:
          DecorationImage(image: AssetImage("assets/images/bienvenida.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(text: TextSpan(
                children: [TextSpan(
                    text: "ESTUDIO" + "\n" + "NUMEROLÓGICO",
                    style: GoogleFonts.satisfy(
                      fontSize: 45,
                    )
                )
                ]
            ), textAlign: TextAlign.center,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/inicio");
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 15),
                          blurRadius: 30,
                          color: Color(0xFF666666).withOpacity(.99),
                        )
                      ]
                  ),
                  child: Text(
                    "CONTINUAR",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

class Inicio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NUMEROLOGIA',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white ,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: Colors.white,
        ),
      ),
      routes: <String, WidgetBuilder>{
        "/inicio" : (BuildContext context) => Inicio(),
        "/menu" : (BuildContext context) => Menu(),
        "/acontecimientoDelDia" : (BuildContext context) => AcontecimientoDelDia(),
        "/urgenciaInterior" : (BuildContext context) => UrgenciaInterior(),
        "/tonicaDelDia" : (BuildContext context) => TonicaDelDia(),
        "/tonicaFundamental" : (BuildContext context) => TonicaFundamental(),
        "/cabalaDelAno" : (BuildContext context) => CabalaDelAno(),
      } ,
      home: Scaffold(
          body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image:
              DecorationImage(image: AssetImage("assets/images/bienvenida.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: MyCustomForm(),
          )
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 1),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.20),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}

class Menu extends StatelessWidget {
  @override

  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: new Text(
            "ESTUDIO NUMEROLÓGICO",
            style: GoogleFonts.satisfy(
              fontSize: 22,
            )
        ),
        backgroundColor: Color.fromRGBO(51,0, 102, 1),

      ),
      body: Container(
        padding: EdgeInsets.only(
          top: size.height/4,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          image:
          DecorationImage(image: AssetImage("assets/images/bienvenida.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: <Widget> [
            TextFieldContainer(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/acontecimientoDelDia");
                },
                child: Text(
                    "1. ACONTECIMIENTO DEL DÍA",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.satisfy(
                      fontSize: 20,
                      color: Colors.white,
                    )
                ),
              ),
            ),
            TextFieldContainer(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/urgenciaInterior");
                },
                child: Text(
                    "2. URGENCIA INTERIOR",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.satisfy(
                      fontSize: 20,
                      color: Colors.white,
                    )
                ),
              ),
            ),
            TextFieldContainer(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/tonicaDelDia");
                },
                child: Text(
                    "3. TONICA DEL DÍA",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.satisfy(
                      fontSize: 20,
                      color: Colors.white,
                    )
                ),
              ),
            ),
            TextFieldContainer(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/tonicaFundamental");
                },
                child: Text(
                    "4. TONICA FUNDAMENTAL",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.satisfy(
                      fontSize: 20,
                      color: Colors.white,
                    )
                ),
              ),
            ),
            TextFieldContainer(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/cabalaDelAno");
                },
                child: Text(
                    "5. CABALA DEL AÑO",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.satisfy(
                      fontSize: 20,
                      color: Colors.white,
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TonicaFundamental extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51,0, 102, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51,0, 102, 0.9),
        elevation: 0,
        title: Text("TONICA FUNDAMENTAL"),
      ),
      body: Body(
        usuario.interpretacionTonicoFundamental(),
      ),
    );
  }
}
class TonicaDelDia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51,0, 102, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51,0, 102, 0.9),
        elevation: 0,
        title: Text("TONICA DEL DÍA"),
      ),
      body: Body(
        usuario.interpretacionTonicaDelDia(),
      ),
    );
  }
}
class UrgenciaInterior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51,0, 102, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51,0, 102, 0.9),
        elevation: 0,
        title: Text("URGENCIA INTERIOR"),
      ),
      body: Body(
        usuario.interpretacionUrgenciaInterior(),
      ),
    );
  }
}
class AcontecimientoDelDia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51,0, 102, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51,0, 102, 0.9),
        elevation: 0,
        title: Text("ACONTECIMIENTO DEL DÍA "),
      ),
      body: Body(
        usuario.interpretacionAcontecimientoDelDia(),
      ),
    );
  }
}
class CabalaDelAno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51,0, 102, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51,0, 102, 0.9),
        elevation: 0,
        title: Text("CABALA DEL AÑO"),
      ),
      body: Body2(
        usuario.cabalaDelAno,
      ),
    );
  }
}
class Body extends StatelessWidget {
  String interpretacion;
  Body( String interpretacion){
    this.interpretacion = interpretacion;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(interpretacion);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height*0.3),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24 )
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 225,
                        width: 400,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        child: Text(
                          "\n" + interpretacion,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/images/1.jpg',
                            width: 325,
                            height: 200,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment:  CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Número: ",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4
                                            .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )
                                    )
                                  ]
                              )
                          ),
                          Expanded(
                            child: Container(
                              height: 325,
                              width: 160,
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: new Center(
                                  child: new Text(
                                    interpretacion.substring(0,1),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 120,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
class Body2 extends StatelessWidget {
  String interpretacion;
  Body2( String interpretacion){
    this.interpretacion = interpretacion;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(interpretacion);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height*0.3),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24 )
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 230,
                        width: 900,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        child: Text(
                          "\n" + interpretacion,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/images/1.jpg',
                            width: 300,
                            height: 200,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment:  CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Interpretación: ",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4
                                            .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )
                                    )
                                  ]
                              )
                          ),
                          Expanded(
                            child: Container(
                              height: 350,
                              width: 160,
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm>{

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {


    String nameValue;
    String mesValue;
    String yearValue;
    String diaValue;

    //String horaValue;

    final nameController = TextEditingController();
    final mesController = TextEditingController();
    final yearController= TextEditingController();
    final diaController = TextEditingController();
    //final horaController = TextEditingController();

    Size size = MediaQuery.of(context).size;
    // Build a Form widget using the _formKey created above.

    return Form(

      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image:
          DecorationImage(image: AssetImage("assets/images/bienvenida.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: size.width * 0.8,
                  child: Text(
                    "INGRESE SUS DATOS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.withOpacity(.70),
                    borderRadius: BorderRadius.circular(20),
                  )
              ),
              TextFieldContainer(
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                        labelText: "NOMBRE COMPLETO:",
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(.70),
                        ),
                        //hintText: "nombre completo",
                        contentPadding: const EdgeInsets.all(10)
                    ),
                    keyboardType: TextInputType.name,
                    validator:(value){
                      if(value.isEmpty){
                        return 'Campo Obligatorio';
                      }
                      return null;
                    },
                    style: TextStyle(
                      color: Colors.white.withOpacity(.60),
                    ),
                  )
              ),
              TextFieldContainer(
                  child: TextFormField(
                    controller: yearController,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                        ),
                        labelText: "AÑO DE NACIMIENTO:",
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(.70),
                        ),
                        //hintText: "nombre completo",
                        contentPadding: const EdgeInsets.all(10)
                    ),
                    keyboardType: TextInputType.number,
                    validator:(value){
                      if(value.isEmpty){
                        return 'Campo Obligatorio';
                      }
                      return null;
                    },
                    style: TextStyle(
                      color: Colors.white.withOpacity(.60),
                    ),
                  )
              ),
              TextFieldContainer(
                  child: TextFormField(
                    controller: mesController,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                        ),
                        labelText: "MES DE NACIMIENTO:",
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(.70),
                        ),
                        contentPadding: const EdgeInsets.all(10)
                    ),
                    keyboardType: TextInputType.number,

                    validator:(value){
                      if(value.isEmpty){
                        return 'Campo Obligatorio';
                      }
                      return null;
                    },
                    style: TextStyle(
                      color: Colors.white.withOpacity(.60),
                    ),
                  )
              ),
              TextFieldContainer(
                  child: TextFormField(
                    controller: diaController,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                        ),
                        labelText: "DÍA DE NACIMIENTO:",
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(.70),
                        ),
                        //hintText: "nombre completo",
                        contentPadding: const EdgeInsets.all(10)
                    ),
                    keyboardType: TextInputType.number,
                    validator:(value){
                      if(value.isEmpty){
                        return 'Campo Obligatorio';
                      }
                      return null;
                    },
                    style: TextStyle(
                      color: Colors.white.withOpacity(.60),
                    ),
                  )
              ),
              GestureDetector(

                onTap: () {
                  print(diaValue);
                  diaValue = diaController.text;
                  yearValue = yearController.text;
                  mesValue = mesController.text;
                  nameValue = nameController.text;
                  //horaValue = horaController.text;
                  var now = new DateTime.now();
                  var hour = new DateFormat.j();
                  String formattedHour = hour.format(now);
                  String hours = formattedHour.substring(0,2);
                  if (
                  diaController.text != "" && yearController.text != "" && mesController.text != "" && nameController.text != "" &&
                      diaController.text.length == 2 && yearController.text.length == 4 && mesController.text.length == 2

                  ) {
                    Navigator.pushNamed(context, "/menu");
                  }
                  String fecha = diaValue.toString() + " " +  mesValue.toString() + " " + yearValue.toString();
                  usuario.nombreCompleto = nameValue;
                  usuario.fechaNacimiento = fecha;
                  //usuario.horaAcontecimiento = int.parse(horaValue);
                  usuario.horaAcontecimiento = int.parse(hours);
                  print(diaValue);
                  print(mesValue);
                  print(nameValue);
                  print(yearValue);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 15),
                          blurRadius: 30,
                          color: Color(0xFF666666).withOpacity(.99),
                        )
                      ]
                  ),
                  child: Text(
                    "CONTINUAR",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )

            ]
        ),
      ),
    );
  }
}





/*import 'package:flutter/material.dart';
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
            top: 240,
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
                      color: Colors.blue,
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
      'Bienvenido !!!' + '\n'
          'Estudio numerologico' + '\n',
      softWrap: true,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 34,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4
          ..color = Colors.blue,
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
        "/parte4" : (BuildContext context) => Parte4(),
        "/parte5" : (BuildContext context) => Parte5(),
      } ,
      home: Scaffold(
        appBar: AppBar(
          title: Text("INGRESE SUS DATOS"),
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
    String horaValue;

    final nameController = TextEditingController();
    final mesController = TextEditingController();
    final yearController= TextEditingController();
    final diaController = TextEditingController();
    final horaController = TextEditingController();
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
                labelText: "Nombre Completo:",
                contentPadding: const EdgeInsets.all(20)
            ),
            validator:(value){
              if(value.isEmpty){
                return 'Campo Obligatorio';
              }
              return null;
            },
          ),
          TextFormField(
            controller: yearController,
            decoration: InputDecoration(
                labelText: "Año de nacimiento:",
                contentPadding: const EdgeInsets.all(20)
            ),
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
            decoration: InputDecoration(
                labelText: "Dia de nacimiento:",
                contentPadding: const EdgeInsets.all(20)
            ),
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
            decoration: InputDecoration(
                labelText: "Mes de nacimiento:",
                contentPadding: const EdgeInsets.all(20)
            ),
            keyboardType: TextInputType.number,
            validator: (value){
              if(value.isEmpty){
                return 'Campo Obligatorio';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: "Hora de Acontecimiento:",
                contentPadding: const EdgeInsets.all(20)
            ),
            controller: horaController,
            keyboardType: TextInputType.number,
            validator:(value){
              if(value.isEmpty){
                return 'Campo Obligatorio';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {

                }
                diaValue = diaController.text;
                yearValue = yearController.text;
                mesValue = mesController.text;
                nameValue = nameController.text;
                horaValue = horaController.text;

                String fecha = diaValue.toString() + " " +  mesValue.toString() + " " + yearValue.toString();
                usuario.nombreCompleto = nameValue;
                usuario.fechaNacimiento = fecha;
                usuario.horaAcontecimiento = int.parse(horaValue);
                print(fecha);
                print(nameValue);
                Navigator.pushNamed(context, '/menu');

              },
              child: Text('SIGUIENTE'),
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
      '\n' + usuario.interpretacionUrgenciaInterior() + '\n' ,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20),
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
        '\n' + usuario.interpretacionTonicoFundamental()+ '\n' ,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 23),
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
      '\n' + usuario.interpretacionTonicaDelDia() + '\n' ,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 21),
    ),
  );
}

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
      '\n' + usuario.interpretacionAcontecimientoDelDia() + '\n' ,
      style: TextStyle(fontSize: 16),
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
        '\n' + usuario.cabalaDelAno + '\n' ,
      style: TextStyle(fontSize: 20)
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
                        color: Colors.blue,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/parte4");
                        },
                        child: SizedBox(
                          width: 290,
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
                        color: Colors.blue,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/parte2");
                        },
                        child: SizedBox(
                          width: 120,
                          height: 100,
                          child: Center(
                            child: Text("TONICA FUNDAMENTAL",
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
                        color: Colors.blue,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/parte3");
                        },
                        child: SizedBox(
                          width: 120,
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
                        color: Colors.blue,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/parte1");
                        },
                        child: SizedBox(
                          width: 120,
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
                        color: Colors.blue,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/parte5");
                        },
                        child: SizedBox(
                          width: 120,
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
}*/