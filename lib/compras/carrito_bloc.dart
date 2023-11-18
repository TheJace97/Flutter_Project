import 'dart:async';

class CarritoBloc {
  final _carritoController = StreamController<List<String>>.broadcast();

  Stream<List<String>> get carritoStream => _carritoController.stream;

  List<String> _carrito = [];

  void addItem(String item) {
    _carrito.add(item);
    _carritoController.add(_carrito);
    print('Item agregado al carrito: $item');
  }

  List<String> get carrito => List.unmodifiable(_carrito);

  void dispose() {
    _carritoController.close();
  }
}

final carritoBloc = CarritoBloc();
