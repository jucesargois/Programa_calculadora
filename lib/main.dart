import 'dart:io';
import 'package:programa_calculadora/src/calculadora.dart';
import 'package:programa_calculadora/src/interface.dart';
import 'package:programa_calculadora/src/menu_calculadora.dart';

String? opcoes;
bool condicao = true;
String? yorn;
main(List<String> arguments) {
  var n1;
  var n2;
  MenuCalc();
  opcoes = stdin.readLineSync();
  StructureCalc(condicao, opcoes, n1, n2, yorn);
}
