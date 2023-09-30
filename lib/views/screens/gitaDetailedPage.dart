import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/gitacontroller.dart';

class GitaDetailedPage extends StatefulWidget {
  const GitaDetailedPage({super.key});

  @override
  State<GitaDetailedPage> createState() => _GitaDetailedPageState();
}

class _GitaDetailedPageState extends State<GitaDetailedPage> {
  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    int j = index - 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Verse $index",
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
        backgroundColor: Color(0xffF0B631),
      ),
      backgroundColor: Color(0xffF0B631),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Consumer<gitacontroller>(
          builder: (_, pro, __) => ListView.builder(
            itemCount: pro.allverse2.length,
            itemBuilder: (_, index) {
              if (pro.allverse2[index].verseNumber == j &&
                  pro.allverse2[index].lang == pro.lan2 &&
                  (pro.allverse2[index].authorName == pro.author_name)) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 2,
                      color: Colors.grey.shade200,
                      child: Center(child: Text(pro.allverse[j].text)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Meaning ",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 2,
                      color: Colors.grey.shade200,
                      child: Text(
                        pro.allverse2[index].description,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.greenAccent,
                          ),
                          child: TextButton(
                            onPressed: () {
                              pro.changeLanguage(
                                  lan: 'hindi', author: 'Swami Ramsukhdas');
                            },
                            child: const Text("Hindi"),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.greenAccent,
                          ),
                          child: TextButton(
                            onPressed: () {
                              pro.changeLanguage(
                                  lan: 'english', author: 'Swami Sivananda');
                            },
                            child: const Text("English"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                );
              } else {
                return SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
