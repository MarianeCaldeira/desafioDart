import 'package:desafio/socio.dart';
import 'package:desafio/endereco.dart';

class Fisico extends Socio {
  Fisico(nome, identidade, Endereco endereco)
      : super(nome, identidade, endereco);

  String cpf() {
    String cpfTexto = identidade.toString();
    String inicio = cpfTexto.substring(0, 3);
    String meio = cpfTexto.substring(3, 6);
    String ultimos = cpfTexto.substring(6, 9);
    String fim = cpfTexto.substring(9, 11);
    return "$inicio.$meio.$ultimos-$fim";
  }

  @override
  String toString() {
    return "Nome completo: $nome\nCPF: ${cpf()}\nEndereço: ${endereco.toString()}\n";
  }
}
