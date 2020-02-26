
import 'package:flutter/material.dart';
import 'package:weather_app/model/locationData.dart';
import 'package:weather_app/ui/widgets/current_location_info.dart';
import 'package:weather_app/utils/openWeatherClient.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Future getData = getLocationData();
  FutureBuilder _populateCards() {
    return FutureBuilder(
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.none &&
              snap.data == null) {
            return Container();
          }
          return ListView.builder(
            itemCount: snap.data.length,
            itemBuilder: (BuildContext context, int index) {
              LocationData locationData = snap.data[index];
              return CurrentLocationInfo(
                location: locationData?.location,
                temperature: locationData?.temperature,
                isCelcius: locationData?.isCelcius,
                weatherIcon: locationData?.weatherIcon,
                timestamp: locationData.timestamp,
              );
            },
          );
        },
        future: getData,
        initialData: getInitialLocationData(),);
  }

  @override
  Widget build(BuildContext context) {
    Padding _buildCurrentLocationInfo() {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: _populateCards(),
            ),
          ],
        ),
      );
    }

    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            elevation: 2.0,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: TabBarView(
            children: [
              _buildCurrentLocationInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
