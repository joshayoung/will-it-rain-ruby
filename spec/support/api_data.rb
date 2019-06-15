def forecast(tuesday: "Tuesday")
  {
    "@context": [
        "https://raw.githubusercontent.com/geojson/geojson-ld/master/contexts/geojson-base.jsonld",
        {
            "wx": "https://api.weather.gov/ontology#",
            "geo": "http://www.opengis.net/ont/geosparql#",
            "unit": "http://codes.wmo.int/common/unit/",
            "@vocab": "https://api.weather.gov/ontology#"
        }
    ],
    "type": "Feature",
    "geometry": {
        "type": "GeometryCollection",
        "geometries": [
            {
                "type": "Point",
                "coordinates": [
                    -96.803270699999999,
                    32.779680800000001
                ]
            },
            {
                "type": "Polygon",
                "coordinates": [
                    [
                        [
                            -96.816904100000002,
                            32.790843000000002
                        ],
                        [
                            -96.816543500000009,
                            32.768216200000005
                        ],
                        [
                            -96.789640000000006,
                            32.768516900000002
                        ],
                        [
                            -96.789995300000001,
                            32.791144000000003
                        ],
                        [
                            -96.816904100000002,
                            32.790843000000002
                        ]
                    ]
                ]
            }
        ]
    },
    "properties": {
        "updated": "2019-06-01T20:04:52+00:00",
        "units": "us",
        "forecastGenerator": "BaselineForecastGenerator",
        "generatedAt": "2019-06-02T01:05:47+00:00",
        "updateTime": "2019-06-01T20:04:52+00:00",
        "validTimes": "2019-06-01T14:00:00+00:00/P7DT23H",
        "elevation": {
            "value": 136.8552,
            "unitCode": "unit:m"
        },
        "periods": [
            {
                "number": 1,
                "name": "Tonight",
                "startTime": "2019-06-01T20:00:00-05:00",
                "endTime": "2019-06-02T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 74,
                "temperatureUnit": "F",
                "temperatureTrend": "rising",
                "windSpeed": "5 mph",
                "windDirection": "SE",
                "icon": "https://api.weather.gov/icons/land/night/tsra_hi,30?size=medium",
                "shortForecast": "Chance Showers And Thunderstorms",
                "detailedForecast": "A chance of showers and thunderstorms before 1am. Partly cloudy. Low around 74, with temperatures rising to around 76 overnight. Southeast wind around 5 mph. Chance of precipitation is 30%."
            },
            {
                "number": 2,
                "name": "Sunday",
                "startTime": "2019-06-02T06:00:00-05:00",
                "endTime": "2019-06-02T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 89,
                "temperatureUnit": "F",
                "temperatureTrend": "null",
                "windSpeed": "5 to 10 mph",
                "windDirection": "SE",
                "icon": "https://api.weather.gov/icons/land/day/tsra_sct,50?size=medium",
                "shortForecast": "Chance Showers And Thunderstorms",
                "detailedForecast": "A chance of showers and thunderstorms after 7am. Mostly cloudy, with a high near 89. Southeast wind 5 to 10 mph. Chance of precipitation is 50%. New rainfall amounts between a tenth and quarter of an inch possible."
            },
            {
                "number": 3,
                "name": "Sunday Night",
                "startTime": "2019-06-02T18:00:00-05:00",
                "endTime": "2019-06-03T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 74,
                "temperatureUnit": "F",
                "temperatureTrend": "null",
                "windSpeed": "5 to 10 mph",
                "windDirection": "SE",
                "icon": "https://api.weather.gov/icons/land/night/tsra_hi,40/tsra_hi,20?size=medium",
                "shortForecast": "Chance Showers And Thunderstorms",
                "detailedForecast": "A chance of showers and thunderstorms. Mostly cloudy, with a low around 74. Southeast wind 5 to 10 mph. Chance of precipitation is 40%. New rainfall amounts less than a tenth of an inch possible."
            },
            {
                "number": 4,
                "name": "Monday",
                "startTime": "2019-06-03T06:00:00-05:00",
                "endTime": "2019-06-03T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 91,
                "temperatureUnit": "F",
                "temperatureTrend": "null",
                "windSpeed": "5 to 10 mph",
                "windDirection": "SSE",
                "icon": "https://api.weather.gov/icons/land/day/tsra_hi,20?size=medium",
                "shortForecast": "Slight Chance Showers And Thunderstorms",
                "detailedForecast": "A slight chance of showers and thunderstorms. Partly sunny, with a high near 91. South southeast wind 5 to 10 mph. Chance of precipitation is 20%."
            },
            {
                "number": 5,
                "name": "Monday Night",
                "startTime": "2019-06-03T18:00:00-05:00",
                "endTime": "2019-06-04T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 74,
                "temperatureUnit": "F",
                "temperatureTrend": "null",
                "windSpeed": "5 to 10 mph",
                "windDirection": "SSE",
                "icon": "https://api.weather.gov/icons/land/night/tsra_hi,20?size=medium",
                "shortForecast": "Slight Chance Showers And Thunderstorms",
                "detailedForecast": "A slight chance of showers and thunderstorms. Mostly cloudy, with a low around 74. South southeast wind 5 to 10 mph. Chance of precipitation is 20%."
            },
            {
                "number": 6,
                "name": "#{tuesday}",
                "startTime": "2019-06-04T06:00:00-05:00",
                "endTime": "2019-06-04T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 90,
                "temperatureUnit": "F",
                "temperatureTrend": "null",
                "windSpeed": "5 to 10 mph",
                "windDirection": "S",
                "icon": "https://api.weather.gov/icons/land/day/tsra_hi,30?size=medium",
                "shortForecast": "Chance Showers And Thunderstorms",
                "detailedForecast": "A chance of showers and thunderstorms. Mostly sunny, with a high near 90. South wind 5 to 10 mph. Chance of precipitation is 30%."
            },
            {
                "number": 7,
                "name": "Tuesday Night",
                "startTime": "2019-06-04T18:00:00-05:00",
                "endTime": "2019-06-05T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 73,
                "temperatureUnit": "F",
                "temperatureTrend": "null",
                "windSpeed": "10 mph",
                "windDirection": "S",
                "icon": "https://api.weather.gov/icons/land/night/tsra,50?size=medium",
                "shortForecast": "Chance Showers And Thunderstorms",
                "detailedForecast": "A chance of showers and thunderstorms. Mostly cloudy, with a low around 73. South wind around 10 mph. Chance of precipitation is 50%."
            },
            {
                "number": 8,
                "name": "Wednesday",
                "startTime": "2019-06-05T06:00:00-05:00",
                "endTime": "2019-06-05T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 85,
                "temperatureUnit": "F",
                "temperatureTrend": "null",
                "windSpeed": "10 mph",
                "windDirection": "S",
                "icon": "https://api.weather.gov/icons/land/day/tsra,60?size=medium",
                "shortForecast": "Showers And Thunderstorms Likely",
                "detailedForecast": "Showers and thunderstorms likely. Cloudy, with a high near 85. South wind around 10 mph. Chance of precipitation is 60%."
            },
            {
                "number": 9,
                "name": "Wednesday Night",
                "startTime": "2019-06-05T18:00:00-05:00",
                "endTime": "2019-06-06T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 72,
                "temperatureUnit": "F",
                "temperatureTrend": "null",
                "windSpeed": "10 mph",
                "windDirection": "S",
                "icon": "https://api.weather.gov/icons/land/night/tsra,60?size=medium",
                "shortForecast": "Showers And Thunderstorms Likely",
                "detailedForecast": "Showers and thunderstorms likely. Cloudy, with a low around 72. South wind around 10 mph. Chance of precipitation is 60%."
            },
            {
                "number": 10,
                "name": "Thursday",
                "startTime": "2019-06-06T06:00:00-05:00",
                "endTime": "2019-06-06T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 88,
                "temperatureUnit": "F",
                "temperatureTrend": "null",
                "windSpeed": "10 mph",
                "windDirection": "S",
                "icon": "https://api.weather.gov/icons/land/day/tsra,60?size=medium",
                "shortForecast": "Showers And Thunderstorms Likely",
                "detailedForecast": "Showers and thunderstorms likely. Mostly cloudy, with a high near 88. Chance of precipitation is 60%."
            },
            {
                "number": 11,
                "name": "Thursday Night",
                "startTime": "2019-06-06T18:00:00-05:00",
                "endTime": "2019-06-07T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 72,
                "temperatureUnit": "F",
                "temperatureTrend": "null",
                "windSpeed": "10 mph",
                "windDirection": "SSW",
                "icon": "https://api.weather.gov/icons/land/night/tsra_sct,60/tsra_sct,50?size=medium",
                "shortForecast": "Showers And Thunderstorms Likely",
                "detailedForecast": "Showers and thunderstorms likely. Mostly cloudy, with a low around 72. Chance of precipitation is 60%."
            },
            {
                "number": 12,
                "name": "Friday",
                "startTime": "2019-06-07T06:00:00-05:00",
                "endTime": "2019-06-07T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 91,
                "temperatureUnit": "F",
                "temperatureTrend": "null",
                "windSpeed": "5 to 10 mph",
                "windDirection": "WSW",
                "icon": "https://api.weather.gov/icons/land/day/tsra_hi,50/tsra_hi,20?size=medium",
                "shortForecast": "Chance Showers And Thunderstorms",
                "detailedForecast": "A chance of showers and thunderstorms. Mostly sunny, with a high near 91. Chance of precipitation is 50%."
            },
            {
                "number": 13,
                "name": "Friday Night",
                "startTime": "2019-06-07T18:00:00-05:00",
                "endTime": "2019-06-08T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 73,
                "temperatureUnit": "F",
                "temperatureTrend": "null",
                "windSpeed": "5 mph",
                "windDirection": "S",
                "icon": "https://api.weather.gov/icons/land/night/tsra_hi,20/sct?size=medium",
                "shortForecast": "Slight Chance Showers And Thunderstorms then Partly Cloudy",
                "detailedForecast": "A slight chance of showers and thunderstorms before 7pm. Partly cloudy, with a low around 73. Chance of precipitation is 20%."
            },
            {
                "number": 14,
                "name": "Saturday",
                "startTime": "2019-06-08T06:00:00-05:00",
                "endTime": "2019-06-08T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 93,
                "temperatureUnit": "F",
                "temperatureTrend": "null",
                "windSpeed": "5 to 10 mph",
                "windDirection": "S",
                "icon": "https://api.weather.gov/icons/land/day/tsra_hi,20?size=medium",
                "shortForecast": "Slight Chance Showers And Thunderstorms",
                "detailedForecast": "A slight chance of showers and thunderstorms after 7am. Mostly sunny, with a high near 93. Chance of precipitation is 20%."
            }
        ]
    }
}
end

