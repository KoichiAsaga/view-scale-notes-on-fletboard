import 'note.dart';

class StringedInstrument {
  final String name;
  final List<NoteName> tuning; // インデックス0が最低音コース

  const StringedInstrument({required this.name, required this.tuning});

  int get courseCount => tuning.length;

  /// courseIndex番目のコースのfretフレットの音のNoteIndex
  NoteIndex noteAt(int courseIndex, int fret) {
    assert(courseIndex >= 0 && courseIndex < courseCount);
    return (noteToIndex[tuning[courseIndex]]! + fret) % 12;
  }

  /// コースのopen stringの音名
  NoteName openNoteNameAt(int courseIndex) => tuning[courseIndex];

  StringedInstrument copyWith({String? name, List<NoteName>? tuning}) {
    return StringedInstrument(
      name: name ?? this.name,
      tuning: tuning ?? this.tuning,
    );
  }

  /// よく使うプリセット
  static const guitar = StringedInstrument(
    name: 'Guitar',
    tuning: ['E', 'A', 'D', 'G', 'B', 'E'], // 低音弦から
  );

  static const bass = StringedInstrument(
    name: 'Bass',
    tuning: ['E', 'A', 'D', 'G'],
  );

  static const ukulele = StringedInstrument(
    name: 'Ukulele',
    tuning: ['G', 'C', 'E', 'A'],
  );

  static const charango = StringedInstrument(
    name: 'Charango',
    tuning: ['G', 'C', 'E', 'A', 'E'],
  );

  static const sevenStringGuitar = StringedInstrument(
    name: '7-String Guitar',
    tuning: ['B', 'E', 'A', 'D', 'G', 'B', 'E'],
  );
}
