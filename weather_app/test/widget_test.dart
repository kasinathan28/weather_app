import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:weather_app/main.dart'; // Import your main app widget

void main() {
  testWidgets('Weather App UI Test', (WidgetTester tester) async {
    // Build your app and trigger a frame.
    await tester.pumpWidget(WeatherApp()); // Use WeatherApp instead of MyApp

    // Verify that your app's title and other widgets are present.
    expect(find.text('Weather App'), findsOneWidget);
    expect(find.text('City Name'), findsOneWidget);
    expect(find.text('Temperature'), findsOneWidget);
    expect(find.text('Weather Description'), findsOneWidget);
  });
}
