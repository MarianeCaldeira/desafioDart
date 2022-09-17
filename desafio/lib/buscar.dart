import 'dart:io';
import 'package:desafio/empresa.dart';

void procurarCnpj(List<Empresa> buscarEmp){
  stdout.write("Informe o CNPJ da empresa que deseja buscar: ");
  String cnpjs = stdin.readLineSync()!;

  bool auxiliar = false;
  for (var i = 0; i < buscarEmp.length; i++) {
    if (cnpjs == buscarEmp[i].cnpj) {
      print(buscarEmp[i]);
      auxiliar = true;
      i = buscarEmp.length;
    }
  }
  if (!auxiliar) {
    print("CNPJ não encontrado!");
  }
}

void procurarSocio(List<Empresa> buscarSocio){
  stdout.write("Informe o CNPJ/CPF do sócio: ");
  String socios = stdin.readLineSync()!;

  bool auxiliar = false;
  for (var i = 0; i < buscarSocio.length; i++) {
    if (socios == buscarSocio[i].socio.identidade) {
      print(buscarSocio[i]);
      auxiliar = true;
      i = buscarSocio.length;
    } 
  }
  if (!auxiliar) {
    print("CNPJ/CPF não encontrado!");
  }
}