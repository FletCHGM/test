import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const Core());
}

class Core extends StatelessWidget {
  const Core({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Auth(),
    );
  }
}

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  int _activeButton = 1;
  double _width(double coaf) {
    return MediaQuery.of(context).size.width / 100 * coaf;
  }

  double _height(double coaf) {
    return MediaQuery.of(context).size.height / 100 * coaf;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 245, 250, 255),
            height: _height(100),
            width: _width(100),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              'assets/logo_back.svg',
              width: _width(100),
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 800 * 76,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/logo.svg',
              height: MediaQuery.of(context).size.height / 800 * 103,
              width: MediaQuery.of(context).size.width / 360 * 103,
              fit: BoxFit.contain,
            ),
          ),
          Align(
            alignment: Alignment(0, -0.3),
            child: Container(
              height: MediaQuery.of(context).size.height / 800 * 42,
              width: MediaQuery.of(context).size.width / 360 * 256,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 150, 164, 242),
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _activeButton = 1;
                        });
                      },
                      child: AnimatedContainer(
                        decoration: BoxDecoration(
                            color: (_activeButton == 1)
                                ? const Color.fromARGB(255, 150, 164, 242)
                                : Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        duration: const Duration(milliseconds: 200),
                        height:
                            (MediaQuery.of(context).size.height / 800 * 42) - 4,
                        width:
                            (MediaQuery.of(context).size.width / 360 * 128) - 2,
                        child: Center(
                          child: Text(
                            'Вход',
                            style: TextStyle(
                                color: (_activeButton == 1)
                                    ? Colors.white
                                    : const Color.fromARGB(255, 150, 164, 242),
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _activeButton = 2;
                        });
                      },
                      child: AnimatedContainer(
                        decoration: BoxDecoration(
                            color: (_activeButton == 2)
                                ? const Color.fromARGB(255, 150, 164, 242)
                                : Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        duration: const Duration(milliseconds: 200),
                        height:
                            (MediaQuery.of(context).size.height / 800 * 42) - 4,
                        width:
                            (MediaQuery.of(context).size.width / 360 * 128) - 2,
                        child: Center(
                          child: Text(
                            'Регистрация',
                            style: TextStyle(
                                color: (_activeButton == 2)
                                    ? Colors.white
                                    : const Color.fromARGB(255, 150, 164, 242),
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
