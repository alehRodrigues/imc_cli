import 'package:dart_console/dart_console.dart';
import 'package:imc_cli/pessoa.model.dart';

void main(List<String> arguments) {
  final console = Console();
  bool sair = false;
  console.resetCursorPosition();

  console.writeLine(
    'Calculadora de IMC',
    TextAlignment.center,
  );

  do {
    try {
      var pessoa = Pessoa.createPessoa();
      console.clearScreen();
      console.writeLine('Informe seu peso (kg): ');
      var altura = console.readLine();
      pessoa.calcularPeso(altura);
      console.writeLine('Informe sua altura (m): ');
      var peso = console.readLine();
      pessoa.calcularAltura(peso);
      console.writeLine('Seu IMC é: ${pessoa.imc()}');

      console.writeLine('Deseja sair? (S/N) s');

      var resposta = console.readLine();

      if (resposta == 'S' || resposta == 's' || resposta == '') {
        sair = true;
      }
    } catch (e) {
      console.writeLine(e.toString());
      console.writeLine('Pressione qualquer tecla para terminar');
      console.readKey();
    }
  } while (!sair);
}
