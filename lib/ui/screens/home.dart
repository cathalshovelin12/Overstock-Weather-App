import 'package:flutter/material.dart';
import 'package:weather_app/model/locationData.dart';
import 'package:weather_app/ui/widgets/current_location_info.dart';
import 'package:weather_app/utils/openWeatherClient.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  List<LocationData> locationInfo = getLocationData();

  @override
  Widget build(BuildContext context) {
    Padding _buildCurrentLocationInfo(List<LocationData> locationData) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: locationData.length,
                itemBuilder: (BuildContext context, int index) {
                  return new CurrentLocationInfo(
                    location: locationData[index].location,
                    temperature: locationData[index].temperature,
                    isCelcius: locationData[index].isCelcius,
                    weatherIcon: locationData[index].weatherIcon,
                  );
                },
              ),
            )
          ],
        ),
      );
    }

    double _iconSize = 20.0;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            elevation: 2.0,
            bottom: TabBar(
              labelColor: Theme.of(context).indicatorColor,
              tabs: [
                Tab(icon: Icon(Icons.location_city, size: _iconSize)),
                Tab(icon: Icon(Icons.calendar_today, size: _iconSize)),
                Tab(icon: Icon(Icons.access_time, size: _iconSize)),
                Tab(icon: Icon(Icons.settings, size: _iconSize)),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: TabBarView(
            children: [
              _buildCurrentLocationInfo(locationInfo
                  .where((location) => location.location == Location.newYork)
                  .toList()),
              _buildCurrentLocationInfo(locationInfo
                  .where((location) => location.location != Location.newYork)
                  .toList()),
              _buildCurrentLocationInfo(locationInfo
                  .where((location) => location.location != Location.newYork)
                  .toList()),
              Center(child: Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );

  }
}
