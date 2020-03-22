import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SmartGridView extends StatelessWidget {
  final double tileWidth;
  final double tileHeight;
  final List<Widget> children;
  final Axis scrollDirection;
  final bool primary;
  final ScrollPhysics physics;
  final bool shrinkWrap;
  final EdgeInsetsGeometry padding;
  final double mainAxisSpacing;
  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final double cacheExtent;
  final int semanticChildCount;
  final DragStartBehavior dragStartBehavior;

  const SmartGridView({
    Key key,
    @required this.tileWidth,
    @required this.tileHeight,
    this.children = const <Widget>[],
    this.scrollDirection,
    this.primary,
    this.physics,
    this.shrinkWrap,
    this.padding,
    this.mainAxisSpacing,
    this.addAutomaticKeepAlives,
    this.addRepaintBoundaries,
    this.addSemanticIndexes,
    this.cacheExtent,
    this.semanticChildCount,
    this.dragStartBehavior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constaints) {
      final count = constaints.maxWidth ~/ tileWidth;
      return GridView.count(
        crossAxisCount: count,
        childAspectRatio: tileHeight / tileWidth,
        children: children,
        ////////////////////////////
        scrollDirection: scrollDirection,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding,
        mainAxisSpacing: mainAxisSpacing,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        cacheExtent: cacheExtent,
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
      );
    });
  }
}
