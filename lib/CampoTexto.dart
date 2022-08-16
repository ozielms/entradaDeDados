import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            // ENTRADA DE DADOS
            child: TextField(
              /* Tipo do teclado que será utilizado 
                 text, number, emailAddress, datetime  */
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Digite um valor"),
              //enabled:
              //  true, // Com o valor false a caixa fica desativada para digitar
              // Máximo de caracteres que pode digitar.
              // maxLength: 4,
              // Bloquear para que seja digitado apenas o num de caracter do maxLength.
              // maxLengthEnforced: true, // Não está funcionando
              /* style: TextStyle(fontSize: 25, color: Colors.green),*/
              obscureText:
                  true, // Esconde o texto enquanto é digitado. Normalmente utilizado em campos de senhas.

              // RECUPERAR UM DADO QUE FOI DIGITADO

              // Recuperar tudo que digita
              /*onChanged: (String texto) {
                  print("Valor digitado: " + texto);
                },*/

              onSubmitted: (String texto) {
                print("Dados enviados" + texto);
              },
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
              child: Text("Salvar"),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen,
              ),
              onPressed: () {
                print("Valor digitado: " + _textEditingController.text);
              })
        ],
      ),
    );
  }
}
