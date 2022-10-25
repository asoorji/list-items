import 'package:flutter/material.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ListView.builder",
        theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        home:  ListViewBuilder());
  }
}
 
class ListViewBuilder extends StatelessWidget {
   ListViewBuilder({Key? key}) : super(key: key);

    List posts = [
      'one', 'two', 'three'
      ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView.builder")),
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  "GFG",
                ),
                title: Text("List item $index"),
                  onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(index: index,)
                ),
              );
            },
                );
          }),
    );
  }

}


class Details extends StatelessWidget {
  final int index;

   Details({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Index is #$index'),),
    );
  }
}
