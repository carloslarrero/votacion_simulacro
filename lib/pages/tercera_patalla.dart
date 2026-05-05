import 'package:votacion_simulacro/barril.dart';

class TerceraPantalla extends StatelessWidget {
  const TerceraPantalla({super.key});

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
              'assets/images/maquina2_p6.png',
              width: anchoCuadrado,
              height: anchoCuadrado,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Container(
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              child: const Text(
                'Colocá el boletín en la ranura como lo indica la flecha.',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CuartaPantalla(),
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
