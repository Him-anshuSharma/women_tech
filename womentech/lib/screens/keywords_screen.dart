import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:womentech/providers/keyword_provider.dart';
import 'package:womentech/widgets/keyword_label.dart';

class KeywordPage extends StatefulWidget {
  const KeywordPage({Key? key}) : super(key: key);

  @override
  State<KeywordPage> createState() => _KeywordPageState();
}

class _KeywordPageState extends State<KeywordPage> {

  String category = "Web Development";
  // get category from organize_category_page

  
  final _formKey = GlobalKey<FormState>();
  String keyword = "";

  @override
  Widget build(BuildContext context) {
    final keywordListProvider = Provider.of<KeywordListProvider>(context);

    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const Text(
              "Add Your Specific Keyword",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),

             Container(
               child: Consumer<KeywordListProvider>(
                builder: (context, provider, child) {
                  final allCategoryList = provider.getCatKeywords(category);
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemCount: allCategoryList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return KeywordContainer(keywordName: allCategoryList[index].name);
                    },
                  );
                },
                ),
             ),
        
             Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Colors.purple, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.purple, width: 2.0),
                  ),
                  hintText: "Type Your Keyword Here",
                  errorStyle: const TextStyle(
                    color: Colors.purple,
                  ),
                ),
                validator: ((value) =>
                    (value!.isEmpty ? "Enter a keyword" : null)),
                onChanged: (val) {
                  setState(() {
                    keyword = val;
                  });
                },
              ),
                       ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.purple,
              ),
              child: TextButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    keywordListProvider.addKeyword(keyword, category);
                  }
                },
                child: const Text(
                  'Add Keyword',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
