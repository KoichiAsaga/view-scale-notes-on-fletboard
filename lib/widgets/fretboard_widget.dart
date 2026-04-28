import 'package:flutter/material.dart';
import '../models/scale.dart';
import '../models/stringed_instrument.dart';
import 'fretboard_painter.dart';

class FretboardWidget extends StatelessWidget {
  final Scale scale;
  final StringedInstrument instrument;

  const FretboardWidget({
    super.key,
    required this.scale,
    required this.instrument,
  });

  /// コース数に応じてキャンバス高さを決める
  double get _canvasHeight {
    const double courseSpacing = 40.0;
    const double verticalPadding = 40.0;
    return instrument.courseCount * courseSpacing + verticalPadding;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // スケール名のタイトル
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            scale.displayName,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        // 横スクロール対応のフレットボード
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: 900, // フレット幅の合計（等間隔12フレット分）
            height: _canvasHeight,
            child: Padding(
              padding: const EdgeInsets.only(left: 10), // ← 追加：開放弦ドット用スペース
              child: CustomPaint(
                painter: FretboardPainter(scale: scale, instrument: instrument),
              ),
            ),
          ),
        ),
        // フレット番号の表示
        _FretNumberRow(),
      ],
    );
  }
}

/// フレット番号を表示する行
class _FretNumberRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: 900,
        child: Row(
          children: [
            const SizedBox(width: 20), // ナット分のオフセット
            ...List.generate(12, (i) {
              final fret = i + 1;
              return Expanded(
                child: Center(
                  child: Text(
                    '$fret',
                    style: TextStyle(fontSize: 10, color: Colors.grey.shade500),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
