import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferencesFunctions{

  static String sharedPreferenceUserLoggedInKey = "ISLOGGEDIN";
  static String sharedPreferenceUserNameKey = "USERNAMEKEY";
  static String sharedPreferenceUserEmailKey = "USEREMAILKEY";
  static String sharedPreferenceUserImageKey = "USERIMAGEKEY";
  static String sharedPreferenceUserIDKey = "USERID";
  // static String sharedPreferenceProductIDsKey = "PRODUCTIDS";


  /// saving data to sharedpreference
  static Future<bool> saveUserLoggedInSharedPreference(bool isUserLoggedIn) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(sharedPreferenceUserLoggedInKey, isUserLoggedIn);
  }

  static Future<bool> saveUserNameSharedPreference(String userName) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPreferenceUserNameKey, userName);
  }

  static Future<bool> saveUserEmailSharedPreference(String userEmail) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPreferenceUserEmailKey, userEmail);
  }

  static Future<bool> saveUserImageSharedPreference(String userImage) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPreferenceUserImageKey, userImage);
  }

  static Future<bool> saveUserIDSharedPreference(String userID) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPreferenceUserIDKey, userID);
  }

  // static Future<bool> saveProductIDsSharedPreference(List<String> productIDs) async{
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   return await preferences.setStringList(sharedPreferenceProductIDsKey, productIDs);
  // }

  /// fetching data from sharedpreference

  static Future<bool?> getUserLoggedInSharedPreference() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(sharedPreferenceUserLoggedInKey);
  }

  static Future<String?> getUserNameSharedPreference() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(sharedPreferenceUserNameKey);
  }

  static Future<String?> getUserEmailSharedPreference() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(sharedPreferenceUserEmailKey);
  }

  static Future<String?> getUserImageSharedPreference() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(sharedPreferenceUserImageKey);
  }

  static Future<String?> getUserIDSharedPreference() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(sharedPreferenceUserIDKey);
  }

  // static Future<List<String>?> getProductIDsSharedPreference() async{
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   return preferences.getStringList(sharedPreferenceProductIDsKey);
  // }

}