import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple ListView App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollable List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            elevation: 4.0,
            child: ListTile(
              title: Text(items[index]),
              subtitle: Text('This is item number ${index + 1}'),
              leading: Icon(Icons.star, color: Colors.amber),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
               
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You tapped on ${items[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}