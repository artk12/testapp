import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceManager {

  getCarDetails() async {
    var preferences = await SharedPreferences.getInstance();
    return [preferences.getString("car"),preferences.getString("description"),];
  }

  deleteCarDetails() async {
    var preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }

  saveCarDetails(String car,String description) async {
    var preferences = await SharedPreferences.getInstance();
    await preferences.setString("car", car);
    await preferences.setString("description", description);
  }
}
