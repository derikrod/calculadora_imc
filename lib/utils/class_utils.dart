import 'dart:convert';
import 'dart:io';

//Classe responsável por funções utilitárias no sistema
class Utils{
  ///Função para tratar e tranformar strings [s] em double [d]
  ///
  ///Ex: parseDouble('12.34') = 12.34
  static  double parseDouble(String? s){
    double d = 0;
    if(s != null){
      // caso o usuário digite o double no modelo brasileiro Ex: 7,5
      s.replaceAll(',', '.');
      if( double.tryParse(s)!= null){
         d = double.parse(s);
      }else{
        d = 0;
      }
      
    }else{
       d  = 0;
    }
    return d;
  }
  
  ///Funcão para receceber dados e tratar dos usuários recebe a string [s] que será printada na tela se o valor não for nulo
  ///
  /// e retorna um valor double [d] tratado.
  ///
  ///Ex: getText('Digite um número') = 'Digite um número' 2 
  static double getText(String? text){
    double d = 0;
    if(text != null){
      print(text);
       d = parseDouble(stdin.readLineSync(encoding: utf8)?? "0");
    }else{
      d = 0;
    }
    return d;
  } 
  
}