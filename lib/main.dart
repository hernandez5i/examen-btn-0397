import 'package:com/pages/PaginaHome.dart';
import 'package:com/pages/PaginaUsers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp0397());

class MyApp0397 extends StatefulWidget {
  @override
  State<MyApp0397> createState() => _MyApp0397State();
}

List<Widget> _paginas = [
  PaginaHome(),
  PaginaUsers(),
];

class _MyApp0397State extends State<MyApp0397> {
  int _paginaActual = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Examen Requenes 0397'),
            backgroundColor: Color(0xff0b37c9),
          ),
          body: _paginas[_paginaActual],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _paginaActual = index;
              });
            },
            currentIndex: _paginaActual,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle), label: 'Users')
            ],
          ),
        ));
  }
}
