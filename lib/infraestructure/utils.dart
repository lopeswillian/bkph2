import 'infraestructure.dart';
import 'navigation.dart';
import 'package:http/http.dart' as http;



final Navigation Nav = ModularNavigation.i();

final DependencyManager DM = ModularDependencyManager.i();

Future<bool> isImageAvailable(String imageUrl) async {
  final response = await http.head(Uri.parse(imageUrl));
  return response.statusCode == 200; // 200 means success
}