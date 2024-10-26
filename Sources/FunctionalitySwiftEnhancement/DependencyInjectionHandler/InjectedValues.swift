public struct InjectedValues {
  private static var current = InjectedValues()

  static public subscript<K>(key: K.Type) -> K.Value where K: InjectionKey {
    get { key.currentValue }
    set { key.currentValue = newValue }
  }

  static public subscript<T>(_ keyPath: WritableKeyPath<InjectedValues, T>) -> T {
    get { current[keyPath: keyPath] }
    set { current[keyPath: keyPath] = newValue }
  }
}
