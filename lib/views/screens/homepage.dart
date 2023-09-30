import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/gitacontroller.dart';
import '../../utils/routes_utils.dart';
import '../component/list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bhagavad Gita",
          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffF0B631),
      ),
      backgroundColor: Color(0xffF0B631),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Consumer<gitacontroller>(builder: (context, pro, _) {
          return ListView.builder(
            itemCount: 18,
            itemBuilder: (_, index) => Card(
              color: Colors.grey.shade200,
              elevation: 5,
              child: ListTile(
                title: Text(
                  name[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Text(
                  "${index + 1}",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    MyRoutes.gitapage,
                    arguments: index,
                  );
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}
