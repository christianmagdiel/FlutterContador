import 'package:flutter/material.dart';

class ContadorPages extends StatefulWidget {
  @override
  _ContadorPagesState createState() => _ContadorPagesState();
}

class _ContadorPagesState extends State<ContadorPages> {

  final _estiloTexto = new TextStyle(fontSize: 25.0);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de clicks:', style: _estiloTexto),
              Text('$_conteo', style: _estiloTexto)
            ],
          )
      ),
      floatingActionButton: _crearBotones()
    );
  }


  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),

        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reiniciar
        ),

        Expanded(child: SizedBox()),

        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _disminuir
        ),
        SizedBox(width: 10.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar
        ),
      ],
    );
  }

  void _agregar(){
    setState(() => _conteo++);
  }

  void _disminuir(){
    setState(() => _conteo--);
  }

  void _reiniciar(){
    setState(() => _conteo = 0);
  }
}
