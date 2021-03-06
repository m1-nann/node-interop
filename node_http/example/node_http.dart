import 'package:node_http/node_http.dart' as http;

main() async {
  // For one-off requests.
  final response = await http.get('https://example.com/');
  print(response.body);
  // To re-use socket connections:
  final client = new http.NodeClient();
  final response2 = await client.get('https://example.com/');
  print(response2.body);
  client.close(); // make sure to close the client when work is done.
}
