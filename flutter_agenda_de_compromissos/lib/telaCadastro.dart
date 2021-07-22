import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class telaCadastro extends StatefulWidget {
  @override
  _telaCadastroState createState() => _telaCadastroState();
}

class _telaCadastroState extends State<telaCadastro> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 12.0,
        centerTitle: true,
        title: Text(
          'Cadastro',
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 8.0),
        child: Center(
          child: Form(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Card(
                    color: Colors.white70,
                    margin: EdgeInsets.only(
                        left: 8.0, right: 8.0, top: 8.0, bottom: 5.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    elevation: 17.0,
                    child: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                child: Text('Editar'),
                                onPressed: () {},
                              ),
                              TextButton(
                                child: Text('Excluir'),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Container(
                            child: TextFormField(
                              maxLines: 1,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                labelText: 'Nome cliente',
                              ),
                              /*onFieldSubmitted: (value) {

                              },
                              validator: (value) {

                              },*/
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
