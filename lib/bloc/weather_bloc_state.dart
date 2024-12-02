part of 'weather_bloc_bloc.dart';

@immutable
sealed class WeatherBlocState extends Equatable {
  const WeatherBlocState();

  @override
  List<Object> get props=>[];

}

// one class for each state
final class WeatherBlocInitial extends WeatherBlocState {}

final class WeatherBlocLoading extends WeatherBlocState {}
final class WeatherBlocFailure extends WeatherBlocState {}


final class WeatherBlocSuccess extends WeatherBlocState {

  final Weather weather; // parameter
  const WeatherBlocSuccess(this.weather); // constructor

  @override
  List<Object> get props=>[weather]; //adding weather to the list of objects(props) -- getter

}

