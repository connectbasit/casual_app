import '../index.dart';

void customMessage(BuildContext context, String message, int statusCode){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        key: Key('snackBar'),
          content: CustomText(text: message, size: 14, fontWeight: FontWeight.bold, textColor: Colors.white,),
        behavior: SnackBarBehavior.floating,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        backgroundColor: statusCode == 200 ? Colors.green : Colors.red,
      )
  );
}
