import 'package:flutter/foundation.dart';

class CategoriesProvider extends ChangeNotifier {
  final List<String> _categories = ["1","2","3","4","5","Add New Category"];

  List<String> get items => [..._categories];

  void addCategory(String newCategory) {
    _categories.add(newCategory);
    notifyListeners();
  }

  void removeString(String Cat) {
    _categories.remove(Cat);
    notifyListeners();
  }

  List<String> getALLCategories(){
    return _categories;
  }
}
