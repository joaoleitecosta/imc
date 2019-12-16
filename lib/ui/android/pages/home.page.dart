import 'package:flutter/material.dart';
import 'package:imc/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {

  var bloc = new ImcBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cálculo de IMC"),
        ),
        body: ListView(
          children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  cursorColor: Colors.pink,
                  controller: bloc.heightCtrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Altura (cm)",
                  ),
                ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                cursorColor: Colors.pink,
                controller: bloc.weightCtrl,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Peso (kg)",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                bloc.result,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: FlatButton(
                color: Theme.of(context).primaryColor,
                child: Text(
                  "Calcular",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: (){
                  setState(() {
                    bloc.calculate();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
