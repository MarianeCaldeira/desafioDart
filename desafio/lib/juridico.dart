import 'package:desafio/endereco.dart';
import 'package:desafio/socio.dart';

class Juridico extends Socio {
  String razaoSocial;

  Juridico(nome, identidade, Endereco endereco, this.razaoSocial)
      : super(nome, identidade, endereco);

  String cnpj() {
    String cnpjTexto = identidade.toString();
    String ponto1 = cnpjTexto.substring(0, 2);
    String ponto2 = cnpjTexto.substring(2, 5);
    String barra = cnpjTexto.substring(5, 8);
    String traco = cnpjTexto.substring(8, 12);
    String ultimos = cnpjTexto.substring(12, 14);
    return "$ponto1.$ponto2.$barra/$traco-$ultimos";
  }

  @override
  String toString() {
    return "CNPJ: ${cnpj()}\nNome fantasia: $nome\nEndereço: ${endereco.toString()}\nRazão social: $razaoSocial\n";
  }
}
