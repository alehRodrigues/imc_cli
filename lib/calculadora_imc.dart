abstract interface class CalculadoraImc {
  String calcularImc(double peso, double altura);
}

class CalculadoraImcImpl implements CalculadoraImc {
  @override
  String calcularImc(double peso, double altura) {
    var imc = peso / (altura * altura);
    return classificarImc(imc);
  }

  String classificarImc(double imc) {
    switch (imc) {
      case < 16:
        return '(imc = ${imc.toStringAsFixed(2)}) - Magreza grave';
      case >= 16 && < 17:
        return '(imc = ${imc.toStringAsFixed(2)}) - Magreza moderada';
      case >= 17 && < 18.5:
        return '(imc = ${imc.toStringAsFixed(2)}) - Magreza leve';
      case >= 18.5 && < 25:
        return '(imc = ${imc.toStringAsFixed(2)}) - Saudável';
      case >= 25 && < 30:
        return '(imc = ${imc.toStringAsFixed(2)}) - Sobrepeso';
      case >= 30 && < 35:
        return '(imc = ${imc.toStringAsFixed(2)}) - Obesidade grau 1';
      case >= 35 && < 40:
        return '(imc = ${imc.toStringAsFixed(2)}) - Obesidade grau 2';
      default:
        return '(imc = ${imc.toStringAsFixed(2)}) - Obesidade grau 3';
    }
  }
}
