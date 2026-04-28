import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/note.dart';
import '../providers/scale_provider.dart';

class ScaleSelector extends ConsumerWidget {
  const ScaleSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scale = ref.watch(scaleProvider);
    final isCustom = scale.name == 'custom';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ── ルート音選択 ──────────────────
        _SectionLabel('Root'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: noteNames.map((note) {
              final selected = note == scale.root;
              return Padding(
                padding: const EdgeInsets.only(right: 6),
                child: ChoiceChip(
                  label: Text(note),
                  selected: selected,
                  onSelected: (_) =>
                      ref.read(scaleProvider.notifier).setRoot(note),
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 12),

        // ── プリセット選択 ────────────────
        _SectionLabel('Preset Scale'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              ...presetScaleLabels.entries.map((e) {
                final selected = scale.name == e.key;
                return Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: ChoiceChip(
                    label: Text(e.value),
                    selected: selected,
                    onSelected: (_) =>
                        ref.read(scaleProvider.notifier).setPreset(e.key),
                  ),
                );
              }),
              // カスタムボタン
              ChoiceChip(
                label: const Text('Custom'),
                selected: isCustom,
                onSelected: (_) {
                  final intervals =
                      ref.read(customIntervalsProvider);
                  ref
                      .read(scaleProvider.notifier)
                      .setCustomIntervals(intervals);
                },
              ),
            ],
          ),
        ),

        // ── カスタム音程チェックボックス ───
        if (isCustom) ...[
          const SizedBox(height: 12),
          _SectionLabel('Intervals (Custom)'),
          const _IntervalPicker(),
        ],
      ],
    );
  }
}

/// カスタムスケール用：音程チェックボックス
class _IntervalPicker extends ConsumerWidget {
  const _IntervalPicker();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(customIntervalsProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        spacing: 8,
        runSpacing: 4,
        children: intervalNames.entries.map((e) {
          final isOn = e.key == 0 || selected.contains(e.key);
          return FilterChip(
            label: Text(e.value),
            selected: isOn,
            onSelected: e.key == 0
                ? null // rootは常にON
                : (_) {
                    ref
                        .read(customIntervalsProvider.notifier)
                        .toggle(e.key);
                    // プロバイダのスケールも即更新
                    final next = Set<NoteIndex>.from(selected);
                    if (next.contains(e.key)) {
                      next.remove(e.key);
                    } else {
                      next.add(e.key);
                    }
                    ref
                        .read(scaleProvider.notifier)
                        .setCustomIntervals(next);
                  },
          );
        }).toList(),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String label;
  const _SectionLabel(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
      child: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .labelSmall
            ?.copyWith(color: Colors.grey.shade600),
      ),
    );
  }
}
