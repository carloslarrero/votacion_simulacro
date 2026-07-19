import 'package:votacion_simulacro/barril.dart';

class Votacion1 extends StatelessWidget {
  const Votacion1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double imageSize = size.width * 0.12;

    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 238, 238, 1),
      appBar: AppBarVotacion(
        backgroundColor: Color.fromRGBO(84, 88, 89, 1),
        imagePathLeading: 'assets/images/logo_eleccion.png',
        imagePathTrailing: 'assets/images/header.png',
        titleBottom: 'Candidatos a INTENDENTE MUNICIPAL',
        titleTop: Row(
          children: [
            Text('Elección: ', style: TextStyle(color: Colors.white)),
            Text(
              'ELECCIONES MUNICIPALES 2026',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: size.width * 0.02),
            Text('Departamento: ', style: TextStyle(color: Colors.white)),
            Text('8-MISIONES', style: TextStyle(color: Colors.white)),
            SizedBox(width: size.width * 0.02),
            Text('Distrito: ', style: TextStyle(color: Colors.white)),
            Text('13-SANTIAGO', style: TextStyle(color: Colors.white)),
            SizedBox(width: size.width * 0.02),
            Text('Zona: ', style: TextStyle(color: Colors.white)),
            Text('8', style: TextStyle(color: Colors.white)),
            SizedBox(width: size.width * 0.02),
            Text('Local: ', style: TextStyle(color: Colors.white)),
            Text('1', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: _buildCuadroVotacion(
                      color: Color.fromRGBO(255, 0, 0, 1),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Votacion2()),
                        );
                      },
                      contenido: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              'PARTIDO COLORADO',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Transform.translate(
                                  offset: const Offset(-50, 0),
                                  child: Image.asset(
                                    'assets/images/oc.jpg',
                                    width: imageSize,
                                    height: imageSize,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'LISTA',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        height: 1.1,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 44,
                                        fontWeight: FontWeight.bold,
                                        height: 1.1,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'ANR',
                                      style: TextStyle(
                                        fontSize: 24,
                                        height: 1.1,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Text(
                              'OSCAR CUENCA',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: _buildCuadroVotacion(
                      color: Color.fromRGBO(0, 43, 199, 1),
                      contenido: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              'PARTIDO LIBERAL RADICAL AUTENTICO',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Transform.translate(
                                  offset: const Offset(-50, 0),
                                  child: Image.asset(
                                    'assets/images/bcho.jpg',
                                    width: imageSize,
                                    height: imageSize,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'LISTA',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        height: 1.1,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                        fontSize: 44,
                                        fontWeight: FontWeight.bold,
                                        height: 1.1,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'PLRA',
                                      style: TextStyle(
                                        fontSize: 24,
                                        height: 1.1,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Text(
                              'VICTOR BEBECHO LARRE',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: _buildCuadroVotacion(
                      color: Colors.white,
                      contenido: Center(
                        child: Text(
                          'VOTO EN BLANCO',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child:
                        Container(), // espacio vacío para mantener la columna derecha
                  ),
                ],
              ),

              const SizedBox(height: 5),
              Container(
                width: double.infinity,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(204, 204, 204, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      SizedBox(width: size.width * 0.01),
                      Stack(
                        children: [
                          Container(
                            height: size.height * 0.06,
                            width: size.width * 0.04,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(84, 88, 89, 1),
                              border: Border.all(
                                color: const Color.fromRGBO(47, 49, 50, 1),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),

                          Positioned(
                            left: 10,
                            top: 10,
                            child: Container(
                              width: 24,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(84, 88, 89, 1),
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: size.width * 0.01),
                      Text(
                        'Vista alto \ncontraste',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: VerticalDivider(
                          color: Colors.black26,
                          thickness: 2,
                          indent: 5,
                          endIndent: 5,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Modificaciones al 0995371560',
                            style: TextStyle(fontSize: 10),
                          ),
                          Text('Carlos Larré', style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCuadroVotacion({
  Widget? contenido,
  VoidCallback? onTap,
  Color color = Colors.white,
}) {
  return AspectRatio(
    aspectRatio: 1.9,
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color.fromRGBO(152, 152, 152, 1),
            width: 1,
          ),
        ),
        child: contenido,
      ),
    ),
  );
}
