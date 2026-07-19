import 'package:votacion_simulacro/barril.dart';

class Confirmacion extends StatelessWidget {
  const Confirmacion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double imageSize = size.width * 0.18;

    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 238, 238, 1),
      appBar: AppBarVotacion(
        backgroundColor: Color.fromRGBO(84, 88, 89, 1),
        imagePathLeading: 'assets/images/logo_eleccion.png',
        imagePathTrailing: 'assets/images/header.png',
        titleBottom: 'Opciones Seleccionadas',
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 0, 0, 1),
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(
                    color: const Color.fromRGBO(152, 152, 152, 1),
                  ),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Text(
                        'INTENDENTE MUNICIPAL',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.025,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: size.width * 0.005),
                      Divider(height: 2, color: Colors.black),
                      SizedBox(height: size.width * 0.01),
                      Text(
                        'PARTIDO COLORADO',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.025,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: size.width * 0.015),
                      Text(
                        'LISTA 1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.025,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: size.width * 0.01),
                      Image.asset(
                        'assets/images/oc.jpg',
                        width: imageSize,
                        height: imageSize,
                      ),
                      SizedBox(height: size.width * 0.015),
                      Text(
                        'OSCAR CUENCA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.025,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: size.width * 0.033),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Votacion1(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(84, 88, 89, 1),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                            vertical: size.width * 0.01,
                            horizontal: size.width * 0.03,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                        child: Text(
                          'Modificar',
                          style: TextStyle(
                            fontSize: size.width * 0.025,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.007),

            Expanded(
              flex: 6,
              child: Container(
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
                      'JUNTA MUNICIPAL',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.025,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: size.width * 0.005),
                    Divider(height: 2, color: Colors.black),
                    SizedBox(height: size.width * 0.01),
                    Text(
                      'PARTIDO COLORADO',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.025,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: size.width * 0.015),
                    Text(
                      'LISTA 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.025,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: size.width * 0.01),
                    Image.asset(
                      'assets/images/007.jpg',
                      width: imageSize,
                      height: imageSize,
                    ),
                    SizedBox(height: size.width * 0.015),
                    Text(
                      'MARCELA ROMERO',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.025,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Opción 5',
                      style: TextStyle(
                        fontSize: size.width * 0.025,
                        color: Colors.white,
                      ),
                    ),
                    //SizedBox(height: size.width * 0.02),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Votacion3()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(84, 88, 89, 1),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          vertical: size.width * 0.01,
                          horizontal: size.width * 0.03,
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      child: Text(
                        'Modificar',
                        style: TextStyle(
                          fontSize: size.width * 0.025,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: size.width * 0.007),

            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(245, 124, 0, 1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.flip(
                            flipX: true,
                            child: Icon(
                              Icons.refresh,
                              color: Colors.white,
                              size: size.width * 0.05,
                            ),
                          ),
                          SizedBox(height: size.width * 0.015),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Votacion1(),
                                ),
                              );
                            },
                            child: Container(
                              width: size.width * 0.04,
                              height: size.width * 0.05,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 124, 0, 1),
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  color: Colors.white,
                                  width: size.width * 0.003,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: size.width * 0.015),
                          Text(
                            'Reiniciar',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: size.width * 0.022,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.015),
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(10, 143, 8, 1),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.print_rounded,
                            color: Colors.white,
                            size: size.width * 0.04,
                          ),
                          SizedBox(height: size.width * 0.015),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PrincipalPage(),
                                ),
                              );
                            },
                            child: Container(
                              width: size.width * 0.04,
                              height: size.width * 0.05,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(10, 143, 8, 1),
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  color: Colors.white,
                                  width: size.width * 0.003,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: size.width * 0.015),
                          Text(
                            'Confirmar\ne\nimprimir',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: size.width * 0.022,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
