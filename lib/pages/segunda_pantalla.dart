import 'package:votacion_simulacro/barril.dart';

class Segundapantalla extends StatelessWidget {
  const Segundapantalla({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final anchoCuadrado = size.width * 0.3;

    return Scaffold(
      appBar: CustomAppBar(
        title: 'GUÍA RÁPIDA PARA VOTAR EN LA MÁQUINA DE VOTACIÓN',
        imagePathLeading: 'assets/images/logo_eleccion.png',
        imagePathTrailing: 'assets/images/header.png',
        backgroundColor: Colors.white10,
        textColor: Colors.black,
        fontSize: 12,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/boletaci.png',
              width: size.width * 0.4,
              height: anchoCuadrado,
              fit: BoxFit.cover,
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              child: const Text(
                'Presentá tu cédula de identidad civil a los miiembros de la mesa receptora de votos,\nquienes te entregaran el boletín firmado por los vocales.',
                style: TextStyle(fontSize: 26),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TerceraPantalla(),
                  ),
                );
              },
              child: const Text('Continuar', style: TextStyle(fontSize: 20)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(51, 122, 183, 1),
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 45,
                  vertical: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
