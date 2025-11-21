import 'package:http/http.dart' as http;
import 'package:csv/csv.dart';
import '../models/data_models.dart';
import '../data/mock_data.dart';

class GoogleSheetsService {
  // INSTRUCTIONS FOR USER:
  // 1. Create a Google Sheet with these headers in the first row:
  //    id, name, description, price, imageUrl, unit, rating
  // 2. Fill in your product data.
  // 3. Go to File > Share > Publish to web.
  // 4. Select "Entire Document" (or specific sheet) and "Comma-separated values (.csv)".
  // 5. Click Publish and copy the link.
  // 6. Extract the SHEET ID from the link. 
  //    The link looks like: https://docs.google.com/spreadsheets/d/LONG_ID_STRING/pub?output=csv
  //    Copy that LONG_ID_STRING and paste it below into _sheetId.
  
  // TODO: Replace this with your actual Google Sheet ID
  static const String _sheetId = '1-DUMMY_ID_PLEASE_REPLACE_WITH_YOURS'; 
  
  // If you have the full CSV URL, you can use it directly (overrides logic below)
  static const String? _directCsvUrl = null;

  /// Fetches products from the Google Sheet.
  /// Returns MockData if the fetch fails or if the Sheet ID is invalid.
  Future<List<Product>> fetchProducts() async {
    if (_sheetId.contains('DUMMY_ID')) {
      print('GoogleSheetsService: Using Mock Data (Sheet ID not set)');
      await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
      return MockData.products;
    }

    try {
      final String url = _directCsvUrl ?? 'https://docs.google.com/spreadsheets/d/$_sheetId/export?format=csv';
      print('Fetching from: $url');
      
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        // Parse CSV
        List<List<dynamic>> rows = const CsvToListConverter().convert(response.body);
        
        if (rows.isEmpty) return [];

        // Remove header row if it contains "id" or "name"
        if (rows.first.isNotEmpty && 
            (rows.first[0].toString().toLowerCase() == 'id' || 
             rows.first[1].toString().toLowerCase() == 'name')) {
          rows.removeAt(0);
        }

        final products = rows.map((row) => Product.fromCsv(row)).toList();
        print('Successfully fetched ${products.length} products from Google Sheet');
        return products;
      } else {
        print('Failed to fetch sheet. Status Code: ${response.statusCode}');
        return MockData.products;
      }
    } catch (e) {
      print('Error fetching Google Sheet data: $e');
      return MockData.products;
    }
  }
}
