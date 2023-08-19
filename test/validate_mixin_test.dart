import 'package:imc_cli/custom_exceptions.dart';
import 'package:imc_cli/validate.mixin.dart';
import 'package:test/test.dart';

void main() {
  var mixinMock = ValidaMixinTest();

  test('Deve lançar EntradaNulaException para entrada nula', () {
    expect(() => mixinMock.validarEntrada(null),
        throwsA(isA<EntradaNulaException>()));
  });

  test('Deve lançar EntradaNulaException para entrada vazia', () {
    expect(() => mixinMock.validarEntrada(''),
        throwsA(isA<EntradaNulaException>()));
  });

  test('Deve lançar EntradaMalFormatadaException para entrada mal formatada',
      () {
    expect(() => mixinMock.validarEntrada('a'),
        throwsA(isA<EntradaMalFormatadaException>()));
  });

  test('Deve lançar EntradaNegativaException para entrada negativa', () {
    expect(() => mixinMock.validarEntrada('-1'),
        throwsA(isA<EntradaNegativaException>()));
  });

  test('Deve retornar void para entrada válida', () {
    expect(() => mixinMock.validarEntrada('1'), isA<void>());
  });

  test('Deve retornar void para entrada válida', () {
    expect(() => mixinMock.validarEntrada('1.68'), isA<void>());
  });
}
