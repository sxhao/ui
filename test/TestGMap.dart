#import('../lib/app.dart');
#import('../lib/view.dart');
#import('../lib/service/gmaps.dart');
#import('../lib/util.dart');

class TestGMap extends Activity {

  void onCreate_() {
    GMap gmap = new GMap("mymap");
    Map mapOptions = {
      "center": new LatLng(-34.397, 150.644),
      "zoom": 8,
      "mapTypeId": MapTypeId.ROADMAP
    };
    gmap.init(mapOptions, (GMap map) {
      new GMarker({
        "position": map.getCenter(),
        "map": map
      });
    });
  }
}

void main() {
  new TestGMap().run();
}