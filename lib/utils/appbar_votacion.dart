import 'package:votacion_simulacro/barril.dart';

class AppBarVotacion extends StatelessWidget implements PreferredSizeWidget {
  final Widget titleTop;
  final String titleBottom;
  final String? imagePathLeading;
  final String? imagePathTrailing;
  final Color backgroundColor;

  const AppBarVotacion({
    super.key,
    required this.titleTop,
    required this.titleBottom,
    this.imagePathLeading,
    this.imagePathTrailing,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isTablet = size.width > 600;
    final double boxHeight = isTablet ? 70.0 : 52.0;
    final double leadingWidth = isTablet ? 130.0 : 90.0;
    final double trailingWidth = isTablet ? 85.0 : 65.0;
    final double fontSizeBottom = isTablet ? 20.0 : 14.0;
    final double containerHeight = isTablet ? 35.0 : 26.0;

    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (imagePathLeading != null)
                    _buildImageContainer(
                      imagePathLeading!,
                      leadingWidth,
                      boxHeight,
                    ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: FittedBox(fit: BoxFit.scaleDown, child: titleTop),
                    ),
                  ),

                  if (imagePathTrailing != null)
                    _buildImageContainer(
                      imagePathTrailing!,
                      trailingWidth,
                      boxHeight,
                    ),
                ],
              ),
            ),
            const SizedBox(height: 3),
            Container(
              width: size.width * 0.70,
              height: containerHeight,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              alignment: Alignment.center,
              child: Text(
                titleBottom.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSizeBottom,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageContainer(String path, double width, double height) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Image.asset(path, fit: BoxFit.contain),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(115);
}
