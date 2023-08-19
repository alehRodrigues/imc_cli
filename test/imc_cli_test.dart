import 'package:imc_cli/pessoa.model.dart';
import 'package:test/test.dart';

void main() {
  late Pessoa pessoa;

  test('IMC deve ser Obesidade grau 3 para altura 1.68 e peso 145', () {
    pessoa = Pessoa.createPessoa();
    pessoa.calcularPeso('145');
    pessoa.calcularAltura('1.68');
    expect(pessoa.imc(), '(imc = 51.37) - Obesidade grau 3');
  });

  test('IMC deve ser Obesidade grau 3 para altura 1.68 e peso 125', () {
    pessoa = Pessoa.createPessoa();
    pessoa.calcularPeso('125');
    pessoa.calcularAltura('1.68');
    expect(pessoa.imc(), '(imc = 44.29) - Obesidade grau 3');
  });

  test('IMC deve ser Obesidade grau 2 para altura 1.68 e peso 105', () {
    pessoa = Pessoa.createPessoa();
    pessoa.calcularPeso('105');
    pessoa.calcularAltura('1.68');
    expect(pessoa.imc(), '(imc = 37.20) - Obesidade grau 2');
  });

  test('IMC deve ser Obesidade grau 1 para altura 1.68 e peso 85', () {
    pessoa = Pessoa.createPessoa();
    pessoa.calcularPeso('85');
    pessoa.calcularAltura('1.68');
    expect(pessoa.imc(), '(imc = 30.12) - Obesidade grau 1');
  });

  test('IMC deve ser Saudável para altura 1.68 e peso 65', () {
    pessoa = Pessoa.createPessoa();
    pessoa.calcularPeso('65');
    pessoa.calcularAltura('1.68');
    expect(pessoa.imc(), '(imc = 23.03) - Saudável');
  });

  test('IMC deve ser Saudável leve para altura 1.68 e peso 55', () {
    pessoa = Pessoa.createPessoa();
    pessoa.calcularPeso('55');
    pessoa.calcularAltura('1.68');
    expect(pessoa.imc(), '(imc = 19.49) - Saudável');
  });

  test('IMC deve ser Magreza leve para altura 1.68 e peso 45', () {
    pessoa = Pessoa.createPessoa();
    pessoa.calcularPeso('49');
    pessoa.calcularAltura('1.68');
    expect(pessoa.imc(), '(imc = 17.36) - Magreza leve');
  });

  test('IMC deve ser Magreza grave para altura 1.68 e peso 35', () {
    pessoa = Pessoa.createPessoa();
    pessoa.calcularPeso('35');
    pessoa.calcularAltura('1.68');
    expect(pessoa.imc(), '(imc = 12.40) - Magreza grave');
  });
}
