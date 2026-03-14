import 'package:provider/provider.dart';

import '../index.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('RecipeScreen'),
      body: Selector<ApiServices, (bool, List<RecipeModel>)>(builder: (context, value, _) {
        final isLoading = value.$1;
        final recipes = value.$2;

        return isLoading ? Center(child: CircularProgressIndicator(),) : ListView.builder(
          key: Key('recipeList'),
          itemCount: recipes.length,
          itemBuilder: (context, index) {
          return ListTile(
            key: Key(recipes[index].recipeName),
            leading: Image.network(recipes[index].recipeImage),
            title: Text(recipes[index].recipeName),
            subtitle: Text(recipes[index].ingredient.join('\n')),
            onTap: (){
              Provider.of<ApiServices>(context, listen: false).indexRemover('recipe', index, context);
            },
          );
        },);
      }, selector: (_, provider) => (provider.isLoading, provider.recipes),),
    );
  }
}
