import 'package:flutter/material.dart';

class SuggestionsBoxController {
  final BuildContext context;

  OverlayEntry overlayEntry;

  bool _isOpened = false;

  bool get isOpened => _isOpened;

  SuggestionsBoxController(this.context);

  void open() {
    if (this._isOpened) return;
    assert(this.overlayEntry != null);
    Overlay.of(context).insert(this.overlayEntry);
    this._isOpened = true;
  }

  void close() {
    // debugPrint("Closing suggestion box");
    if (!this._isOpened) return;
    assert(this.overlayEntry != null);
    this.overlayEntry.remove();
    this._isOpened = false;
  }

  void toggle() {
    if (this._isOpened) {
      this.close();
    } else {
      this.open();
    }
  }
}
