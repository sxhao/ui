//Sample Code: Test Log

#import('package:rikulo/view.dart');
#import('package:rikulo/html.dart');

void main() {
  final View mainView = new View()..addToDocument();
  View view = new View();
  view.style.backgroundColor = "blue";
  view.width = 300;
  view.height = 250;
  view.left = browser.size.width - 180;
  view.top = browser.size.height - 180;
  mainView.addChild(view);
  mainView.addChild(new TextView("You shall see the scrollbar shown"));
}
