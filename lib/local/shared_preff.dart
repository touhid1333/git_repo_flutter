
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref{
  final sharedPreference = SharedPreferences.getInstance();

  saveSortPref(String key,String sortType){
    sharedPreference.then((value) => value.setString(key, sortType));
  }

  Future<String> getSortPref(String key){
    return sharedPreference.then((value) => value.getString(key) ?? "null");
  }
}