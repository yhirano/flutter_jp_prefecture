library jp_prefecture;

class JpPrefecture {
  JpPrefecture(
      this._code,
      this._name,
      this._nameE,
      this._nameH,
      this._nameK,
      this._area,
      );

  final int _code;
  final String _name;
  final String _nameE;
  final String _nameH;
  final String _nameK;
  final String _area;

  /// Prefecture code.
  int get code => _code;

  /// Prefecture name in Japanese.
  String get name => _name;

  /// Prefecture name in English.
  String get nameE => _capitalize(_nameE);

  /// Prefecture name in Japanese hiragana.
  String get nameH => _nameH;

  /// Prefecture name in Japanese katakana.
  String get nameK => _nameK;

  /// Prefecture area name in Japanese.
  String get area => _area;

  /// Prefecture type(都, 道, 府, 県) name in Japanese.
  String? get type {
    final type = _name.substring(_name.length - 1);
    switch (type) {
      case '都':
      case '道':
      case '府':
      case '県':
        return type;
      default:
        return null;
    }
  }

  /// Prefecture name in Japanese.
  @override
  String toString() => _name;

  /// Get all prefectures.
  static Iterable<JpPrefecture> get all => _data.values;

  /// Get a prefecture by prefecture code. Return null if not found.
  static JpPrefecture? findByCode(int code) {
    return _data[code];
  }

  /// Get a prefecture by name. Return null if not found.
  static JpPrefecture? findByName(String name) {
    final code = _findCodeByName(name);
    if (code == null) {
      return null;
    }
    return _data[code];
  }

  static int? _findCodeByName(String name) {
    if (name.isEmpty) {
      return null;
    }

    final n = name.toLowerCase();
    for (final JpPrefecture jpPrefecture in _data.values) {
      if (jpPrefecture.name.startsWith(n)) {
        return jpPrefecture.code;
      }
    }

    return null;
  }

