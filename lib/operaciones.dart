import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Operaciones {
  //Parámetros que se exigen en el primer panel de la aplicación
  String _nombreCompleto;
  String _fechaNacimiento;

  //Parámetros adicionales para calcular el acontecimiento del día
  String _fechaInvestigar;
  int _horaAcontecimiento;

  //Resultados de las operaciones
  int _urgenciaInterior;
  int _tonicoFundamental;
  int _tonicaDelDia;
  String _acontecimientoDelDia;
  String _cabalaDelAno; //Kabala del año

  //Map, que contienen las interpretaciones de resultados de las operaciones
  Map<int, String> interpretacionNumerosMap = {
    1: 'El número 1 representa la sabiduría, el Astro Rey, el que nos da la vida',
    2: 'El número 2 representa la creación, aprender a manejar las ideas y los negocios',
    3: 'El número 3 representa la vida, permite la realización de nuestros caros anhelos',
    4: 'El número 4 representa los cuatro cuerpos, el aspecto económico y la reflexión',
    5: 'El número 5 representa la inteligencia, símbolo de poder',
    6: 'El número 6 representa el amor, la reciprocidad, fertilidad y la amorosidad',
    7: 'El número 7 representa la eficiencia, integridad y concentración',
    8: 'El número 8 representa la infinidad, la moderación, el caduceo y la repartición con justicia',
    9: 'El número 9 representa el sexo, la lucha entre sí mismo, contra la naturaleza y contra todo'
  };
  Map<int, String> interpretacionNumerosMap2 = {
    1: 'Este número indica que la persona tiene que trabajar con mucha voluntad, con ideas originales, ser emprendedor.',
    2: 'Este número hace a la persona firme, sólida.',
    3: 'Este número indica que la persona tiene que trabajar con arte y belleza en todo lo que haga.',
    4: 'Este número indica que la persona tiene que poner las bases firmes en sus proyectos y trabajos',
    5: 'Este número indica que la persona tiene que ver el pro y el contra de todo lo que se proponga.',
    6: 'Este número indica que la persona tiene que ser decisivo y poner cariño a lo que haga.',
    7: 'Este número indica que la persona tiene que poner mucho empeño en todo lo que haga.',
    8: 'Este número indica que la persona tiene que ser muy paciente, saber esperar.',
    9: 'Este número indica que la persona tiene que ser generosa y genial, de preferencia trabajar.'
  };
  Map<int, String> interpretacionNumerosMap3 = {
    1: 'Este número hace a la persona emprendedora, original, con voluntad.',
    2: 'Este número hace a la persona sociable, con imaginación.',
    3: 'Este número hace a la persona creativa, con arte y belleza.',
    4: 'Este número hace a la persona firme, sólida.',
    5: 'Este número hace a la persona razonativa, con rigor, propensa al aprendizaje.',
    6: 'Este número hace a la persona cariñosa, indecisa.',
    7: 'Este número hace a la persona tendiente a luchar.',
    8: 'Este número hace a la persona paciente.',
    9: 'Este número hace a la persona generosa, con ideas geniales, independiente.'
  };
  Map<int, String> interpretacionNumerosMap4 = {
    1: 'Es hora de regresar al punto donde aquello que te perturba comenzó, es un renacer.',
    2: 'Trabaja en ti mismo, incluso alguien puede estarte ocultando algo y ese número te lo recuerda.',
    3: 'Sientes desconfianza de quien te rodea, alguien esta hablando mal de ti.',
    4: 'Es hora del cambio tanto en lo interior como en lo exterior, mantente al pendiente de tu salud.',
    5: 'Hoy un amor cerca de ti, que te conoce muy bien pero por quien debes mantenerte firme.',
    6: 'No confíes de todo lo que pasa a tu alrededor, hay que hacer las cosas con cautela y triunfarás.',
    7: 'Una hora ideal para alzar la voz y pedir un deseo.',
    8: 'Se paciente, medita y habla con tu ángel o expresa esto que te atormenta.',
    9: 'Tu hora de éxito, cosas maravillosas están por suceder.'
  };
  //Map, que contienen las interpretaciones de los números de la cabala
  Map<int, String> interpretacionCabalaDelAnoMap = {
    1: 'El arcano 1 representa la voluntad y poder',
    2: 'El arcano 2 representa la ciencia oculta y favorable',
    3: 'El arcano 3 representa la producción material y Espiritual',
    4: 'El arcano 4 representa el progreso',
    5: 'El arcano 5 representa el karma',
    6: 'El arcano 6 representa la victoria y la buena suerte',
    7: 'El arcano 7 representa las guerras, luchas y amargura',
    8: 'El arcano 8 representa el sufrimiento dolor',
    9: 'El arcano 9 representa la soledad',
    10: 'El arcano 10 representa el cambio y buenos negocios',
    11: 'El arcano 11 representa la ley y no temor',
    12: 'El arcano 12 representa el dolor y pruebas',
    13: 'El arcano 13 representa transformaciones y cambio total',
    14: 'El arcano 14 representa larga vida y estabilidad	',
    15: 'El arcano 15 representa peligros y fracaso amoroso',
    16: 'El arcano 16 representa la fragilidad',
    17: 'El arcano 17 representa la esperanza',
    18: 'El arcano 18 representa las enfermedades',
    19: 'El arcano 19 representa el éxito y buena suerte',
    20: 'El arcano 20 representa la resurrección',
    21: 'El arcano 21 representa la transmutación',
    22: 'El arcano 22 representa el triunfo y el poder'
  };

  //Constructor
  /*Operaciones(String nombreCompleto, String fechaNacimiento) {
    this._nombreCompleto = nombreCompleto;
    this._fechaNacimiento = fechaNacimiento;
  }*/

  //Setters y Getters
  set nombreCompleto(String nombre) {
    this._nombreCompleto = nombre;
  }

  String get nombreCompleto {
    return _nombreCompleto;
  }

  set fechaNacimiento(String fecha) {
    this._fechaNacimiento = fecha;
  }

  String get fechaNacimiento {
    return _fechaNacimiento;
  }

  set fechaInvestigar(String fecha) {
    this._fechaInvestigar = fecha;
  }

  String get fechaInvestigar {
    return _fechaInvestigar;
  }

  set horaAcontecimiento(int hora) {
    this._horaAcontecimiento = hora;
  }

  int get horaAcontecimiento {
    return _horaAcontecimiento;
  }

  String interpretacionUrgenciaInterior() {
    calcularUrgenciaInterior();
    print("urgencia interior");
    print(_urgenciaInterior);
    return interpretacionNumeros3(_urgenciaInterior);
  }

  String interpretacionTonicoFundamental() {
    calcularTonicoFundamental();
    return interpretacionNumeros2(_tonicoFundamental);
  }

  String interpretacionTonicaDelDia() {
    calcularUrgenciaInterior();
    calcularTonicoFundamental();
    calcularTonicaDelDia();
    return interpretacionNumeros(_tonicaDelDia);
  }

  String interpretacionAcontecimientoDelDia() {
    calcularFechaActual();
    calcularTonicoFundamental();
    calcularAcontecimientoDelDia();
    return _acontecimientoDelDia;
  }

  String get cabalaDelAno {
    calcularCabalaDelAno();
    return _cabalaDelAno;
  }

  //Métodos para resolver las operaciones
  calcularUrgenciaInterior() {
    int urgencia = sumaDigitosFecha(_fechaNacimiento);
    _urgenciaInterior = urgencia;
  }

  calcularTonicoFundamental() {
    String comodin = _nombreCompleto;
    int longitud, tonico;
    //comodin.trim(); //Eliminar los espacios de la variable comodin
    print(comodin);
    comodin.replaceAll(' ', '');//Eliminar los espacios de la variable comodin
    longitud = comodin.length -3 + _urgenciaInterior;
    print(comodin.length);
    print(longitud);
    tonico = sumaDigitosHastaUnDigito(longitud.toString());
    this._tonicoFundamental = tonico;
  }

  calcularTonicaDelDia() {
    int suma, tonico;
    suma = sumaDigitosHastaUnDigito(this._fechaInvestigar) + this._tonicoFundamental;
    tonico = sumaDigitosHastaUnDigito(suma.toString());
    this._tonicaDelDia = tonico;
  }

  calcularAcontecimientoDelDia() {
    String dia = _fechaInvestigar.substring(0, 2);
    String mesAno = _fechaInvestigar.substring(2);
    int hora = _horaAcontecimiento;
    int diaBase = int.parse(dia);
    print("dia base");
    print(diaBase);
    //String dia1 =
    //operacionAcontecimientoDelDia((diaBase + 0).toString(), mesAno, hora);
    String dia1 = operacionAcontecimientoDelDia(
        sumaDigitosHastaUnDigito((diaBase ).toString()).toString(),
        mesAno, hora);

    this._acontecimientoDelDia = dia1;
  }

  String operacionAcontecimientoDelDia(String dia, String mesAno, int hora) {
    String fecha = dia + mesAno;
    int sumaFecha = sumaDigitosFechaSinEspacio(fecha);
    print("fecha");
    print(sumaFecha);
    int suma =
    sumaDigitosHastaUnDigito((sumaFecha + _tonicoFundamental).toString());
    print(suma);
    print(_tonicoFundamental);
    print(hora);
    int n = sumaDigitosHastaUnDigito((suma + hora).toString());

    return interpretacionNumeros4(n);
  }

  calcularCabalaDelAno() {
    String fecha, c1, c2, c3;
    int cabala1, cabala2, cabala3;
    int sumaFecha1, sumaFecha2, sumaFecha3;
    fecha = _fechaNacimiento.substring(
        _fechaNacimiento.length - 4, _fechaNacimiento.length);
    print(fecha);
    sumaFecha1 = int.parse(fecha) + sumaDigitos(fecha);
    cabala1 = sumaDigitosHastaUnDigito(sumaFecha1.toString());
    sumaFecha2 = sumaFecha1 + sumaDigitos(sumaFecha1.toString());
    cabala2 = sumaDigitosHastaUnDigito(sumaFecha2.toString());
    sumaFecha3 = sumaFecha2 + sumaDigitos(sumaFecha2.toString());
    cabala3 = sumaDigitosHastaUnDigito(sumaFecha3.toString());
    c1 = cabala1.toString() ;
    c2 = cabala2.toString();
    c3 = cabala3.toString();
    unirCabalaDelAno(c1 + c2 + c3); //Se concatenan los números de cabalas
  }

  //Método que suma los digitos de un número(String)
  int sumaDigitos(String numero) {
    int suma = 0,
        digito;
    for (int i = 0; i < numero.length; i++) {
      digito = int.parse(numero.substring(i, i + 1));
      suma += digito;
    }
    return suma;
  }

  int sumaDigitosHastaUnDigito(String numero) {
    int suma = int.parse(numero); //En caso numero sea un digito
    String conversion = numero;
    int longitud = conversion.length;
    //Mientras la longitud del número sea mayor a un digito
    while (longitud > 1) {
      suma = sumaDigitos(conversion);
      conversion = suma.toString();
      longitud = conversion.length;
    }
    return suma;
  }


  int sumaDigitosFecha(String fecha) {
    //Inicializa valores enteros
    int suma1, suma2, suma3, sumaFinal;
    String numero1 = fecha.substring(0, fecha.indexOf(" "));
    print(numero1);
    fecha = fecha.substring(fecha.indexOf(" ") + 1);
    String numero2 = fecha.substring(0, fecha.indexOf(" "));
    print(numero2);
    fecha = fecha.substring(fecha.indexOf(" ") + 1);
    String numero3 = fecha;
    print(numero3);
    suma1 = sumaDigitosHastaUnDigito(numero1);
    suma2 = sumaDigitosHastaUnDigito(numero2);
    suma3 = sumaDigitosHastaUnDigito(numero3);
    sumaFinal = suma1 + suma2 + suma3;
    print("s");
    print(sumaFinal);
    return sumaDigitosHastaUnDigito(sumaFinal.toString());
  }

  unirCabalaDelAno(String cabala) {
    String fecha, c1, c2, c3;
    int cabala1, cabala2, cabala3;
    int sumaFecha1, sumaFecha2, sumaFecha3;
    fecha = _fechaNacimiento.substring(
        _fechaNacimiento.length - 4, _fechaNacimiento.length);
    print(fecha);
    sumaFecha1 = int.parse(fecha) + sumaDigitos(fecha);
    cabala1 = sumaDigitosHastaUnDigito(sumaFecha1.toString());
    sumaFecha2 = sumaFecha1 + sumaDigitos(sumaFecha1.toString());
    cabala2 = sumaDigitosHastaUnDigito(sumaFecha2.toString());
    sumaFecha3 = sumaFecha2 + sumaDigitos(sumaFecha2.toString());
    cabala3 = sumaDigitosHastaUnDigito(sumaFecha3.toString());

    int numero1 = int.parse(cabala.substring(0, 1)); //1er dígito
    int numero2 = int.parse(cabala.substring(1, 2)); //2do dígito
    int numero3 = int.parse(cabala.substring(2, 3)); //3er dígito
    String interpretacion1 =
        " Año " + sumaFecha1.toString() +', número ' + numero1.toString() + ': '+ interpretacionCabalaDelAno(numero1);
    String interpretacion2 =
        " Año " + sumaFecha2.toString() + ', número ' + numero2.toString() + ': ' + interpretacionCabalaDelAno(numero2);
    String interpretacion3 =
        " Año " + sumaFecha3.toString() + ', número ' + numero3.toString() + ': '+  interpretacionCabalaDelAno(numero3);
    String interpretacion =
        interpretacion1 + '\n' + interpretacion2 + '\n' + interpretacion3;
    this._cabalaDelAno = interpretacion;
  }

  //Métodos que interpretan los resultados de las operaciones
  String interpretacionNumeros(int numero) {
    String interpretacion;
    //Se busca la interpretación en el Map interpretacionNumeros
    interpretacion =
        numero.toString() + ': ' + interpretacionNumerosMap[numero];
    return interpretacion;
  }
  String interpretacionNumeros2(int numero) {
    String interpretacion;
    //Se busca la interpretación en el Map interpretacionNumeros
    interpretacion =
        numero.toString() + ': ' + interpretacionNumerosMap2[numero];
    return interpretacion;
  }
  String interpretacionNumeros3(int numero) {
    String interpretacion;
    //Se busca la interpretación en el Map interpretacionNumeros
    interpretacion =
        numero.toString() + ': ' + interpretacionNumerosMap3[numero];
    return interpretacion;
  }
  String interpretacionNumeros4(int numero) {
    String interpretacion;
    //Se busca la interpretación en el Map interpretacionNumeros
    interpretacion =
        numero.toString() + ': ' + interpretacionNumerosMap4[numero];
    return interpretacion;
  }

  String interpretacionCabalaDelAno(int numero) {
    String interpretacion;
    //Se busca la interpretación en el Map interpretacionCabalaDelAno
    interpretacion = interpretacionCabalaDelAnoMap[numero];
    return interpretacion;
  }

  calcularFechaActual() {
    var now = new DateTime.now();

    var formatter = new DateFormat("dd-MM-yyyy");
    String formattedDate = formatter.format(now);
    String fecha = formattedDate.replaceAll('-', '');
    print(formattedDate);
    print(fecha);
    sumaDigitosFechaSinEspacio(fecha);
    this._fechaInvestigar = fecha;
  }

  int sumaDigitosFechaSinEspacio(String fecha) {
    //Inicializa valores enteros
    int suma1, suma2, suma3, sumaFinal;
    String numero1 = fecha.substring(0, 2);
    String numero2 = fecha.substring(2, 4);
    String numero3 = fecha.substring(4);
    suma1 = sumaDigitosHastaUnDigito(numero1);
    suma2 = sumaDigitosHastaUnDigito(numero2);
    suma3 = sumaDigitosHastaUnDigito(numero3);
    sumaFinal = suma1 + suma2 + suma3;
    return sumaDigitosHastaUnDigito(sumaFinal.toString());
  }
}