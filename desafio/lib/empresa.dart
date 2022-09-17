import 'package:desafio/endereco.dart';
import 'package:desafio/socio.dart';
import 'package:uuid/uuid.dart';

class Empresa {
  final String id = Uuid().v4();
  String razaoSocial;
  String nomeFantasia;
  String cnpj;
  Endereco endereco;
  String telefone;
  final horario = DateTime.now();
  Socio socio;

  Empresa(
      {required this.razaoSocial,
      required this.nomeFantasia,
      required this.cnpj,
      required this.endereco,
      required this.telefone,
      required this.socio});

  String fone() {
    String telefoneTexto = telefone.toString();
    String ddd = telefoneTexto.substring(0, 2);
    String digito = telefoneTexto.substring(2, 3);
    String primeiros4 = telefoneTexto.substring(3, 7);
    String ultimos4 = telefoneTexto.substring(7, 11);
    return "($ddd) $digito $primeiros4-$ultimos4";
  }

  String cnpjAjuste() {
    String cnpjTexto = cnpj.toString();
    String ponto1 = cnpjTexto.substring(0, 2);
    String ponto2 = cnpjTexto.substring(2, 5);
    String barra = cnpjTexto.substring(5, 8);
    String traco = cnpjTexto.substring(8, 12);
    String ultimos = cnpjTexto.substring(12, 14);
    return "$ponto1.$ponto2.$barra/$traco-$ultimos";
  }

  @override
  String toString() {
    return "ID: $id\nCNPJ: ${cnpjAjuste()} Data cadastro: $horario\nRazão social: $razaoSocial\nNome fantasia: $nomeFantasia\nEndereço: ${endereco.toString()}\nTelefone: ${fone()}\nSocio:\n${socio.toString()}";
  }
}