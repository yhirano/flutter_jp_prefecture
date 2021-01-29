# jp_prefecture

A library that converts Japanese prefecture codes and prefecture names.

## Usage

### Find a Japanese prefecture by prefecture code.

```dart
final pref = JpPrefecture.findByCode(13);
print(pref.code); // => 13
print(pref.name); // => '東京都'
print(pref.nameE); // => 'Tokyo'
print(pref.nameH); // => 'とうきょうと'
print(pref.nameK); // => 'トウキョウト'
print(pref.area); // => '関東'
print(pref.type); // => '都'
```

### Find a Japanese prefecture by prefecture name.

```dart
final pref = JpPrefecture.findByName('東京都');
print(pref.code); // => 13
print(pref.name); // => '東京都'
print(pref.nameE); // => 'Tokyo'
print(pref.nameH); // => 'とうきょうと'
print(pref.nameK); // => 'トウキョウト'
print(pref.area); // => '関東'
print(pref.type); // => '都'
```

### Get all Japanese prefectures.

```dart
final prefs = JpPrefecture.all;
print(prefs.first.code); // => 1
print(prefs.first.name); // => '北海道'
print(prefs.first.nameE); // => 'Hokkaido'
print(prefs.first.nameH); // => 'ほっかいどう'
print(prefs.first.nameK); // => 'ホッカイドウ'
print(prefs.first.area); // => '北海道'
print(prefs.first.type); // => '道'
```
