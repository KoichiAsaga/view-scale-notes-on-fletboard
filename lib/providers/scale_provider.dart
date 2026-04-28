import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/note.dart';
import '../models/scale.dart';
import '../models/stringed_instrument.dart';

// ─────────────────────────────────────────
// 楽器
// ─────────────────────────────────────────
class InstrumentNotifier extends Notifier<StringedInstrument> {
  @override
  StringedInstrument build() => StringedInstrument.guitar;

  void setInstrument(StringedInstrument instrument) => state = instrument;

  void setTuning(List<NoteName> tuning) {
    state = state.copyWith(tuning: tuning);
  }

  void setNoteAtCourse(int courseIndex, NoteName note) {
    final newTuning = List<NoteName>.from(state.tuning);
    newTuning[courseIndex] = note;
    state = state.copyWith(tuning: newTuning);
  }

  void addCourse(NoteName note) {
    state = state.copyWith(tuning: [...state.tuning, note]);
  }

  void removeCourse(int courseIndex) {
    if (state.courseCount <= 1) return;
    final newTuning = List<NoteName>.from(state.tuning)..removeAt(courseIndex);
    state = state.copyWith(tuning: newTuning);
  }
}

final instrumentProvider =
    NotifierProvider<InstrumentNotifier, StringedInstrument>(
      InstrumentNotifier.new,
    );

// ─────────────────────────────────────────
// スケール
// ─────────────────────────────────────────
class ScaleNotifier extends Notifier<Scale> {
  @override
  Scale build() => Scale.fromPreset('G', 'pentatonic_minor');

  void setRoot(NoteName root) {
    state = state.copyWith(root: root);
  }

  void setPreset(String presetKey) {
    state = Scale.fromPreset(state.root, presetKey);
  }

  void setCustomIntervals(Set<NoteIndex> intervals) {
    state = Scale.custom(state.root, intervals);
  }
}

final scaleProvider = NotifierProvider<ScaleNotifier, Scale>(ScaleNotifier.new);

// ─────────────────────────────────────────
// カスタムスケール用：選択中の音程セット
// ─────────────────────────────────────────
class CustomIntervalsNotifier extends Notifier<Set<NoteIndex>> {
  @override
  Set<NoteIndex> build() => {};

  void toggle(NoteIndex interval) {
    if (interval == 0) return; // rootは常にON
    final next = Set<NoteIndex>.from(state);
    if (next.contains(interval)) {
      next.remove(interval);
    } else {
      next.add(interval);
    }
    state = next;
  }

  void setAll(Set<NoteIndex> intervals) {
    state = intervals;
  }
}

final customIntervalsProvider =
    NotifierProvider<CustomIntervalsNotifier, Set<NoteIndex>>(
      CustomIntervalsNotifier.new,
    );
