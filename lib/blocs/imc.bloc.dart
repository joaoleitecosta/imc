import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  var heightCtrl = new MaskedTextController(mask: '000');
  var weightCtrl = new MaskedTextController(mask: '00');
  var result = "Preencha os dados para calcular seu IMC";


  calculate() {
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text) / 100;
    double imc = weight / (height * height);

    if(imc < 18.16) {
      result = "Abaixo do Peso (${imc.toStringAsPrecision(2)})";
    }else if( imc >= 18.6 && imc <= 24.9) {
      result = "Peso Ideal (${imc.toStringAsPrecision(2)})";
    }else if(imc >= 25.0 && imc <= 29.9) {
      result = "Levemente acima do peso (${imc.toStringAsPrecision(2)})";
    }else if(imc >= 30.0 && imc <= 34.9) {
      result = "Obesidade Grau I (${imc.toStringAsPrecision(2)})";
    }else if(imc >= 35.0 && imc <= 39.9){
      result = "Obesidade Grau II (${imc.toStringAsPrecision(2)})";
    }else if(imc > 40) {
      result = "Obsidade Grau III (${imc.toStringAsPrecision(2)})";
    }
  }
}