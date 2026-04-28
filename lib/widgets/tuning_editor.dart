import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/note.dart';
import '../models/stringed_instrument.dart';
import '../providers/scale_provider.dart';

class TuningEditor extends ConsumerWidget {
  const TuningEditor({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final instrument = ref.watch(instrumentProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ── プリセット楽器ボタン ──────────
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
          child: Text(
            'Instrument Preset',
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: Colors.grey.shade600),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              StringedInstrument.guitar,
              StringedInstrument.bass,
              StringedInstrument.ukulele,
              StringedInstrument.sevenStringGuitar,
            ].map((preset) {
              final selected = instrument.name == preset.name;
              return Padding(
                padding: const EdgeInsets.only(right: 6),
                child: ChoiceChip(
                  label: Text(preset.name),
                  selected: selected,
                  onSelected: (_) => ref
                      .read(instrumentProvider.notifier)
                      .setInstrument(preset),
                ),
              );
            }).toList(),
          ),
        ),

        // ── コースのチューニング編集 ──────
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
          child: Text(
            'Tuning  (low → high)',
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: Colors.grey.shade600),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: instrument.courseCount,
          itemBuilder: (context, courseIndex) {
            final noteName = instrument.openNoteNameAt(courseIndex);
            return ListTile(
              dense: true,
              leading: Text(
                'Course ${courseIndex + 1}',
                style: const TextStyle(fontSize: 13),
              ),
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: noteNames.map((note) {
                    final selected = note == noteName;
                    return Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: ChoiceChip(
                        label: Text(note),
                        selected: selected,
                        labelStyle: const TextStyle(fontSize: 11),
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        onSelected: (_) => ref
                            .read(instrumentProvider.notifier)
                            .setNoteAtCourse(courseIndex, note),
                      ),
                    );
                  }).toList(),
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.remove_circle_outline, size: 20),
                onPressed: () => ref
                    .read(instrumentProvider.notifier)
                    .removeCourse(courseIndex),
              ),
            );
          },
        ),

        // ── コース追加ボタン ──────────────
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: OutlinedButton.icon(
            onPressed: () =>
                ref.read(instrumentProvider.notifier).addCourse('E'),
            icon: const Icon(Icons.add, size: 16),
            label: const Text('Add Course'),
          ),
        ),
      ],
    );
  }
}
