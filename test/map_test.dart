import 'package:flutter_test/flutter_test.dart';

void main() {
  Map<int, String> map;
  setUp(() {
    map = <int, String>{1: 'one', 2: 'two', 3: 'three', 4: 'four', 5: 'five'};
  });
  group("tests for Map", () {
    test("add new values", () {
      map.addAll({6: 'six', 7: 'seven', 8: 'eight'});
      expect(map.length, 8);
    });

    test("contains key", () {
      expect(map.containsKey(4), true);
      expect(map.containsKey(8), false);
    });

    test("contains value", () {
      expect(map.containsValue('four'), true);
      expect(map.containsValue('eight'), false);
    });

    test("remove key", () {
      map.remove(1);
      expect(map.containsKey(1), false);
    });

    test("clear", () {
      map.clear();
      expect(map.isEmpty, true);
    });

    test("properties", () {
      expect(map.isNotEmpty, true);
      expect(map.length, 5);
      expect(map.keys, [1, 2, 3, 4, 5]);
    });
  });
}
