import 'package:votacion_simulacro/barril.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final anchoCuadrado = size.width * 0.5;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              width: anchoCuadrado,
              height: anchoCuadrado,
            ),
          ],
        ),
      ),
    );
  }
}
