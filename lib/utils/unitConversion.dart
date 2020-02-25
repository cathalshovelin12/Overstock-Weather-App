import 'dart:math';

double convertKelvinToCelcius(double degressKelvin){
  return _roundDouble(degressKelvin - 273.15, 2);
}

double _roundDouble(double value, int places){ 
   double mod = pow(10.0, places); 
   return ((value * mod).round().toDouble() / mod); 
}