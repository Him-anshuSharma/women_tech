import 'package:flutter/material.dart';
import 'package:womentech/providers/category_provider.dart';
import 'package:provider/provider.dart';
import 'package:womentech/widgets/keyword_label.dart';
class KeywordsPage extends StatefulWidget {
  //final String Category;
  const KeywordsPage(
      { //required this.Category,
      super.key});

  @override
  State<KeywordsPage> createState() => _KeywordPageState();
}

class _KeywordPageState extends State<KeywordsPage> {

  final _formKey = GlobalKey<FormState>();
  String category = "";
  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<CategoriesProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/BgPage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child:Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                height: 150,
              ),
          
                // Place for the keywords to show
                const Text(
                  "Add New Keywords", 
                  style: TextStyle(
                    fontWeight: FontWeight.w800, 
                    fontSize: 30),),
                 SizedBox(height: 140,),
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
                        hintText: "Type Your Keyword Here",
                        errorStyle: TextStyle(
                          color: Colors.purple[400],
        
                        ),
                        ),
    
                        
                    validator: ((value) =>
                        (value!.isEmpty ? "Enter a Keyword" : null)),
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
                      'Add Keyword',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )),)
    );
  }
}
