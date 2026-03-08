
import '../index.dart';

class ApiServices extends ChangeNotifier{

  final String _baseURL = 'https://dummyjson.com';

  int selectedIndex = 0;

  List<QuoteModel> quotations = [];

  List<CommentModel> comments = [];

  List<RecipeModel> recipes = [];

  bool isLoading = false;

  Future<void> getQuotations()async{
    try{
      isLoading = true;
      notifyListeners();
      var dio = Dio();
      var response = await dio.request(
        '$_baseURL/quotes',
        options: Options(
          method: 'GET',
        ),
      );

      if (response.statusCode == 200) {
        final quotes = (response.data['quotes'] as List).map((e)=> QuoteModel.fromJson(e as Map<String, dynamic>)).toList();
        quotations = quotes;
        notifyListeners();
      }
      else {
        isLoading = false;
      }
    } catch(e) {
      isLoading = false;
    } finally{
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getComments()async{
    try{
      isLoading = true;
      notifyListeners();
      var dio = Dio();
      var response = await dio.request(
        '$_baseURL/comments',
        options: Options(
          method: 'GET',
        ),
      );

      if (response.statusCode == 200) {
        final getComments = (response.data['comments'] as List).map((e) => CommentModel.fromJson(e as Map<String, dynamic>)).toList();
        comments = getComments;
        notifyListeners();
      }
      else {
        isLoading = false;
      }
    } catch(e){
      isLoading = false;
    } finally{
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getRecipes()async{
    try{
      isLoading = true;
      notifyListeners();
      var dio = Dio();
      var response = await dio.request(
        '$_baseURL/recipes',
        options: Options(
          method: 'GET',
        ),
      );

      if (response.statusCode == 200) {
        final getRecipe = (response.data['recipes'] as List).map((e) => RecipeModel.fromJson(e as Map<String, dynamic>)).toList();
        recipes = getRecipe;
        notifyListeners();
      }
      else {
        isLoading = false;
      }
    } catch(e){
      isLoading = false;
    } finally{
      isLoading = false;
      notifyListeners();
    }
  }

  void changeIndex(int index){
    selectedIndex = index;
    notifyListeners();
  }

  void indexRemover(String type, int index, BuildContext context){
    type == 'quote' ? quotations.removeAt(index) : type == 'recipe' ? recipes.removeAt(index) : type == 'comment' ? comments.removeAt(index) : null;
    customMessage(context, '$type is removed', 200);
    notifyListeners();
  }
}