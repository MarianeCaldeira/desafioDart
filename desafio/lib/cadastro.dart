import 'dart:io';
import 'package:desafio/empresa.dart';
import 'package:desafio/endereco.dart';
import 'package:desafio/fisico.dart';
import 'package:desafio/funcoes.dart';
import 'package:desafio/juridico.dart';
import 'package:desafio/socio.dart';

Endereco lerEndereco() {
  String logradouro = Funcoes.pergunta("Logradouro: ");
  String numero = Funcoes.numero("Número: ");
  String bairro = Funcoes.pergunta("Bairro: ");
  String complemento = Funcoes.pergunta("Complemento: ");
  String estado = Funcoes.pergunta("Estado: ");
  String cep = Funcoes.perguntaCEP("CPE: ");

  Endereco novoEndereco =
      Endereco(logradouro, numero, bairro, complemento, estado, cep);
  return novoEndereco;
}

Fisico lerFisico() {
  print("Sócio físico: ");
  String nome = Funcoes.pergunta("Nome: ");
  String identidade = Funcoes.perguntaCPFeTEL("CPF: ");
  Endereco endereco = lerEndereco();

  Fisico novoFisico = Fisico(nome, identidade, endereco);
  return novoFisico;
}

Juridico lerJuridico() {
  print("Sócio Juridico: ");
  String nome = Funcoes.pergunta("Nome: ");
  String identidade = Funcoes.perguntaCNPJ("CNPJ: ");
  Endereco endereco = lerEndereco();
  String razaoSocial = Funcoes.pergunta("Razão social: ");

  Juridico novoJuridico = Juridico(nome, identidade, endereco, razaoSocial);
  return novoJuridico;
}

Socio lerSocio() {
  int opcao;
  Socio novoSocio;
  do {
    print("Informe a opção de sócio: ");
    print("1 - Físico");
    print("2 - Júridico");
    opcao = int.parse(stdin.readLineSync()!);
    if (opcao != 1 && opcao != 2) {
      print("Opção invalida!");
    }
  } while (opcao != 1 && opcao != 2);
  if (opcao == 1) {
    novoSocio = lerFisico();
  } else {
    novoSocio = lerJuridico();
  }
  return novoSocio;
}

List<Empresa> lerEmpresa(List<Empresa> cloneEmpresa) {
  List<Empresa> retornoEmpresa = cloneEmpresa;
  String cnpj = Funcoes.perguntaCNPJ("CNPJ: ");
  String razaoSocial = Funcoes.pergunta("Razão social: ");
  String nomeFantasia = Funcoes.pergunta("Nome fantasia: ");
  String telefone = Funcoes.perguntaCPFeTEL("Telefone: ");
  Endereco endereco = lerEndereco();
  Socio socio = lerSocio();

  Empresa novaEmpresa = Empresa(
      razaoSocial: razaoSocial,
      nomeFantasia: nomeFantasia,
      cnpj: cnpj,
      endereco: endereco,
      telefone: telefone,
      socio: socio);
  retornoEmpresa.add(novaEmpresa);
  return retornoEmpresa;
}
