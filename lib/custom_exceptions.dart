class EntradaNulaException implements Exception {
  String? nome;
  EntradaNulaException([this.nome = 'valor']);

  @override
  String toString() {
    return 'Entrada nula: $nome não pode ser nulo ou vazia';
  }
}

class EntradaNegativaException implements Exception {
  String? nome;
  EntradaNegativaException([this.nome = 'valor']);

  @override
  String toString() {
    return 'Entrada negativa: $nome deve ter valor positivo';
  }
}

class EntradaMalFormatadaException implements Exception {
  String? nome;
  EntradaMalFormatadaException([this.nome = 'valor']);

  @override
  String toString() {
    return 'Entrada mal formatada: $nome deve estar no formato x.xx';
  }
}
