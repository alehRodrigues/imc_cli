import 'package:imc_cli/calculadora_imc.dart';
import 'package:imc_cli/validate.mixin.dart';

class Pessoa with ValidaEntrada {
  late double _alturaValor;
  late double _pesoValor;
  late CalculadoraImc _calculadoraImc;
  static late Pessoa? _pessoa;

  Pessoa._internal(CalculadoraImc calculadoraImc) {
    _alturaValor = 0;
    _pesoValor = 0;
    _calculadoraImc = calculadoraImc;
  }

  static Pessoa createPessoa() {
    _pessoa = Pessoa._internal(CalculadoraImcImpl());
    return _pessoa!;
  }

  String imc() {
    try {
      return _calculadoraImc.calcularImc(_pesoValor, _alturaValor);
    } catch (e) {
      throw Exception('Erro ao calcular IMC');
    } finally {
      _pessoa = null;
    }
  }

  Pessoa calcularPeso(String? value) {
    validarEntrada(value);

    _pessoa!._pesoValor = double.parse(value!);

    return _pessoa!;
  }

  Pessoa calcularAltura(String? value) {
    validarEntrada(value);

    _pessoa!._alturaValor = double.parse(value!);

    return _pessoa!;
  }
}
