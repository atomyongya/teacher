import 'package:flutter/widgets.dart';

class Teacher {
  static OverlayEntry? _entry;

  static void startTeaching({required BuildContext context}) {
    if (_entry != null) {
      return;
    }

    _entry = OverlayEntry(builder: (BuildContext context) => Container());
    Overlay.of(context).insert(_entry!);
  }

  /// Remove the OverlayEntry.
  static void stopTeaching() {
    _entry?.remove();
    _entry?.dispose();
    _entry = null;
  }
}
