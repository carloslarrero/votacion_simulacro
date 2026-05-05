import 'package:votacion_simulacro/barril.dart';

class CuartaPantalla extends StatelessWidget {
  const CuartaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final anchoCuadrado = size.width * 0.25;

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
              'assets/images/maquina_verificar_p6.png',
              width: anchoCuadrado,
              height: anchoCuadrado,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Container(
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              child: const Text(
                'Una vez impreso el boletín, verificá que el registro electrónico de tu voto, coincida con la versión impresa, acercando el boletín al lector verificador.',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuintaPantalla(),
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
