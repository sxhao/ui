//Test Code: TestTileLayout1

import 'dart:html';
import 'package:rikulo/view.dart';
import 'package:rikulo/html.dart';

void main() {
  document.title = "Test Tile Layout";

  View view = new ScrollView();
  view.style.backgroundColor = "#cca";
  view.layout.text = "type: tile; width: 50px; height: 50px";
  for (int x = 0; x < 30; ++x) {
    for (int y = 0; y < 30; ++y) {
      View child = new View();
      final String color = CSS.color(250 - x * 4, 250 - y * 4, 200);
      child.style.cssText = "border: 1px solid #553; background-color: $color";
      view.addChild(child);
    }
  }
  view.addToDocument();
}
