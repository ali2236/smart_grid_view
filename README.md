# smart_grid_view

A responsive grid view that changes it's cross axis child count based on the available horizontal size.

![](pictures/1.jpg)
![](pictures/2.jpg)

```dart
SmartGridView(
          tileWidth: 128,
          tileHeight: 168,
          children: List.generate(80, (index) => Card(
            child: GridTile(
              child: Text('tile #$index'),
            ),
          )),
        )
```