import '../index.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.size, required this.fontWeight, required this.textColor
  });

  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: size,
      fontWeight: fontWeight,
      color: textColor
    ),);
  }
}
