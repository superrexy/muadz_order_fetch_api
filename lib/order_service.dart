import 'package:http/http.dart' as http;
import 'package:muadz_order/order_model.dart';

Future<LatestOrderModel> fetchLatestOrder() async {
  final response = await http.get(
      Uri.parse(
          'https://luxury-admin.testserver-ordoapps.com/api/v1/user/latest_order'),
      headers: {
        'Authorization': 'Bearer 34|1W0TYPsciIEZrITzZQVcCKLUBxbY1in15Z5QGFAD',
      });

  if (response.statusCode == 200) {
    return latestOrderModelFromJson(response.body);
  } else {
    throw Exception('Failed to load latest order');
  }
}
