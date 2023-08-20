import 'package:study_chain/data_provider/mock_data_provider.dart';

class SectionRepository {
  final MockDataProvider mockDataProvider;

  SectionRepository(this.mockDataProvider);

  Future<void> updateSection(Map<String, Object> data) async {}
}
