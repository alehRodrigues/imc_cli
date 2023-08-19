import 'package:imc_cli/custom_exceptions.dart';

mixin ValidaEntrada {
  void validarEntrada(String? entrada) {
    if (entrada == null || entrada.isEmpty) {
      throw EntradaNulaException();
    }
    if (double.tryParse(entrada) == null) {
      throw EntradaMalFormatadaException();
    }
    if (double.parse(entrada) <= 0) {
      throw EntradaNegativaException();
    }
  }
}

class ValidaMixinTest with ValidaEntrada {}
