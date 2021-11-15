import '../../../data/models/tv/tv_model.dart';
import 'package:equatable/equatable.dart';

class TVSeriesResponse extends Equatable {
  final List<TVModel> tvList;

  const TVSeriesResponse({required this.tvList});

  factory TVSeriesResponse.fromJson(Map<String, dynamic> json) => TVSeriesResponse(
        tvList: List<TVModel>.from((json["results"] as List)
            .map((x) => TVModel.fromJson(x))
            .where((element) => element.posterPath != null)),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(tvList.map((x) => x.toJson())),
      };

  @override
  List<Object> get props => [tvList];
}