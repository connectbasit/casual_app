import 'package:provider/provider.dart';

import '../index.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Selector<ApiServices, (bool, List<RecipeModel>)>(builder: (context, value, _) {
        final isLoading = value.$1;
        final recipes = value.$2;

        return isLoading ? Center(child: CircularProgressIndicator(),) : ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(recipes[index].recipeImage),
            title: Text(recipes[index].recipeName),
            subtitle: Text(recipes[index].rating.toString()),
          );
        },);
      }, selector: (_, provider) => (provider.isLoading, provider.recipes),),
    );
  }
}
