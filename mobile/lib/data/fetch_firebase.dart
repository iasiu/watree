import 'package:firebase_database/firebase_database.dart';
import 'package:watree/data/models.dart';

class FetchFirebase {
  final DatabaseReference _dataRef = FirebaseDatabase.instance.ref();

  Future<HomeData> getHomeData() async {
    DataSnapshot response = await _dataRef.child('HomeData').get();
    final data = response.value as dynamic;
    HomeData homeData = HomeData(
      temperature: data['temperature'].toDouble(),
      airHumidity: data['airHumidity'].toDouble(),
      soilHumidity: data['soilHumidity'].toDouble(),
      isWatering: data['isWatering'],
    );
    return homeData;
  }

  dynamic getHistoryData() async {
    DataSnapshot response = await _dataRef.child('HistoryData').get();
    final data = response.value as dynamic;
    return data;
  }
}
