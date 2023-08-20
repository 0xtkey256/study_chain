class MockDataProvider {
  static final MockDataProvider _instance = MockDataProvider._internal();

  final Map _db = {
    "section": {"1": 0}
  };

  factory MockDataProvider() {
    return _instance;
  }

  MockDataProvider._internal();

  Future<void> update(String key, Map<String, dynamic> data) async {}
}