  static String _capitalize(String text) {
    if (text.isEmpty) {
      return text;
    }
    return '${text[0].toUpperCase()}${text.substring(1)}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is JpPrefecture &&
              runtimeType == other.runtimeType &&
              _code == other._code &&
              _name == other._name &&
              _nameE == other._nameE &&
              _nameH == other._nameH &&
              _nameK == other._nameK &&
              _area == other._area;

  @override
  int get hashCode =>
      _code.hashCode ^
      _name.hashCode ^
      _nameE.hashCode ^
      _nameH.hashCode ^
      _nameK.hashCode ^
      _area.hashCode;

  static final Map<int, JpPrefecture> _data = {
    1:  JpPrefecture(1, '北海道', 'hokkaido', 'ほっかいどう', 'ホッカイドウ', '北海道'),
    2:  JpPrefecture(2, '青森県', 'aomori', 'あおもりけん', 'アオモリケン', '東北'),
    3:  JpPrefecture(3, '岩手県', 'iwate', 'いわてけん', 'イワテケン', '東北'),
    4:  JpPrefecture(4, '宮城県', 'miyagi', 'みやぎけん', 'ミヤギケン', '東北'),
    5:  JpPrefecture(5, '秋田県', 'akita', 'あきたけん', 'アキタケン', '東北'),
    6:  JpPrefecture(6, '山形県', 'yamagata', 'やまがたけん', 'ヤマガタケン', '東北'),
    7:  JpPrefecture(7, '福島県', 'fukushima', 'ふくしまけん', 'フクシマケン', '東北'),
    8:  JpPrefecture(8, '茨城県', 'ibaraki', 'いばらきけん', 'イバラキケン', '関東'),
    9:  JpPrefecture(9, '栃木県', 'tochigi', 'とちぎけん', 'トチギケン', '関東'),
    10: JpPrefecture(10, '群馬県', 'gunma', 'ぐんまけん', 'グンマケン', '関東'),
    11: JpPrefecture(11, '埼玉県', 'saitama', 'さいたまけん', 'サイタマケン', '関東'),
    12: JpPrefecture(12, '千葉県', 'chiba', 'ちばけん', 'チバケン', '関東'),
    13: JpPrefecture(13, '東京都', 'tokyo', 'とうきょうと', 'トウキョウト', '関東'),
    14: JpPrefecture(14, '神奈川県', 'kanagawa', 'かながわけん', 'カナガワケン', '関東'),
    15: JpPrefecture(15, '新潟県', 'niigata', 'にいがたけん', 'ニイガタケン', '中部'),
    16: JpPrefecture(16, '富山県', 'toyama', 'とやまけん', 'トヤマケン', '中部'),
    17: JpPrefecture(17, '石川県', 'ishikawa', 'いしかわけん', 'イシカワケン', '中部'),
    18: JpPrefecture(18, '福井県', 'fukui', 'ふくいけん', 'フクイケン', '中部'),
    19: JpPrefecture(19, '山梨県', 'yamanashi', 'やまなしけん', 'ヤマナシケン', '中部'),
    20: JpPrefecture(20, '長野県', 'nagano', 'ながのけん', 'ナガノケン', '中部'),
    21: JpPrefecture(21, '岐阜県', 'gifu', 'ぎふけん', 'ギフケン', '中部'),
    22: JpPrefecture(22, '静岡県', 'shizuoka', 'しずおかけん', 'シズオカケン', '中部'),
    23: JpPrefecture(23, '愛知県', 'aichi', 'あいちけん', 'アイチケン', '中部'),
    24: JpPrefecture(24, '三重県', 'mie', 'みえけん', 'ミエケン', '関西'),
    25: JpPrefecture(25, '滋賀県', 'shiga', 'しがけん', 'シガケン', '関西'),
    26: JpPrefecture(26, '京都府', 'kyoto', 'きょうとふ', 'キョウトフ', '関西'),
    27: JpPrefecture(27, '大阪府', 'osaka', 'おおさかふ', 'オオサカフ', '関西'),
    28: JpPrefecture(28, '兵庫県', 'hyogo', 'ひょうごけん', 'ヒョウゴケン', '関西'),
    29: JpPrefecture(29, '奈良県', 'nara', 'ならけん', 'ナラケン', '関西'),
    30: JpPrefecture(30, '和歌山県', 'wakayama', 'わかやまけん', 'ワカヤマケン', '関西'),
    31: JpPrefecture(31, '鳥取県', 'tottori', 'とっとりけん', 'トットリケン', '中国'),
    32: JpPrefecture(32, '島根県', 'shimane', 'しまねけん', 'シマネケン', '中国'),
    33: JpPrefecture(33, '岡山県', 'okayama', 'おかやまけん', 'オカヤマケン', '中国'),
    34: JpPrefecture(34, '広島県', 'hiroshima', 'ひろしまけん', 'ヒロシマケン', '中国'),
    35: JpPrefecture(35, '山口県', 'yamaguchi', 'やまぐちけん', 'ヤマグチケン', '中国'),
    36: JpPrefecture(36, '徳島県', 'tokushima', 'とくしまけん', 'トクシマケン', '四国'),
    37: JpPrefecture(37, '香川県', 'kagawa', 'かがわけん', 'カガワケン', '四国'),
    38: JpPrefecture(38, '愛媛県', 'ehime', 'えひめけん', 'エヒメケン', '四国'),
    39: JpPrefecture(39, '高知県', 'kochi', 'こうちけん', 'コウチケン', '四国'),
    40: JpPrefecture(40, '福岡県', 'fukuoka', 'ふくおかけん', 'フクオカケン', '九州'),
    41: JpPrefecture(41, '佐賀県', 'saga', 'さがけん', 'サガケン', '九州'),
    42: JpPrefecture(42, '長崎県', 'nagasaki', 'ながさきけん', 'ナガサキケン', '九州'),
    43: JpPrefecture(43, '熊本県', 'kumamoto', 'くまもとけん', 'クマモトケン', '九州'),
    44: JpPrefecture(44, '大分県', 'oita', 'おおいたけん', 'オオイタケン', '九州'),
    45: JpPrefecture(45, '宮崎県', 'miyazaki', 'みやざきけん', 'ミヤザキケン', '九州'),
    46: JpPrefecture(46, '鹿児島県', 'kagoshima', 'かごしまけん', 'カゴシマケン', '九州'),
    47: JpPrefecture(47, '沖縄県', 'okinawa', 'おきなわけん', 'オキナワケン', '九州'),
  };
}