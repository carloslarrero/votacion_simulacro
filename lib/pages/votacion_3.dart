import 'package:votacion_simulacro/barril.dart';

class Votacion3 extends StatelessWidget {
  const Votacion3({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double imageSize = size.width * 0.09;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      appBar: AppBarVotacion(
        backgroundColor: const Color.fromRGBO(84, 88, 89, 1),
        imagePathLeading: 'assets/images/logo_eleccion.png',
        imagePathTrailing: 'assets/images/header.png',
        titleBottom: 'Candidatos a Junta Municipal',
        titleTop: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const Text('Elección: ', style: TextStyle(color: Colors.white)),
              const Text(
                'ELECCIONES MUNICIPALES 2026',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: size.width * 0.02),
              const Text(
                'Departamento: ',
                style: TextStyle(color: Colors.white),
              ),
              const Text('8-MISIONES', style: TextStyle(color: Colors.white)),
              SizedBox(width: size.width * 0.02),
              const Text('Distrito: ', style: TextStyle(color: Colors.white)),
              const Text('13-SANTIAGO', style: TextStyle(color: Colors.white)),
              SizedBox(width: size.width * 0.02),
              const Text('Zona: ', style: TextStyle(color: Colors.white)),
              const Text('8', style: TextStyle(color: Colors.white)),
              SizedBox(width: size.width * 0.02),
              const Text('Local: ', style: TextStyle(color: Colors.white)),
              const Text('1', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: size.height * 0.15,
                margin: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 0, 0, 1),
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(
                    color: const Color.fromRGBO(152, 152, 152, 1),
                  ),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      'Lista 1',
                      style: TextStyle(
                        fontSize: size.width * 0.025,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'PARTIDO COLORADO',
                      style: TextStyle(
                        fontSize: size.width * 0.03,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 2,
                children: [
                  _buildCuadroVotacion(
                    size: size,
                    imageSize: imageSize,
                    lista: '1',
                    candidato: 'NOELIA ORTIZ',
                    imagePath: 'assets/images/003.jpg',
                  ),
                  _buildCuadroVotacion(
                    size: size,
                    imageSize: imageSize,
                    lista: '2',
                    candidato: 'SOLEDAD ALVAREZ',
                    imagePath: 'assets/images/008.jpg',
                  ),
                  _buildCuadroVotacion(
                    size: size,
                    imageSize: imageSize,
                    lista: '3',
                    candidato: 'ANITA SALAZAR',
                    imagePath: 'assets/images/001.jpg',
                  ),
                  _buildCuadroVotacion(
                    size: size,
                    imageSize: imageSize,
                    lista: '4',
                    candidato: 'ELENO CORONEL',
                    imagePath: 'assets/images/002.jpg',
                  ),
                  _buildCuadroVotacion(
                    size: size,
                    imageSize: imageSize,
                    lista: '5',
                    candidato: 'MARCELA ROMERO',
                    imagePath: 'assets/images/007.jpg',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Confirmacion()),
                      );
                    },
                  ),
                  _buildCuadroVotacion(
                    size: size,
                    imageSize: imageSize,
                    lista: '6',
                    candidato: 'TOMAS QUIÑONES',
                    imagePath: 'assets/images/tomas.jpg',
                  ),
                  _buildCuadroVotacion(
                    size: size,
                    imageSize: imageSize,
                    lista: '7',
                    candidato: 'CORONEL CABRERA',
                    imagePath: 'assets/images/004.jpg',
                  ),
                  _buildCuadroVotacion(
                    size: size,
                    imageSize: imageSize,
                    lista: '8',
                    candidato: 'SOLE ORTIZ',
                    imagePath: 'assets/images/005.jpg',
                  ),
                  _buildCuadroVotacion(
                    size: size,
                    imageSize: imageSize,
                    lista: '9',
                    candidato: 'ROLI QUIÑONES',
                    imagePath: 'assets/images/012.jpg',
                  ),
                  _buildCuadroVotacion(
                    size: size,
                    imageSize: imageSize,
                    lista: '10',
                    candidato: 'ANTONIO LEGUIZAMON',
                    imagePath: 'assets/images/006.jpg',
                  ),
                  _buildCuadroVotacion(
                    size: size,
                    imageSize: imageSize,
                    lista: '11',
                    candidato: 'PEDRO LOPEZ',
                    imagePath: 'assets/images/009.jpg',
                  ),
                  _buildCuadroVotacion(
                    size: size,
                    imageSize: imageSize,
                    lista: '12',
                    candidato: 'FEMINA RUIZ',
                    imagePath: 'assets/images/011.jpg',
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: size.height * 0.07,
                decoration: const BoxDecoration(
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
                                color: const Color.fromRGBO(84, 88, 89, 1),
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: size.width * 0.01),
                      const Text(
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
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
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

  Widget _buildCuadroVotacion({
    required Size size,
    required double imageSize,
    required String lista,
    required String candidato,
    required String imagePath,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2),
          border: Border.all(
            color: const Color.fromRGBO(152, 152, 152, 1),
            width: 1,
          ),
        ),
        padding: const EdgeInsets.all(1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  imagePath,
                  width: imageSize,
                  height: imageSize,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.person, size: imageSize),
                ),
                Column(
                  children: [
                    Text(
                      'Opción',
                      style: TextStyle(
                        fontSize: size.width * 0.02,
                        fontWeight: FontWeight.bold,
                        height: 1.0,
                      ),
                    ),
                    Text(
                      lista.replaceAll('Opción ', ''),
                      style: TextStyle(
                        fontSize: size.width * 0.025,
                        fontWeight: FontWeight.bold,
                        height: 1.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Inferior: Nombre del candidato
            Text(
              candidato,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: size.width * 0.015),
            ),
          ],
        ),
      ),
    );
  }
}
