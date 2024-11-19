const WEATHER_RESPONSE = {
  "coord": {"lon": -37.0748, "lat": -10.9095},
  "weather": [
    {
      "id": 802,
      "main": "Clouds",
      "description": "scattered clouds",
      "icon": "03d"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 27.97,
    "feels_like": 30.48,
    "temp_min": 27.97,
    "temp_max": 27.97,
    "pressure": 1013,
    "humidity": 69,
    "sea_level": 1013,
    "grnd_level": 1011
  },
  "visibility": 10000,
  "wind": {"speed": 6.17, "deg": 120},
  "clouds": {"all": 40},
  "dt": 1731695135,
  "sys": {
    "type": 1,
    "id": 8322,
    "country": "BR",
    "sunrise": 1731657277,
    "sunset": 1731702693
  },
  "timezone": -10800,
  "id": 3471872,
  "name": "Aracaju",
  "cod": 200
};

const FORECAST_RESPONSE = {
  "cod": "200",
  "message": 0,
  "cnt": 40,
  "list": [
    {
      "dt": 1731704400,
      "main": {
        "temp": 26.97,
        "feels_like": 28.97,
        "temp_min": 24.98,
        "temp_max": 26.97,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1012,
        "humidity": 72,
        "temp_kf": 1.99
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {"all": 55},
      "wind": {"speed": 3.26, "deg": 106, "gust": 5.51},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-15 21:00:00"
    },
    {
      "dt": 1731715200,
      "main": {
        "temp": 25.52,
        "feels_like": 26.19,
        "temp_min": 24.29,
        "temp_max": 25.52,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 79,
        "temp_kf": 1.23
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {"all": 69},
      "wind": {"speed": 3.51, "deg": 120, "gust": 6.32},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-16 00:00:00"
    },
    {
      "dt": 1731726000,
      "main": {
        "temp": 24.32,
        "feels_like": 25.03,
        "temp_min": 24.32,
        "temp_max": 24.32,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1011,
        "humidity": 85,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "clouds": {"all": 21},
      "wind": {"speed": 4.07, "deg": 99, "gust": 6.97},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-16 03:00:00"
    },
    {
      "dt": 1731736800,
      "main": {
        "temp": 24.01,
        "feels_like": 24.69,
        "temp_min": 24.01,
        "temp_max": 24.01,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 85,
        "temp_kf": 0
      },
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
      ],
      "clouds": {"all": 15},
      "wind": {"speed": 4.45, "deg": 99, "gust": 7.83},
      "visibility": 10000,
      "pop": 0.2,
      "rain": {"3h": 0.24},
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-16 06:00:00"
    },
    {
      "dt": 1731747600,
      "main": {
        "temp": 24.89,
        "feels_like": 25.55,
        "temp_min": 24.89,
        "temp_max": 24.89,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
      ],
      "clouds": {"all": 51},
      "wind": {"speed": 4.96, "deg": 102, "gust": 7.68},
      "visibility": 10000,
      "pop": 1,
      "rain": {"3h": 0.47},
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-16 09:00:00"
    },
    {
      "dt": 1731758400,
      "main": {
        "temp": 27.99,
        "feels_like": 29.66,
        "temp_min": 27.99,
        "temp_max": 27.99,
        "pressure": 1015,
        "sea_level": 1015,
        "grnd_level": 1013,
        "humidity": 62,
        "temp_kf": 0
      },
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
      ],
      "clouds": {"all": 35},
      "wind": {"speed": 6.12, "deg": 105, "gust": 6.74},
      "visibility": 10000,
      "pop": 0.68,
      "rain": {"3h": 0.22},
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-16 12:00:00"
    },
    {
      "dt": 1731769200,
      "main": {
        "temp": 28.99,
        "feels_like": 30.43,
        "temp_min": 28.99,
        "temp_max": 28.99,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 56,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {"all": 14},
      "wind": {"speed": 5.59, "deg": 121, "gust": 5.71},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-16 15:00:00"
    },
    {
      "dt": 1731780000,
      "main": {
        "temp": 27.62,
        "feels_like": 29.2,
        "temp_min": 27.62,
        "temp_max": 27.62,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1011,
        "humidity": 63,
        "temp_kf": 0
      },
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01d"}
      ],
      "clouds": {"all": 8},
      "wind": {"speed": 5.53, "deg": 125, "gust": 5.9},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-16 18:00:00"
    },
    {
      "dt": 1731790800,
      "main": {
        "temp": 24.74,
        "feels_like": 25.33,
        "temp_min": 24.74,
        "temp_max": 24.74,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 79,
        "temp_kf": 0
      },
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
      ],
      "clouds": {"all": 23},
      "wind": {"speed": 3.69, "deg": 116, "gust": 6.09},
      "visibility": 10000,
      "pop": 0.2,
      "rain": {"3h": 0.1},
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-16 21:00:00"
    },
    {
      "dt": 1731801600,
      "main": {
        "temp": 24.05,
        "feels_like": 24.7,
        "temp_min": 24.05,
        "temp_max": 24.05,
        "pressure": 1015,
        "sea_level": 1015,
        "grnd_level": 1013,
        "humidity": 84,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "clouds": {"all": 13},
      "wind": {"speed": 4.18, "deg": 103, "gust": 6.65},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-17 00:00:00"
    },
    {
      "dt": 1731812400,
      "main": {
        "temp": 23.83,
        "feels_like": 24.38,
        "temp_min": 23.83,
        "temp_max": 23.83,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
      ],
      "clouds": {"all": 0},
      "wind": {"speed": 4.29, "deg": 103, "gust": 7.32},
      "visibility": 10000,
      "pop": 0.2,
      "rain": {"3h": 0.11},
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-17 03:00:00"
    },
    {
      "dt": 1731823200,
      "main": {
        "temp": 23.72,
        "feels_like": 24.13,
        "temp_min": 23.72,
        "temp_max": 23.72,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 76,
        "temp_kf": 0
      },
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"}
      ],
      "clouds": {"all": 0},
      "wind": {"speed": 4.08, "deg": 107, "gust": 6.24},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-17 06:00:00"
    },
    {
      "dt": 1731834000,
      "main": {
        "temp": 25.12,
        "feels_like": 25.41,
        "temp_min": 25.12,
        "temp_max": 25.12,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 66,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {"all": 95},
      "wind": {"speed": 4.79, "deg": 109, "gust": 6.53},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-17 09:00:00"
    },
    {
      "dt": 1731844800,
      "main": {
        "temp": 27.22,
        "feels_like": 27.98,
        "temp_min": 27.22,
        "temp_max": 27.22,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 55,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {"all": 87},
      "wind": {"speed": 4.91, "deg": 102, "gust": 5.41},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-17 12:00:00"
    },
    {
      "dt": 1731855600,
      "main": {
        "temp": 28.88,
        "feels_like": 29.62,
        "temp_min": 28.88,
        "temp_max": 28.88,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1011,
        "humidity": 51,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {"all": 32},
      "wind": {"speed": 5.27, "deg": 112, "gust": 5.43},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-17 15:00:00"
    },
    {
      "dt": 1731866400,
      "main": {
        "temp": 27.81,
        "feels_like": 28.78,
        "temp_min": 27.81,
        "temp_max": 27.81,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 1009,
        "humidity": 56,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {"all": 16},
      "wind": {"speed": 5.23, "deg": 119, "gust": 5.7},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-17 18:00:00"
    },
    {
      "dt": 1731877200,
      "main": {
        "temp": 24.65,
        "feels_like": 25.08,
        "temp_min": 24.65,
        "temp_max": 24.65,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1011,
        "humidity": 73,
        "temp_kf": 0
      },
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"}
      ],
      "clouds": {"all": 0},
      "wind": {"speed": 3.47, "deg": 121, "gust": 5.67},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-17 21:00:00"
    },
    {
      "dt": 1731888000,
      "main": {
        "temp": 23.87,
        "feels_like": 24.35,
        "temp_min": 23.87,
        "temp_max": 23.87,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 78,
        "temp_kf": 0
      },
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"}
      ],
      "clouds": {"all": 0},
      "wind": {"speed": 3.27, "deg": 119, "gust": 4.82},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-18 00:00:00"
    },
    {
      "dt": 1731898800,
      "main": {
        "temp": 23.75,
        "feels_like": 24.27,
        "temp_min": 23.75,
        "temp_max": 23.75,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1011,
        "humidity": 80,
        "temp_kf": 0
      },
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"}
      ],
      "clouds": {"all": 0},
      "wind": {"speed": 3.61, "deg": 113, "gust": 5.61},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-18 03:00:00"
    },
    {
      "dt": 1731909600,
      "main": {
        "temp": 23.48,
        "feels_like": 23.95,
        "temp_min": 23.48,
        "temp_max": 23.48,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 79,
        "temp_kf": 0
      },
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"}
      ],
      "clouds": {"all": 7},
      "wind": {"speed": 3.43, "deg": 109, "gust": 4.91},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-18 06:00:00"
    },
    {
      "dt": 1731920400,
      "main": {
        "temp": 24.83,
        "feels_like": 25.22,
        "temp_min": 24.83,
        "temp_max": 24.83,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1011,
        "humidity": 71,
        "temp_kf": 0
      },
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01d"}
      ],
      "clouds": {"all": 5},
      "wind": {"speed": 3.03, "deg": 100, "gust": 5.1},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-18 09:00:00"
    },
    {
      "dt": 1731931200,
      "main": {
        "temp": 28.27,
        "feels_like": 29.39,
        "temp_min": 28.27,
        "temp_max": 28.27,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 56,
        "temp_kf": 0
      },
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01d"}
      ],
      "clouds": {"all": 1},
      "wind": {"speed": 4.79, "deg": 109, "gust": 4.6},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-18 12:00:00"
    },
    {
      "dt": 1731942000,
      "main": {
        "temp": 28.98,
        "feels_like": 29.88,
        "temp_min": 28.98,
        "temp_max": 28.98,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1011,
        "humidity": 52,
        "temp_kf": 0
      },
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01d"}
      ],
      "clouds": {"all": 1},
      "wind": {"speed": 5.34, "deg": 117, "gust": 4.82},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-18 15:00:00"
    },
    {
      "dt": 1731952800,
      "main": {
        "temp": 27.95,
        "feels_like": 28.96,
        "temp_min": 27.95,
        "temp_max": 27.95,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 1009,
        "humidity": 56,
        "temp_kf": 0
      },
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01d"}
      ],
      "clouds": {"all": 0},
      "wind": {"speed": 4.97, "deg": 112, "gust": 5.5},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-18 18:00:00"
    },
    {
      "dt": 1731963600,
      "main": {
        "temp": 24.92,
        "feels_like": 25.53,
        "temp_min": 24.92,
        "temp_max": 24.92,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 79,
        "temp_kf": 0
      },
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"}
      ],
      "clouds": {"all": 0},
      "wind": {"speed": 4.32, "deg": 123, "gust": 7.36},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-18 21:00:00"
    },
    {
      "dt": 1731974400,
      "main": {
        "temp": 24.72,
        "feels_like": 25.39,
        "temp_min": 24.72,
        "temp_max": 24.72,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1011,
        "humidity": 82,
        "temp_kf": 0
      },
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"}
      ],
      "clouds": {"all": 0},
      "wind": {"speed": 4.57, "deg": 94, "gust": 8.1},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-19 00:00:00"
    },
    {
      "dt": 1731985200,
      "main": {
        "temp": 24.02,
        "feels_like": 24.75,
        "temp_min": 24.02,
        "temp_max": 24.02,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 87,
        "temp_kf": 0
      },
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
      ],
      "clouds": {"all": 1},
      "wind": {"speed": 4.33, "deg": 82, "gust": 7.63},
      "visibility": 10000,
      "pop": 0.2,
      "rain": {"3h": 0.18},
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-19 03:00:00"
    },
    {
      "dt": 1731996000,
      "main": {
        "temp": 23.81,
        "feels_like": 24.49,
        "temp_min": 23.81,
        "temp_max": 23.81,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 1009,
        "humidity": 86,
        "temp_kf": 0
      },
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
      ],
      "clouds": {"all": 13},
      "wind": {"speed": 4.32, "deg": 77, "gust": 7.21},
      "visibility": 10000,
      "pop": 0.2,
      "rain": {"3h": 0.29},
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-19 06:00:00"
    },
    {
      "dt": 1732006800,
      "main": {
        "temp": 24.44,
        "feels_like": 25.08,
        "temp_min": 24.44,
        "temp_max": 24.44,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 82,
        "temp_kf": 0
      },
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
      ],
      "clouds": {"all": 27},
      "wind": {"speed": 4.13, "deg": 72, "gust": 7.37},
      "visibility": 10000,
      "pop": 0.66,
      "rain": {"3h": 0.37},
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-19 09:00:00"
    },
    {
      "dt": 1732017600,
      "main": {
        "temp": 28.03,
        "feels_like": 29.61,
        "temp_min": 28.03,
        "temp_max": 28.03,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1012,
        "humidity": 61,
        "temp_kf": 0
      },
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
      ],
      "clouds": {"all": 42},
      "wind": {"speed": 5.36, "deg": 77, "gust": 5.89},
      "visibility": 10000,
      "pop": 0.44,
      "rain": {"3h": 0.21},
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-19 12:00:00"
    },
    {
      "dt": 1732028400,
      "main": {
        "temp": 29.32,
        "feels_like": 31.1,
        "temp_min": 29.32,
        "temp_max": 29.32,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1011,
        "humidity": 57,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {"all": 68},
      "wind": {"speed": 5.61, "deg": 90, "gust": 5.09},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-19 15:00:00"
    },
    {
      "dt": 1732039200,
      "main": {
        "temp": 28.09,
        "feels_like": 29.7,
        "temp_min": 28.09,
        "temp_max": 28.09,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 1010,
        "humidity": 61,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {"all": 58},
      "wind": {"speed": 6.05, "deg": 91, "gust": 5.91},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-19 18:00:00"
    },
    {
      "dt": 1732050000,
      "main": {
        "temp": 25.28,
        "feels_like": 25.9,
        "temp_min": 25.28,
        "temp_max": 25.28,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 78,
        "temp_kf": 0
      },
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"}
      ],
      "clouds": {"all": 6},
      "wind": {"speed": 5.63, "deg": 95, "gust": 8.89},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-19 21:00:00"
    },
    {
      "dt": 1732060800,
      "main": {
        "temp": 25.02,
        "feels_like": 25.61,
        "temp_min": 25.02,
        "temp_max": 25.02,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 78,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {"all": 38},
      "wind": {"speed": 5.23, "deg": 72, "gust": 9.06},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-20 00:00:00"
    },
    {
      "dt": 1732071600,
      "main": {
        "temp": 24.02,
        "feels_like": 24.59,
        "temp_min": 24.02,
        "temp_max": 24.02,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1011,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {"all": 97},
      "wind": {"speed": 4.16, "deg": 54, "gust": 7.41},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-20 03:00:00"
    },
    {
      "dt": 1732082400,
      "main": {
        "temp": 23.06,
        "feels_like": 23.64,
        "temp_min": 23.06,
        "temp_max": 23.06,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 85,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {"all": 87},
      "wind": {"speed": 3.3, "deg": 53, "gust": 5.29},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "n"},
      "dt_txt": "2024-11-20 06:00:00"
    },
    {
      "dt": 1732093200,
      "main": {
        "temp": 24.52,
        "feels_like": 25.06,
        "temp_min": 24.52,
        "temp_max": 24.52,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1012,
        "humidity": 78,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {"all": 59},
      "wind": {"speed": 3.1, "deg": 55, "gust": 5.16},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-20 09:00:00"
    },
    {
      "dt": 1732104000,
      "main": {
        "temp": 28.79,
        "feels_like": 30.4,
        "temp_min": 28.79,
        "temp_max": 28.79,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 58,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {"all": 59},
      "wind": {"speed": 5.33, "deg": 93, "gust": 5.42},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-20 12:00:00"
    },
    {
      "dt": 1732114800,
      "main": {
        "temp": 29.7,
        "feels_like": 31.56,
        "temp_min": 29.7,
        "temp_max": 29.7,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1011,
        "humidity": 56,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {"all": 49},
      "wind": {"speed": 6.07, "deg": 108, "gust": 5.61},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-20 15:00:00"
    },
    {
      "dt": 1732125600,
      "main": {
        "temp": 28.18,
        "feels_like": 30.08,
        "temp_min": 28.18,
        "temp_max": 28.18,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 63,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {"all": 25},
      "wind": {"speed": 6.09, "deg": 105, "gust": 6.51},
      "visibility": 10000,
      "pop": 0,
      "sys": {"pod": "d"},
      "dt_txt": "2024-11-20 18:00:00"
    }
  ],
  "city": {
    "id": 3471872,
    "name": "Aracaju",
    "coord": {"lat": -10.9095, "lon": -37.0748},
    "country": "BR",
    "population": 490175,
    "timezone": -10800,
    "sunrise": 1731657277,
    "sunset": 1731702693
  }
};

const SEARCH_RESPONSE = {
  "message": "accurate",
  "cod": "200",
  "count": 1,
  "list": [
    {
      "id": 3471872,
      "name": "Aracaju",
      "coord": {"lat": -10.9111, "lon": -37.0717},
      "main": {
        "temp": 27.97,
        "feels_like": 30.48,
        "temp_min": 27.97,
        "temp_max": 27.97,
        "pressure": 1013,
        "humidity": 69,
        "sea_level": 1013,
        "grnd_level": 1011
      },
      "dt": 1731695266,
      "wind": {"speed": 6.17, "deg": 120},
      "sys": {"country": "BR"},
      "rain": null,
      "snow": null,
      "clouds": {"all": 40},
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ]
    }
  ]
};
