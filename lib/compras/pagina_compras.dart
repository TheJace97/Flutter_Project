import 'package:flutter/material.dart';
import 'categoria.dart';
import 'carrito.dart';

class PaginasCompras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compras'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Carrito()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildCategoryItem(context, 'Libros', 'lib/assets/libros.jpg'),
          _buildCategoryItem(context, 'Películas', 'lib/assets/peliculas.jpg'),
          _buildCategoryItem(context, 'Electrónicos', 'lib/assets/electronicos.jpg'),
          _buildCategoryItem(context, 'Videojuegos', 'lib/assets/videojuegos.jpg'),
          _buildCategoryItem(context, 'Juguetes', 'lib/assets/juguetes.jpg'),
          _buildCategoryItem(context, 'Moda', 'lib/assets/moda.jpg'),
          _buildCategoryItem(context, 'Hogar', 'lib/assets/hogar.jpg'),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context, String category, String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Categoria(category)),
          );
        },
        child: Card(
          child: Column(
            children: [
              Image.asset(
                imagePath,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 8),
              Text(
                category,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
