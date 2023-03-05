import 'package:flutter/material.dart';
import 'package:womentech/widgets/keyword_label.dart';

class CategoryEmailPage extends StatefulWidget {
  const CategoryEmailPage({Key? key}) : super(key: key);

  @override
  State<CategoryEmailPage> createState() => _CategoryEmailPageState();
}

class _CategoryEmailPageState extends State<CategoryEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/BgPage.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
          margin: const EdgeInsets.all(15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 100,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Text(
                    "Your mails",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        // fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "/keywordsPage");
                    },
                    child: Container(
                      child: Column(children: [
                        Icon(Icons.add, color: Colors.black, size: 30),
                        Text(
                          "Add",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.purple[900],
                            decoration: TextDecoration.none
                          ),
                        )
                      ]),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    KeywordContainer(keywordName: "Re-FAT"),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple[100],
                      ),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Re-FAT",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.close,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple[100],
                      ),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "RE-CAT",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.close,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple[100],
                      ),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Schedule",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.close,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Subject : Debarred in CAT 2 ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          decoration: TextDecoration.none
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Body : Himanshu this is to inform you that you are debarred ...",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          decoration: TextDecoration.none
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Subject : Cat 2 schedule is out ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          decoration: TextDecoration.none
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Body : The CAT 2 schedule is out on VTOP ... ",
                        style : TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          decoration: TextDecoration.none
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(

                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      color : Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Subject : Urgent : DAA Quiz Tomorrow",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          decoration: TextDecoration.none
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Body : Reminder! You have a DAA QUIZ ... ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          decoration: TextDecoration.none
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ])),
    );
  }
}