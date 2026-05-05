import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? imagePathLeading;
  final String? imagePathTrailing;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;

  const CustomAppBar({
    super.key,
    required this.title,
    this.imagePathLeading,
    this.imagePathTrailing,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isTablet = screenWidth > 600;
    final double imageH = isTablet ? 80.0 : 50.0;
    final double spacing = isTablet ? 30.0 : 15.0;
    const double totalHeight = 120.0;

    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: totalHeight,

      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (imagePathLeading != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                imagePathLeading!,
                height: imageH,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
              ),
            ),

          SizedBox(width: spacing),

          Flexible(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: isTablet ? fontSize + 2 : fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(width: spacing),

          if (imagePathTrailing != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                imagePathTrailing!,
                height: imageH,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
