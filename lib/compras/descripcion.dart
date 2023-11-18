import 'package:flutter/material.dart';
import 'carrito_bloc.dart';

class Descripcion extends StatelessWidget {
  final String categoria;
  final int index;

  Descripcion(this.categoria, this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de $categoria'),
      ),
      body: _buildItemDetails(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
          carritoBloc.addItem('$categoria $index');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Se ha agregado $categoria $index al carrito'),
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }

  Widget _buildItemDetails() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('$categoria $index', style: TextStyle(fontSize: 24)),
        SizedBox(height: 16),
        Text('Descripción del $categoria $index', style: TextStyle(fontSize: 18)),
      ],
    );
  }
}
