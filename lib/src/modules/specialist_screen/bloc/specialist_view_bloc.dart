import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template/src/models/opening_hours.dart';
import 'package:template/src/models/opinion.dart';
import 'package:template/src/models/portfolio.dart';
import 'package:template/src/utils/loading_status.dart';

part 'specialist_view_event.dart';
part 'specialist_view_state.dart';
part 'specialist_view_bloc.freezed.dart';

class SpecialistViewBloc
    extends Bloc<SpecialistViewEvent, SpecialistViewState> {
  SpecialistViewBloc() : super(const SpecialistViewState()) {
    on<_CalculateAverageRating>(_onCalculateAverageRating);
    on<_GetAboutInfo>(_onGetAboutInfo);
    on<_GetOpeningHoursList>(_onGetOpeningHoursList);
    on<_GetPortfolioList>(_onGetPortfolioList);
  }

  void _onGetOpeningHoursList(
    _GetOpeningHoursList event,
    Emitter<SpecialistViewState> emit,
  ) {
    emit(state.copyWith(openingHoursUIList: event.openingHours));
  }

  void _onGetPortfolioList(
    _GetPortfolioList event,
    Emitter<SpecialistViewState> emit,
  ) {
    var elements = event.portfolio;
    List<String> imageList = [];

    var counts = elements.fold<Map<int, int>>({}, (map, element) {
      map[element.showcase!] = (map[element.showcase] ?? 0) + 1;
      return map;
    });
    for (var i = 0; i < event.portfolio.length; i++) {
      imageList.add(event.portfolio[i].imageLink);
    }

    emit(state.copyWith(
        portfolioShowcases: counts.length, imageList: imageList));
  }

  void _onGetAboutInfo(
    _GetAboutInfo event,
    Emitter<SpecialistViewState> emit,
  ) {
    String? textSnippet;
    String? textFull;
    if (event.desc.length > 110) {
      textSnippet = event.desc.substring(0, 110);
      textFull = (event.desc.substring(110, (event.desc.length)));
    } else {
      textSnippet = event.desc;
      textFull = "";
    }

    emit(state.copyWith(
        descriptionFirstPart: textSnippet, descriptionSecondPart: textFull));
  }

  void _onCalculateAverageRating(
    _CalculateAverageRating event,
    Emitter<SpecialistViewState> emit,
  ) {
    double sum = 0;

    double buildRating(List<Opinion> opinions) {
      for (var i = 0; i < opinions.length; i++) {
        sum += opinions[i].rating;
      }

      return sum / opinions.length;
    }

    emit(state.copyWith(averageRating: buildRating(event.optionsList)));
  }
}
