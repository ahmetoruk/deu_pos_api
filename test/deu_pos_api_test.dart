import 'package:deu_pos_api/src/api.dart';
import 'package:flutter_test/flutter_test.dart';

const String _username = "";
const String _password = "";
void main() {
  //TODO : Write better test
  test('deu_pos_api_test', () async {
    final api = DeuPosApi();
    await api.login(_username, _password);
    final balance = await api.getBalance();
    print(balance.credit);
    for (final weekly in balance.weeklies) {
      print(weekly.date);
      print(weekly.weeklyDays);
    }
  });
}
