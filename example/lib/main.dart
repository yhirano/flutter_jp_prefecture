import 'package:jp_prefecture/jp_prefecture.dart';

void main() {
  final pref = JpPrefecture.findByCode(13);
  if (pref == null) {
    return;
  }
  print(pref.code); // => 13
  print(pref.name); // => '東京都'
  print(pref.nameE); // => 'Tokyo'
  print(pref.nameH); // => 'とうきょうと'
  print(pref.nameK); // => 'トウキョウト'
  print(pref.area); // => '関東'
  print(pref.type); // => '都'
}