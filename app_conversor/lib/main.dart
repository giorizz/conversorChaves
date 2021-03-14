import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "title aqui tile",
      home: CriandoHome(),
    );
  }
}


class CriandoHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONVERSOR DE CHAVES"),
      ),
      body: Center(
        child: Form(
          child: ListView(
            children: [
              TextFormField(
                //todo controller
                //todo enabled
                decoration: InputDecoration(hintText: 'Apenas números: 5141',),
                keyboardType: TextInputType.number,
                autocorrect: false,
                validator: (usuario){
                  if (usuario.isEmpty)
                    return "Por favor, preencha";
                  return null;
                },
              ),
              
            ],
          ),
        ),
      ),
    );
  }

}