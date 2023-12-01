// import 'package:api_example/model/sys.dart';
// import 'package:api_example/model/weather.dart';

// final fakeData = Sys.fromJson(fakeModel);
const fakeModel = {
  {
    "coord": {"lon": 10.99, "lat": 44.34},
    "weather": [
      {
        "id": 802,
        "main": "Clouds",
        "description": "scattered clouds",
        "icon": "03n"
      }
    ],
    "base": "stations",
    "main": {
      "temp": 274.74,
      "feels_like": 272.34,
      "temp_min": 273.85,
      "temp_max": 279.75,
      "pressure": 999,
      "humidity": 75,
      "sea_level": 999,
      "grnd_level": 912
    },
    "visibility": 10000,
    "wind": {"speed": 2.18, "deg": 197, "gust": 3.91},
    "clouds": {"all": 34},
    "dt": 1700848426,
    "sys": {
      "type": 2,
      "id": 2044440,
      "country": "IT",
      "sunrise": 1700806986,
      "sunset": 1700840549
    },
    "timezone": 3600,
    "id": 3163858,
    "name": "Zocca",
    "cod": 200
  }
};
