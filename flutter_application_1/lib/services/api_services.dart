import 'package:flutter_application_1/core/exception/failed_request.dart';
import 'package:flutter_application_1/model/recipes_model.dart';
import 'package:http/http.dart';

class ApiServices {
  final Client client = Client();
  Future<List<RecipeModel>> getAllRecipes() async {
    Uri url = Uri.parse("https://dummyjson.com/recipes");
    try {
      Response response = await client.get(url);
      if (response.statusCode == 200) {
        return recipeModelFromjson(response.body);
      } else {
        throw RequestFailedException(statusCode: response.statusCode);
      }
    } catch (e) {
      rethrow;
    }
  }
}
