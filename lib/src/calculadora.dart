class OperadoresParaCalculadora {

  // variaveis para armazenar o simbolo da operação desejada na interface
  String soma;
  String subtracao;
  String multiplicacao;
  String divisao;

  OperadoresParaCalculadora({required this.soma, required this.subtracao,required this.divisao,required this.multiplicacao});
}


//Funçôes para realizar o calculo de dois números.
soma(int n1, int n2) {
  return n1 + n2;
}

subtracao(int n1, int n2) {
  return n1 - n2;
}

multiplicacao(int n1, int n2) {
  return n1 * n2;
}

divisao(double n1, double n2) {
  return n1 / n2;
}
