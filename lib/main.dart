import 'package:provider/provider.dart';
import 'index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:
        [
          ChangeNotifierProvider(create: (context) => ApiServices(),)
        ],
    child: const MaterialApp(
      title: 'Casual App',
      home: HomeScreen(),
    )
    );
  }
}
