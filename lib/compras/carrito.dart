import 'package:flutter/material.dart';
import 'carrito_bloc.dart';

class Carrito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Contenido del carrito: ${carritoBloc.carrito}');

    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Compras'),
      ),
      body: StreamBuilder<List<String>>(
        stream: carritoBloc.carritoStream,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index]),
                );
              },
            );
          } else {
            return Center(
              child: Text('El carrito está vacío'),
            );
          }
        },
      ),
    );
  }
}
