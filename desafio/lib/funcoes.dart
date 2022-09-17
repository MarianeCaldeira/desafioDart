import 'dart:io';

class Funcoes {
  static String numero(String pergunta) {
    while (true) {
      String resposta;
      stdout.write(pergunta);
      resposta = stdin.readLineSync()!;
      if (int.tryParse(resposta) == null) {
        print("Esse valor é invalido, utilize apenas números!");
        continue;
      } else {
        return resposta;
      }
    }
  }

  static String pergunta(String pergunta) {
    while (true) {
      String resposta;
      stdout.write(pergunta);
      resposta = stdin.readLineSync()!;
      if (int.tryParse(resposta) != null) {
        print("Informação invalida!");
        continue;
      } else {
        return resposta;
      }
    }
  }

  static String perguntaCNPJ(String pergunta) {
    while (true) {
      String resposta;
      stdout.write(pergunta);
      resposta = stdin.readLineSync()!;
      if (int.tryParse(resposta) == null || resposta.length != 14) {
        print("CNPJ inválido!");
        continue;
      } else {
        return resposta;
      }
    }
  }

  static String perguntaCEP(String pergunta) {
    while (true) {
      String resposta;
      stdout.write(pergunta);
      resposta = stdin.readLineSync()!;
      if (int.tryParse(resposta) == null || resposta.length != 8) {
        print("CEP inválido, informe novamente!");
        continue;
      } else {
        return resposta;
      }
    }
  }

  static String perguntaCPFeTEL(String pergunta) {
    while (true) {
      String resposta;
      stdout.write(pergunta);
      resposta = stdin.readLineSync()!;
      if (int.tryParse(resposta) == null || resposta.length != 11) {
        print("Informação inválida, informe novamente!");
        continue;
      } else {
        return resposta;
      }
    }
  }

  static String paraNumeros(String pergunta) => numero(pergunta).toString();
}