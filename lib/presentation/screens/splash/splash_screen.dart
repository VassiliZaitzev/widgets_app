import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimatedSplashScreen extends StatefulWidget {
  static String name = "splash_scrren";

  const AnimatedSplashScreen({super.key});
  @override
  State<AnimatedSplashScreen> createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _logoAnimation;
  late Animation<double> _fadeOutAnimation;

  final int numberOfBars = 3;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );

    // Logo animado con bounce
    _logoAnimation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.3, 0.7, curve: Curves.ease),
    );

    // Animación de transición final de fondo (azul → blanco)
    _fadeOutAnimation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.1, 1.0, curve: Curves.easeInOut),
    );

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        context.go("/"); // o context.go("/") si quieres reemplazar
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Scaffold(
          // Fondo azul que se va aclarando hasta blanco
          backgroundColor: Color.lerp(
            Colors.blue,
            Colors.white,
            _fadeOutAnimation.value,
          ),
          body: Stack(
            children: [
              // Barras blancas que bajan una por una
              Row(
                children: List.generate(numberOfBars, (index) {
                  final start = index / numberOfBars;
                  final end = (index + 1) / numberOfBars;

                  final barAnimation = CurvedAnimation(
                    parent: _controller,
                    curve: Interval(start, end, curve: Curves.decelerate),
                  );

                  return Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: height * barAnimation.value,
                        color: Colors.white,
                      ),
                    ),
                  );
                }),
              ),

              // Logo Bounce In
              Center(
                child: Transform.scale(
                  scale: _logoAnimation.value,
                  child: Opacity(
                    opacity: _logoAnimation.value.clamp(0.0, 1.0),
                    child: Image.asset(
                      "assets/images/CRS.png",
                      width: 450,
                      height: 250,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}