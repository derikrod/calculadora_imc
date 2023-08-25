import 'package:calculadora_imc/utils/class_utils.dart';
import 'package:calculadora_imc/classes/class_person.dart';
void run(){
    print('Bem vindo à calculadora IMC');
    print('O calculo é feito da seguinte forma:');
    print('Coletamos seu peso e sua altura e a partir daí calculamos seu índice de massa corporal (IMC)');
    print('Baseado no resultado do cálculo definimos como está sua saúde em relação ao seu peso.');
    double weight = Utils.getText('Digite seu peso (Kg): Ex: 60');
    double height = Utils.getText('Digite sua altura (M): Ex: 1.73');
    Person p =  Person(height, weight);
    print(p.reportIMC());
} 
