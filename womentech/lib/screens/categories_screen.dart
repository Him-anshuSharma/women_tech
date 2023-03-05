import 'package:flutter/material.dart';
import 'package:womentech/providers/category_provider.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatefulWidget {
  //final String Category;
  const CategoryPage(
      { //required this.Category,
      super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  final _formKey = GlobalKey<FormState>();
  String category = "";
  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<CategoriesProvider>(context);
    return Container(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Place for the keywords to show
                Text("Add New Category", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),),
                const SizedBox(
                  height: 150,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                  
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                            borderSide:
                                BorderSide(color: Colors.purple[50]!, width: 2.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.purple[900]!, width: 2.0)),
                        hintText: "Type Your Category Here",
                        errorStyle: TextStyle(
                          color: Colors.purple[400],
      
                        ),
                        ),

                        
                    validator: ((value) =>
                        (value!.isEmpty ? "Enter a category" : null)),
                    onChanged: (val) {
                      setState(() {
                        category = val;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple[800],
                  ),
                  child: TextButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          categories.addCategory(
                              category); // add categories
                        });
                      }
                    },
                    child: const Text(
                      'Add Category',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )));
  }
}