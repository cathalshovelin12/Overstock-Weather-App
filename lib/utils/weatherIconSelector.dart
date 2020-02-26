String getWeatherIcon(String weatherType){
  if(weatherType.contains("Sun")){
    return "lib/assets/sun.png";
  }else if(weatherType.contains("Cloud")){
    return "lib/assets/cloud.png";
  }else if(weatherType.contains("Rain")){
    return "lib/assets/rain.png";
  }else if(weatherType.contains("heavy")){
    return "lib/assets/thunder_lightning.png";
  }else{
    return "lib/assets/moon.png";
  }
}