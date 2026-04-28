import 'note.dart';

class Scale {
  final NoteName root;
  final String name;         // プリセットキー or 'custom'
  final List<NoteIndex> intervals; // rootからの音程（0始まり、0=rootを含む）

  const Scale({
    required this.root,
    required this.name,
    required this.intervals,
  });

  /// rootを含むスケール上の全音のNoteIndex（0〜11）
  List<NoteIndex> get noteIndices =>
      intervals.map((i) => (noteToIndex[root]! + i) % 12).toList();

  /// rootのNoteIndex
  NoteIndex get rootIndex => noteToIndex[root]!;

  /// 表示名 例: "G - Pentatonic Minor"
  String get displayName {
    final label = presetScaleLabels[name] ?? 'Custom';
    return '$root - $label';
  }

  /// プリセットからファクトリ
  factory Scale.fromPreset(NoteName root, String presetKey) {
    return Scale(
      root: root,
      name: presetKey,
      intervals: List.unmodifiable(presetScales[presetKey]!),
    );
  }

  /// カスタムスケール（rootは必ず含む）
  factory Scale.custom(NoteName root, Set<NoteIndex> selectedIntervals) {
    final intervals = ({0, ...selectedIntervals}).toList()..sort();
    return Scale(
      root: root,
      name: 'custom',
      intervals: intervals,
    );
  }

  Scale copyWith({
    NoteName? root,
    String? name,
    List<NoteIndex>? intervals,
  }) {
    return Scale(
      root: root ?? this.root,
      name: name ?? this.name,
      intervals: intervals ?? this.intervals,
    );
  }
}
