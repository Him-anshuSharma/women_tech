// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Keyword {
  final String name;
  final String category;

  Keyword({required this.name, required this.category});
}

class KeywordListProvider extends ChangeNotifier {
  List<Keyword> _keywords = [
    Keyword(name: 'Flutter', category: 'Mobile Development'),
    Keyword(name: 'React', category: 'Web Development'),
    Keyword(name: 'Java', category: 'Programming Language'),
    Keyword(name: 'Python', category: 'Programming Language'),
  ];

  List<Keyword> get keywords => _keywords;

  void addKeyword(String keyword, String category) {
    _keywords.add(Keyword(name: keyword, category: category));
    notifyListeners();
  }

  void removeString(int index) {
    _keywords.remove(index);
    notifyListeners();
  }

  List<Keyword> getCatKeywords(String category) {
    List<Keyword> categoryKeywordList = [];
    for (Keyword keyword in _keywords) {
      if (keyword.category == category) {
        categoryKeywordList.add(keyword);
      }
    }
    return categoryKeywordList;
  }
}
