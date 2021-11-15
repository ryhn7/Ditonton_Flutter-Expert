import 'package:core/src/data/models/tv/tv_model.dart';
import 'package:core/src/domain/entities/tv/tv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const TVModel tvModel = TVModel(
    name: "The Simpsons",
    backdropPath: "/adZ9ldSlkGfLfsHNbh37ZThCcgU.jpg",
    firstAirDate: "1989-12-17",
    genreIds: [
      10751,
      16,
      35,
    ],
    id: 456,
    originalLanguage: "en",
    originalName: "The Simpsons",
    originCountry: ["US"],
    overview:
    "Set in Springfield, the average American town, the show focuses on the antics and everyday adventures of the Simpson family; Homer, Marge, Bart, Lisa and Maggie, as well as a virtual cast of thousands. Since the beginning, the series has been a pop culture icon, attracting hundreds of celebrities to guest star. The show has also made name for itself in its fearless satirical take on politics, media and American life in general.",
    popularity: 455.358,
    posterPath: "/tubgEpjTUA7t0kejVMBsNBZDarZ.jpg",
    voteAverage: 7.9,
    voteCount: 7142,
  );

  const TV tv = TV(
    name: "The Simpsons",
    backdropPath: "/adZ9ldSlkGfLfsHNbh37ZThCcgU.jpg",
    firstAirDate: "1989-12-17",
    genreIds: [
      10751,
      16,
      35,
    ],
    id: 456,
    originalLanguage: "en",
    originalName: "The Simpsons",
    originCountry: ["US"],
    overview:
    "Set in Springfield, the average American town, the show focuses on the antics and everyday adventures of the Simpson family; Homer, Marge, Bart, Lisa and Maggie, as well as a virtual cast of thousands. Since the beginning, the series has been a pop culture icon, attracting hundreds of celebrities to guest star. The show has also made name for itself in its fearless satirical take on politics, media and American life in general.",
    popularity: 455.358,
    posterPath: "/tubgEpjTUA7t0kejVMBsNBZDarZ.jpg",
    voteAverage: 7.9,
    voteCount: 7142,
  );

  test('should be a subclass of TV Series entity', () async {
    final result = tvModel.toEntity();
    expect(result, tv);
  });
}