import 'package:flutter/material.dart';
import '/destinos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animacion Logo',
      routes: {
        '/destinos': (context) => Destinos(),
      },
      home: InicioApp(),
    );
  }
}

class InicioApp extends StatefulWidget {
  @override
  _InicioAppViewState createState() => _InicioAppViewState();
}

class _InicioAppViewState extends State<InicioApp>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    _scaleAnimation = Tween<double>(begin: 1, end: 4).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInSine));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacementNamed(context, '/destinos');
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imagen/pisa.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.scale(
                scale: _scaleAnimation.value,
                child: Image.asset(
                  'assets/imagen/logo3.png',
                  width: 70,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
