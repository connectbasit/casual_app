import 'package:provider/provider.dart';

import '../index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> screens = [
    RecipeScreen(),
    CommentScreen(),
    QuoteScreen(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_){
      Provider.of<ApiServices>(context, listen: false).getRecipes();
      Provider.of<ApiServices>(context, listen: false).getComments();
      Provider.of<ApiServices>(context, listen: false).getQuotations();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Selector<ApiServices, int>(builder: (context, value, _) {
        return Scaffold(
          body: screens[value],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: value,
              onTap: Provider.of<ApiServices>(context, listen: false).changeIndex,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.fastfood), label: 'Recipe'),
                BottomNavigationBarItem(icon: Icon(Icons.comment), label: 'Comments'),
                BottomNavigationBarItem(icon: Icon(Icons.quora), label: 'Quotations'),
              ]),
        );
      }, selector: (_, provider) => provider.selectedIndex,);
  }
}
