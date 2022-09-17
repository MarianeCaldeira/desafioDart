import 'dart:io';
import 'package:desafio/buscar.dart';
import 'package:desafio/cadastro.dart';
import 'package:desafio/empresa.dart';
import 'package:desafio/funcoes.dart';
import 'package:desafio/remover.dart';

void main() {
  List<Empresa> empresas = [];
  bool continuar = true;

  while (continuar) {
    print("\n O que você deseja?");
    print("1 - Cadastrar uma nova empresa");
    print("2 - Buscar empresa cadastrada por CNPJ");
    print("3 - Buscar empresa por CPF/CNPJ do Sócio");
    print("4 - Listar empresas cadastradas em ordem alfabética");
    print("5 - Excluir uma empresa");
    print("6 - Sair");
    stdout.write("Informe a opção que deseja: ");
    int opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 1:
        empresas = lerEmpresa(empresas);
        print("Empresa cadastrada com sucesso!");
        print("Precisone Enter para continuar...");
        stdin.readLineSync();
        break;
      case 2:
        procurarCnpj(empresas);
        print("Pressione Enter para continuar...");
        stdin.readLineSync();
        break;
      case 3:
        procurarSocio(empresas);
        print("Pressione Enter para continuar...");
        stdin.readLineSync();
        break;
      case 4:
        empresas.sort((a, b) => a.razaoSocial.compareTo(b.razaoSocial));
        empresas.forEach(print);
        print("Pressione Enter para continuar... ");
        stdin.readLineSync();
        break;
      case 5:
        removerEmp(empresas);
        print("Pressione Enter para continuar... ");
        stdin.readLineSync();
        break;
      case 6:
        continuar = false;
        print("Encerrando programa!");
        break;
      default:
        print("Opção desconhecida!");
        print("Pressione Enter para continuar...");
        stdin.readLineSync();
    }
  }
}