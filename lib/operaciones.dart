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
    return interpretacionNumeros(_urgenciaInterior);
  }

  String interpretacionTonicoFundamental() {
    calcularTonicoFundamental();
    return interpretacionNumeros(_tonicoFundamental);
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
    print(comodin + '------');
    //comodin.replaceAll(' ', '');//Eliminar los espacios de la variable comodin
    longitud = comodin.length;
    print(longitud);
    tonico = sumaDigitosHastaUnDigito(longitud.toString());
    this._tonicoFundamental = tonico;
    print("llegue aqui :3");
  }

  calcularTonicaDelDia() {
    int suma, tonico;
    suma = this._urgenciaInterior + this._tonicoFundamental;
    tonico = sumaDigitosHastaUnDigito(suma.toString());
    this._tonicaDelDia = tonico;
  }

  calcularAcontecimientoDelDia() {
    print("estoy aqui ahora uwu");
    String dia = _fechaInvestigar.substring(0, 2);
    String mesAno = _fechaInvestigar.substring(2);
    int hora = _horaAcontecimiento;
    int diaBase = int.parse(dia);
    //String dia1 =
    //operacionAcontecimientoDelDia((diaBase + 0).toString(), mesAno, hora);
    String dia1 = operacionAcontecimientoDelDia(
        '0' + sumaDigitosHastaUnDigito((diaBase + 0).toString()).toString(),
        mesAno, hora);
    print("mira esto v:");
    print("mira esto v:");

    /*String dia2 =
    operacionAcontecimientoDelDia((diaBase + 1).toString(), mesAno, hora);
    String dia3 =
    operacionAcontecimientoDelDia((diaBase + 2).toString(), mesAno, hora);
    String dia4 =
    operacionAcontecimientoDelDia((diaBase + 3).toString(), mesAno, hora);
    String dia5 =
    operacionAcontecimientoDelDia((diaBase + 4).toString(), mesAno, hora);
    String dia6 =
    operacionAcontecimientoDelDia((diaBase + 5).toString(), mesAno, hora);
    String dia7 =
    operacionAcontecimientoDelDia((diaBase + 6).toString(), mesAno, hora);*/
    String dia2 = operacionAcontecimientoDelDia(
        '0' + sumaDigitosHastaUnDigito((diaBase + 1).toString()).toString(),
        mesAno, hora);
    String dia3 = operacionAcontecimientoDelDia(
        '0' + sumaDigitosHastaUnDigito((diaBase + 2).toString()).toString(),
        mesAno, hora);
    String dia4 = operacionAcontecimientoDelDia(
        '0' + sumaDigitosHastaUnDigito((diaBase + 3).toString()).toString(),
        mesAno, hora);
    String dia5 = operacionAcontecimientoDelDia(
        '0' + sumaDigitosHastaUnDigito((diaBase + 4).toString()).toString(),
        mesAno, hora);
    String dia6 = operacionAcontecimientoDelDia(
        '0' + sumaDigitosHastaUnDigito((diaBase + 5).toString()).toString(),
        mesAno, hora);
    String dia7 = operacionAcontecimientoDelDia(
        '0' + sumaDigitosHastaUnDigito((diaBase + 6).toString()).toString(),
        mesAno, hora);
    String concatenacionDias = dia1 +
        '\n' +
        dia2 +
        '\n' +
        dia3 +
        '\n' +
        dia4 +
        '\n' +
        dia5 +
        '\n' +
        dia6 +
        '\n' +
        dia7;
    print(concatenacionDias);
    this._acontecimientoDelDia = concatenacionDias;
    print(_acontecimientoDelDia + "holiwi");
  }

  String operacionAcontecimientoDelDia(String dia, String mesAno, int hora) {
    print("error?");
    String fecha = dia + mesAno;
    print(fecha);
    int sumaFecha = sumaDigitosFechaSinEspacio(fecha);
    print(sumaFecha);
    int suma =
    sumaDigitosHastaUnDigito((sumaFecha + _tonicoFundamental).toString());
    print("error2 XD?");
    //int acontecimiento = sumaDigitosHastaUnDigito((suma + hora).toString());
    // Aqui esta el error



    
    print("error2 XD?");
    return interpretacionNumeros(suma);
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
    c1 = cabala1.toString();
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
    String numero1 = fecha.substring(0, fecha.indexOf(" ") - 1);
    fecha = fecha.substring(fecha.indexOf(" ") + 1);
    String numero2 = fecha.substring(0, fecha.indexOf(" ") - 1);
    fecha = fecha.substring(fecha.indexOf(" ") + 1);
    String numero3 = fecha;
    suma1 = sumaDigitosHastaUnDigito(numero1);
    suma2 = sumaDigitosHastaUnDigito(numero2);
    suma3 = sumaDigitosHastaUnDigito(numero3);
    sumaFinal = suma1 + suma2 + suma3;
    return sumaDigitosHastaUnDigito(sumaFinal.toString());
  }

  unirCabalaDelAno(String cabala) {
    int numero1 = int.parse(cabala.substring(0, 1)); //1er dígito
    int numero2 = int.parse(cabala.substring(1, 2)); //2do dígito
    int numero3 = int.parse(cabala.substring(2, 3)); //3er dígito
    String interpretacion1 =
        numero1.toString() + ': ' + interpretacionCabalaDelAno(numero1);
    String interpretacion2 =
        numero2.toString() + ': ' + interpretacionCabalaDelAno(numero2);
    String interpretacion3 =
        numero3.toString() + ': ' + interpretacionCabalaDelAno(numero3);
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