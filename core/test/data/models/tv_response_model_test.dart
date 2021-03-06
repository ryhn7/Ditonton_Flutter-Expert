import 'dart:convert';

import 'package:core/src/data/models/tv/tv_model.dart';
import 'package:core/src/data/models/tv/tv_response.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../json_reader.dart';

void main() {
  const TVModel tvModel = TVModel(
      backdropPath: "/path.jpg",
      firstAirDate: "2006-09-18",
      genreIds: [10767],
      id: 1991,
      name: "Rachael Ray",
      originCountry: ["US"],
      originalLanguage: "en",
      originalName: "Rachael Ray",
      overview:
          "Rachael Ray, also known as The Rachael Ray Show, is an American talk show starring Rachael Ray that debuted in syndication in the United States and Canada on September 18, 2006. It is filmed at Chelsea Television Studios in New York City. The show's 8th season premiered on September 9, 2013, and became the last Harpo show in syndication to switch to HD with a revamped studio. In January 2012, CBS Television Distribution announced a two-year renewal for the show, taking it through the 2013–14 season.",
      popularity: 2102.218,
      posterPath: "/path.jpg",
      voteAverage: 6.1,
      voteCount: 27);

  const tvSeriesResponseModel = TVSeriesResponse(tvList: <TVModel>[tvModel]);
  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(readJson('dummy_data/tv_airing_today.json'));
      // act
      final result = TVSeriesResponse.fromJson(jsonMap);
      // assert
      expect(result, tvSeriesResponseModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing proper data', () async {
      // arrange

      // act
      final result = tvSeriesResponseModel.toJson();
      // assert
      final expectedJsonMap = {
        'results': [
          {
            'backdrop_path': '/path.jpg',
            'first_air_date': '2006-09-18',
            'genre_ids': [10767],
            'id': 1991,
            'name': 'Rachael Ray',
            'origin_country': ['US'],
            'original_language': 'en',
            'original_name': 'Rachael Ray',
            'overview':
                'Rachael Ray, also known as The Rachael Ray Show, is an American talk show starring Rachael Ray that debuted in syndication in the United States and Canada on September 18, 2006. It is filmed at Chelsea Television Studios in New York City. The show\'s 8th season premiered on September 9, 2013, and became the last Harpo show in syndication to switch to HD with a revamped studio. In January 2012, CBS Television Distribution announced a two-year renewal for the show, taking it through the 2013–14 season.',
            'popularity': 2102.218,
            'poster_path': '/path.jpg',
            'vote_average': 6.1,
            'vote_count': 27
          }
        ]
      };
      expect(result, expectedJsonMap);
    });
  });
}
