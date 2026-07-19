import 'package:votacion_simulacro/barril.dart';

class Votacion2 extends StatelessWidget {
  const Votacion2({super.key});

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
        titleBottom: 'Listas participantes al Cargo de JUNTA MUNICIPAL',
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
                          MaterialPageRoute(builder: (context) => Votacion3()),
                        );
                      },
                      contenido: Padding(
                        padding: const EdgeInsets.symmetric(
                          //vertical: 1,
                          horizontal: 15,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'LISTA 1',
                              style: TextStyle(
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'PARTIDO COLORADO',
                              style: TextStyle(
                                fontSize: size.width * 0.025,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'ANR',
                              style: TextStyle(
                                fontSize: size.width * 0.025,
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
                        padding: const EdgeInsets.symmetric(
                          //vertical: 1,
                          horizontal: 15,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'LISTA 2',
                              style: TextStyle(
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'PARTIDO LIBERAL RADICAL AUTENTICO',
                              style: TextStyle(
                                fontSize: size.width * 0.022,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'PLRA',
                              style: TextStyle(
                                fontSize: size.width * 0.025,
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
