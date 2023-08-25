///Classe Person
///
///Responsávio por armanezar dados da pessoa e fazer os cálculos de IMC
///
///Recebe [height] altura da pessoa e [weight] peso da pessoa para fazer o cálculo do IMC (índice de massa corporal)
///
///Ex: p = new Person(1.60,64);
class Person{
    double _height = 0;
    double _weight = 0;

    //construct
    Person(double height, double weight){
     _height = height;
     _weight = weight;
    }

    //getters e setters
    double getHeight(){
      return _height;
    }
    double getWheight(){
      return _weight;
    }

    //Função para calcular IMC (privada)
    //
    //Calculo IMC : IMC = PESO [w] / ALTURA [h]
    //
    // retorna valor do imc [imc]
    double _calcIMC(){
      double h = getHeight();
      double w = getWheight();
      //calculando IMC evitando divisão por zero
      double imc = (h > 0 &&  w > 0)? w/h : 0;  
      return imc;
    }

    // Função que envia uma mensagem sobre o seu Índice de massa corporal
    String reportIMC(){
      double imc = _calcIMC();
      String report = '';
      if(imc > 0){
        if(imc < 16){
          report = 'Magreza grave';
        }else if(imc > 16 && imc < 17){
          report = 'Magreza moderada';
        }else if(imc >= 17 && imc < 18.5){
          report = 'Magreza leve';
        }else if(imc >= 18.5 && imc <=25){
          report = 'Saudável';
        }else if(imc >= 25 && imc < 30){
          report = 'Sobrepeso';
        }else if(imc >= 30 && imc < 35){
          report = 'Obesidade grau I';
        }else if(imc >= 35 && imc < 40){
          report = 'Obesidade grau II (Severa)';
        }else{
          report = 'Obesidade grau III (Mórbida)';
        }
      }else{
        report = 'Dados inválidos';  
      }
      return 'Seu IMC é $imc ($report).';
    }
}