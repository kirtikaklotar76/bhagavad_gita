import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/gitacontroller.dart';
import '../../utils/routes_utils.dart';

class GitaPage extends StatelessWidget {
  const GitaPage({super.key});

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    int i = index + 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chapter $i",
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        backgroundColor: Color(0xffF0B631),
      ),
      backgroundColor: Color(0xffF0B631),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Consumer<gitacontroller>(builder: (context, pro, _) {
          return ListView.builder(
              itemCount: pro.allverse.length,
              itemBuilder: (_, index) {
                if (pro.allverse[index].chapter_id == i) {
                  return Card(
                    elevation: 2,
                    color: Colors.grey.shade200,
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                            MyRoutes.gitaDetailedPage,
                            arguments: pro.allverse[index].verse_order);
                      },
                      title: Text(
                        pro.allverse[index].text,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      leading: Text("${index + 1}"),
                    ),
                  );
                } else {
                  return SizedBox();
                }
              });
        }),
      ),
    );
  }
}
