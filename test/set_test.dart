import 'package:flutter_test/flutter_test.dart';

void main() {
  Set<String> set;
  setUp(() {
    set = <String>{'5', '0'};
  });

  group("tests for Set", () {
    test("add values", () {
      set.addAll({'4', '6', '6'});
      expect(set.length, 4);
    });

    test("clear", () {
      set.clear();
      expect(set.length, 0);
    });

    test("contains", () => expect(set.contains('5'), true));

    test("difference", () {
      expect(set.difference({'5', '6', '1'}), {'0'});
      expect(<String>{'5', '6', '1'}.difference(set), {'6', '1'});
    });

    test(
        "intersection", () => expect(set.intersection({'5', '6', '1'}), {'5'}));

    test("union", () {
      expect(set.union({'5', '6', '1'}), {'0', '1', '5', '6'});
    });

    test("skip", () {
      set.add('3');
      expect(set.skip(2), {'3'});
    });

    test("take", () => expect(set.take(1), {'5'}));

    test("join", () {
      expect(set.join(), '50');
    });

    test("where", () {
      expect(set.where((el) => el.contains('5')), {'5'});
    });

    test("properties", () {
      expect(set.length, 2);
      expect(set.first, '5');
      expect(set.last, '0');
      expect(set.isEmpty, false);
    });
  });
}
