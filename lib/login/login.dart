import 'package:flutter/material.dart';
import '../compras/pagina_compras.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  TextEditingController _userController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.network('https://img.freepik.com/vector-premium/icono-carrito-compras-rapido_414847-513.jpg', height: 300),
              ),
              SizedBox(height: 15.0,),
                _userTextField(),
              SizedBox(height: 15.0,),
                _passwordTextField(),
              SizedBox(height: 15.0,),
                _buttonLogin(),
            ],
          ),
        ),
      )
    );
  }

  Widget _userTextField(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: _userController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.email),
          hintText: 'ejemplo@correo.com',
          labelText: 'Correo Electronico'
        ),
        onChanged: (value){
        },
      ),
    );
  }

  Widget _passwordTextField(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: _passwordController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock),
          hintText: 'Contraseña',
          labelText: 'Contraseña'
        ),
        onChanged: (value){
        },
      ),
    );
  }

  Widget _buttonLogin(){
    return ElevatedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
        child: Text('Iniciar Sesion',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onPressed: () => _signIn(context),
    );
  }

  void _signIn(BuildContext context) {
    if (_userController.text == 'usuario' &&
        _passwordController.text == 'con') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PaginasCompras()),
      );
    }
  }
}