def endpoints
  { "@context" => ["https://raw.githubusercontent.com/geojson/geojson-ld/master/contexts/geojson-base.jsonld",
                   { "wx" => "https://api.weather.gov/ontology#",
                     "s" => "https://schema.org/",
                     "geo" => "http://www.opengis.net/ont/geosparql#",
                     "unit" => "http://codes.wmo.int/common/unit/",
                     "@vocab" => "https://api.weather.gov/ontology#",
                     "geometry" => { "@id" => "s:GeoCoordinates", "@type" => "geo:wktLiteral" },
                     "city" => "s:addressLocality",
                     "state" => "s:addressRegion",
                     "distance" => { "@id" => "s:Distance", "@type" => "s:QuantitativeValue" },
                     "bearing" => { "@type" => "s:QuantitativeValue" },
                     "value" => { "@id" => "s:value" },
                     "unitCode" => { "@id" => "s:unitCode", "@type" => "@id" },
                     "forecastOffice" => { "@type" => "@id" },
                     "forecastGridData" => { "@type" => "@id" },
                     "publicZone" => { "@type" => "@id" },
                     "county" => { "@type" => "@id" } }],
    "id" => "https://api.weather.gov/points/32.7766,-96.7968999",
    "type" => "Feature",
    "geometry" => { "type" => "Point", "coordinates" => [-96.7968999, 32.7766] },
    "properties" => { "@id" => "https://api.weather.gov/points/32.7766,-96.7968999",
                      "@type" => "wx:Point",
                      "cwa" => "FWD",
                      "forecastOffice" => "https://api.weather.gov/offices/FWD",
                      "gridX" => 88,
                      "gridY" => 103,
                      "forecast" => "https://api.weather.gov/gridpoints/FWD/88,103/forecast",
                      "forecastHourly" => "https://api.weather.gov/gridpoints/FWD/88,103/forecast/hourly",
                      "forecastGridData" => "https://api.weather.gov/gridpoints/FWD/88,103",
                      "observationStations" => "https://api.weather.gov/gridpoints/FWD/88,103/stations",
                      "relativeLocation" => { "type" => "Feature",
                                              "geometry" => { "type" => "Point", "coordinates" => [-96.766513, 32.7933329] },
                                              "properties" => { "city" => "Dallas",
                                                                "state" => "TX",
                                                                "distance" => { "value" => 3395.7587695376956, "unitCode" => "unit:m" },
                                                                "bearing" => { "value" => 236, "unitCode" => "unit:degrees_true" } } },
                      "forecastZone" => "https://api.weather.gov/zones/forecast/TXZ119",
                      "county" => "https://api.weather.gov/zones/county/TXC113",
                      "fireWeatherZone" => "https://api.weather.gov/zones/fire/TXZ119",
                      "timeZone" => "America/Chicago",
                      "radarStation" => "KFWS" } }
end