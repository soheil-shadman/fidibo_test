class StateManager {
  Status? _change = Status.none;
  bool _hastStarted = false;

  Start() {
    _hastStarted = true;
  }

  bool GetStartingState() {
    return _hastStarted;
  }

  ResetChange() {
    _change = Status.none;
  }

  Status? GetChange() {
    return _change;
  }

  RightChange() {
    _change = Status.right;
  }

  LeftChange() {
    _change = Status.left;
  }
}

enum Status {
  none,
  right,
  left,
}
