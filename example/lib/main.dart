import 'package:flutter/material.dart';
import 'package:smart_grid_view/smart_grid_view.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Example')),
        body: SmartGridView(
          tileWidth: 128,
          tileHeight: 168,
          children: List.generate(
              80,
              (index) => Card(
                    child: GridTile(
                      child: Text('tile #$index'),
                    ),
                  )),
        ),
      ),
    );
  }
}
