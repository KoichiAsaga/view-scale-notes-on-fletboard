typedef NoteName = String;
typedef NoteIndex = int;

const List<NoteName> noteNames = [
  'C', 'C#', 'D', 'D#', 'E', 'F',
  'F#', 'G', 'G#', 'A', 'A#', 'B',
];

const Map<NoteName, NoteIndex> noteToIndex = {
  'C': 0, 'C#': 1, 'D': 2, 'D#': 3, 'E': 4,  'F': 5,
  'F#': 6, 'G': 7, 'G#': 8, 'A': 9, 'A#': 10, 'B': 11,
};

const Map<String, List<NoteIndex>> presetScales = {
  'major':              [0, 2, 4, 5, 7, 9, 11],
  'minor':              [0, 2, 3, 5, 7, 8, 10],
  'harmonic_minor':     [0, 2, 3, 5, 7, 8, 11],
  'pentatonic_minor':   [0, 3, 5, 7, 10],
  'melodic_minor':      [0, 2, 3, 5, 7, 9, 11],
  'combination_of_dim': [0, 1, 3, 4, 6, 7, 9, 10],
  'altered':            [0, 1, 3, 4, 6, 9, 10],
  'blues':              [0, 3, 5, 6, 10],
  'whole_tone':         [0, 2, 4, 6, 8, 10],
};

/// プリセットの表示名
const Map<String, String> presetScaleLabels = {
  'major':              'Major',
  'minor':              'Minor',
  'harmonic_minor':     'Harmonic Minor',
  'pentatonic_minor':   'Pentatonic Minor',
  'melodic_minor':      'Melodic Minor',
  'combination_of_dim': 'Combination of Diminished',
  'altered':            'Altered',
  'blues':              'Blues',
  'whole_tone':         'Whole Tone',
};

/// 音程名（カスタムスケール用チェックボックス表示）
const Map<NoteIndex, String> intervalNames = {
  1:  '短2度 (m2)',
  2:  '長2度 (M2)',
  3:  '短3度 (m3)',
  4:  '長3度 (M3)',
  5:  '完全4度 (P4)',
  6:  '増4度 (A4)',
  7:  '完全5度 (P5)',
  8:  '短6度 (m6)',
  9:  '長6度 (M6)',
  10: '短7度 (m7)',
  11: '長7度 (M7)',
};
