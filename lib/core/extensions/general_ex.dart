extension GeneralEx on dynamic {
  T? asOrNull<T>() {
    if (this is T) {
      return this as T;
    }
    return null;
  }
}

extension IterableEx on Iterable {
  T? firstOrNull<T>() {
    if (this is T) {
      return this as T;
    }
    return null;
  }

  /// To List or empty
  List<T> toListOrEmpty<T>() {
    if (this is T) {
      return [this as T];
    } else {
      return <T>[];
    }
  }
}

extension ListStringEx on List<String>? {
  List<String> toListOrEmpty() {
    if (this != null) {
      return this!;
    } else {
      return <String>[];
    }
  }
}
