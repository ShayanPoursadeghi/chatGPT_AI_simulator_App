import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConsts {
  static String BASE_URL = dotenv.env['BASE_URL'] ?? "https://api.openai.com/v1";
  static String API_KEY = dotenv.env['API_KEY'] ?? "abc-api-key";
}

