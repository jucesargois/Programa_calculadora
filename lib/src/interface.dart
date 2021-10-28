import 'dart:io';
import 'package:programa_calculadora/src/calculadora.dart';
import 'package:programa_calculadora/src/menu_calculadora.dart';

class Structure extends OperadoresParaCalculadora {
  // StructureText(String soma, String subtracao, String divisao, String multiplicacao) : super(soma, subtracao, divisao, multiplicacao);
  //OperadoresParaCalculadora operadoresParaCalculadora = OperadoresParaCalculadora(soma: '+', subtracao: '-', divisao: '/', multiplicacao: '*');

  Structure()
      : super(soma: '+', subtracao: '-', multiplicacao: '*', divisao: '/');
}

OperadoresParaCalculadora operadoresParaCalculadora = OperadoresParaCalculadora(
    soma: '+', subtracao: '-', divisao: '/', multiplicacao: '*');
StructureCalc(bool condicao, opcoes, n1, n2, yorn) {
  switch (opcoes) {
    case "SAIR":
      print("===========PROGRAMA FINALIZADO==============");
      break;
    case "soma":
      print("Digite o primeiro valor: ");
      n1 = int.parse(stdin.readLineSync()!);
      print("Digite o segundo valor: ");
      n2 = int.parse(stdin.readLineSync()!);
      print('${n1} ${operadoresParaCalculadora.soma} ${n2} =');
      var resultado = soma(n1, n2);
      print(resultado);
      print("-------------------------------");
      print("Gostária de abrir a calculadora novamente? Y/N\n");
      yorn = stdin.readLineSync();
      print("\x1B[2J\x1b[0;0H");
      if (yorn == "Y") {
        MenuCalc();
        opcoes = stdin.readLineSync();
        StructureCalc(condicao, opcoes, n1, n2, yorn);
      } else {
        print("===========PROGRAMA FINALIZADO==============");
        
        break;
      }
      
      break;
    case "subtracao":
      print("Digite o primeiro valor: ");
      n1 = int.parse(stdin.readLineSync()!);
      print("Digite o segundo valor: ");
      n2 = int.parse(stdin.readLineSync()!);
      print('${n1} ${operadoresParaCalculadora.subtracao} ${n2} = ');
      var resultado = subtracao(n1, n2);
      print(resultado);
      print("-------------------------------");
      print("Gostária de abrir a calculadora novamente? Y/N\n");
      yorn = stdin.readLineSync();
       print("\x1B[2J\x1b[0;0H");
      if (yorn == "Y") {
        MenuCalc();
        opcoes = stdin.readLineSync();
        StructureCalc(condicao, opcoes, n1, n2, yorn);
      } else {
        print("===========PROGRAMA FINALIZADO==============");
        break;
      }
      break;
    case "multiplicacao":
      print("Digite o primeiro valor: ");
      n1 = int.parse(stdin.readLineSync()!);
      print("Digite o segundo valor: ");
      n2 = int.parse(stdin.readLineSync()!);
      print('${n1} ${operadoresParaCalculadora.multiplicacao} ${n2} = ');
      var resultado = multiplicacao(n1, n2);
      print(resultado);
      print("-------------------------------");
      print("Gostária de abrir a calculadora novamente? Y/N\n");
      yorn = stdin.readLineSync();
       print("\x1B[2J\x1b[0;0H");
      if (yorn == "Y") {
        MenuCalc();
        opcoes = stdin.readLineSync();
        StructureCalc(condicao, opcoes, n1, n2, yorn);
      } else {
        print("===========PROGRAMA FINALIZADO==============");
        break;
      }
      break;
    case "divisao":
      print("Digite o primeiro valor: ");
      n1 = double.parse(stdin.readLineSync()!);
      print("Digite o segundo valor: ");
      n2 = double.parse(stdin.readLineSync()!);
      print("${n1} ${operadoresParaCalculadora.divisao} ${n2} = ");
      var resultado = divisao(n1, n2);
      print(resultado);
      print("-------------------------------");
      print("Gostária de abrir a calculadora novamente? Y/N\n");
      yorn = stdin.readLineSync();
       print("\x1B[2J\x1b[0;0H");
      if (yorn == "Y") {
        MenuCalc();
        opcoes = stdin.readLineSync();
        StructureCalc(condicao, opcoes, n1, n2, yorn);
      } else {
        print("===========PROGRAMA FINALIZADO==============");
        break;
      }
      break;
    default:
    
  }
}
