import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  data['images'].length,
                  (index) => SizedBox(
                    height: s.height * 0.4,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.network(
                        data['images'][index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Text(
              data['title'],
            ),
            SizedBox(
              height: s.height * 0.05,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(data['description'].toString()),
              ),
            ),
            SizedBox(
              height: s.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$ ${data['price']}"),
                FloatingActionButton(onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
