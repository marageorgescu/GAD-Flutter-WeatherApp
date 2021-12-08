part of models;

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<String>[]) List<String> weatherList,
  }) = AppState$;
}
