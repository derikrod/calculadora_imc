
import 'package:test/test.dart';
import 'package:calculadora_imc/classes/class_person.dart';
import 'package:calculadora_imc/utils/class_utils.dart';

void main() {
    Person p =Person(1,50);
    test('Testando calculadora IMC',(){expect(p.reportIMC(),equals('Seu IMC é 50.0 (Obesidade grau III (Mórbida)).'));});
    test('Testando double parser',(){expect(Utils.parseDouble('1.75'), 1.75);} );
}
