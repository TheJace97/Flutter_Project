import 'package:flutter/material.dart';
import 'descripcion.dart';

class Categoria extends StatelessWidget {
  final String categoria;

  Categoria(this.categoria);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de $categoria'),
      ),
      body: _buildItemList(),
    );
  }

  Widget _buildItemList() {
    return ListView.builder(
      itemCount: 1000,
      itemBuilder: (context, index) {
        return _buildListItem(context, index);
      },
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    return ListTile(
      title: Text('$categoria $index'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Descripcion(categoria, index),
          ),
        );
      },
    );
  }
}
