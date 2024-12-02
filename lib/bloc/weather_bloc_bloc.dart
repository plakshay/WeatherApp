import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/data/my_data.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) async{
      // TODO: implement event handler

      //loading at initial
      emit(WeatherBlocLoading());
      try{

        WeatherFactory wf= WeatherFactory(API_KEY, language: Language.ENGLISH); // this is used to call the data from the api key using factory, weatherfactory is the name of the class which is used to acess the class from the package weather

        // Position position = await Geolocator.getCurrentPosition(); // this helps to get the postition(coordinates from geolocator package)


       Weather weather = await wf.currentWeatherByLocation(
        event.position.latitude, 
        event.position.longitude
        ); 

        print (weather);
                // everything ok
        emit(WeatherBlocSuccess(weather));
      }
      catch(e){// e= variable that helps to throw exception in the case of any error
        emit(WeatherBlocFailure());
      }
    });
  }
}
 // all this wont work until we provide permissions to the api from the client device