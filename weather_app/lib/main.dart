import 'package:flutter/material.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/weather': (context) => WeatherPage(),
      },
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Weather App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.wb_sunny,
              size: 48,
              color: Colors.yellow,
            ),
            Icon(
              Icons.cloud,
              size: 48,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to the Weather App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/weather');
              },
              child: Text('Get Weather Forecast'),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Forecast'),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('City Name: Placeholder City'),
            ),
            ListTile(
              leading: Icon(Icons.thermostat),
              title: Text('Temperature: Placeholder Temperature'),
            ),
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text('Weather Description: Placeholder Description'),
            ),
            SizedBox(height: 120), // Adjust the height here for separation
            ElevatedButton(
              onPressed: () {
                // Implement logic to fetch and update weather data here
                // You can use a weather API like OpenWeatherMap to get the data
              },
              child: Text('Refresh Weather Data'),
            ),
          ],
        ),
      ),
    );
  }
}
