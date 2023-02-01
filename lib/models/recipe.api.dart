import 'dart:convert';
import 'package:app_project/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https(
        'yummly2.p.rapidapi.com', '/feeds/list', {"limit": "10", "start": "0"});
    final response = await http.get(uri, headers: {
      "X-RapidAPI-Key": "de916be471mshae8a73be54a7814p1937b4jsna472623fefb7",
      "X-RapidAPI-Host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    // print(response.body);
    List _temp = [];
    for (var i in data['feed']) {
      if (i['content']['details'] != null &&
          i['content']['details']['name'] != null &&
          i['content']['details']['images'][0] != null &&
          i['content']['details']['rating'] != null) {
        print(i['content']['details']);
        print('\n==========================\n');
        _temp.add(i['content']['details']);
      }
    }
    return Recipe.recipesFromSnapshot(_temp);
  }
}
