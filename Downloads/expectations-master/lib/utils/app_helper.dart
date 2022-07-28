import 'dart:convert';
import 'dart:ffi';

import 'package:expectations/model/boarding.dart';
import 'package:expectations/model/register.dart';
import 'package:expectations/model/team.dart';
import 'package:expectations/model/user.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:expectations/model/match.dart';

class AppHelper extends GetxService {
  static late SharedPreferences _sharedPreferences;

  Future<AppHelper> initial() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  static dynamic getAppData({required String key}) {
    return _sharedPreferences.get(key);
  }

  static Future<dynamic> saveAppData(
      {required key, required dynamic value}) async {
    if (value is String) return await _sharedPreferences.setString(key, value);
    if (value is int) return await _sharedPreferences.setInt(key, value);
    if (value is bool) return await _sharedPreferences.setBool(key, value);
    if (value is double) return await _sharedPreferences.setDouble(key, value);
  }

  static Future<bool> saveUserToken(
      {required key, required String token}) async {
    return await _sharedPreferences.setString(key, token);
  }

  static dynamic getUserToken({required String key}) {
    return _sharedPreferences.get(key);
  }

  static int getUserId(){
    if(getAppData(key: Const.KEY_LOGIN_REGISTER) == Const.Value_Login)
      return getUserData(key: Const.KEY_USER_DATA).id!;
    else if(getAppData(key: Const.KEY_LOGIN_REGISTER) == Const.Value_Register)
      return getRegisterData(key: Const.KEY_USER_DATA).id!;
    else
      return getUserData(key: Const.KEY_USER_DATA).id!;
  }

  static UserData getUserData({required String key}) {
    UserData userData = UserData();
    String? userDataJson = _sharedPreferences.getString(key);
    if (userDataJson != null)
      userData = UserData.fromJson(jsonDecode(userDataJson));
    return userData;
  }

  static RegisterData getRegisterData({required String key}) {
    RegisterData registerData = RegisterData();
    String? userDataJson = _sharedPreferences.getString(key);
    if (userDataJson != null)
      registerData = RegisterData.fromJson(jsonDecode(userDataJson));

    return registerData;
  }

  static Future<dynamic> saveUserData(
      {required String key, required UserData userData}) async {
    return await _sharedPreferences.setString(key, jsonEncode(userData));
  }

  static Future<dynamic> saveRegisterUserData(
      {required String key, required RegisterData registerData}) async {
    return await _sharedPreferences.setString(key, jsonEncode(registerData));
  }

  static Future<dynamic> saveBoardingData(
      {required String key, required dynamic boardingDate}) async {
    return await _sharedPreferences.setString(key, jsonEncode(boardingDate));
  }

  static dynamic getBoardingData({required String key}) {
    return _sharedPreferences.get(key);
  }

  // static List<BoardingData> getBoardingData({required String key}) {
  //   List<BoardingData> boardings = [];
  //   String? boardingDataJson = _sharedPreferences.getString(key);
  //   if (boardingDataJson != null) {
  //     BoardingData boardingData =
  //         BoardingData.fromJson(jsonDecode(boardingDataJson));
  //     boardings.add(boardingData);
  //   }
  //   return boardings;
  // }

  static Future<bool> clearData({required String key}) async {
    return await _sharedPreferences.remove(key);
  }

  static Future<bool> clearAllData() async {
    return await _sharedPreferences.clear();
  }

  static String getCurrentUserToken() {
    if (getUserToken(key: Const.KEY_USER_TOKEN) != null) {
      return 'Bearer ${getUserToken(key: Const.KEY_USER_TOKEN)}';
    } else
      return '';
  }

  static RegExp emailValidate() {
    return RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  }

  static String getTeamHomeImage(Match match){
    return match.teamHome!.image!.replaceAll('\\', '/');
  }

  static String getTeamAwayImage(Match match){
    return match.teamAway!.image!.replaceAll('\\', '/');
  }

  static String getTeamImage(String image){
    return image.replaceAll('\\', '/');
  }

  static String formatMatchTime(Match match){
    return match.timing!.substring(11,16);
  }

  static String formatTime(String time){
    return time.substring(11,16);
  }

  static String formatMatchDate(Match match){
    return match.timing!.substring(0,10);
  }

  static String? validateName({required String name}) {
    if (name.isEmpty)
      return 'أدخل إسمك';
    else
      return null;
  }

  static String? validateDateOfBirth({required dateOfBirth}) {
    if (GetUtils.isBlank(dateOfBirth)!)
      return 'إختار عمرك';
    else
      return null;
  }

  static String? validateEmail({required email}) {
    if (GetUtils.isBlank(email)!)
      return 'أدخل البريد الإلكتروني';
    else if (!AppHelper.emailValidate().hasMatch(email))
      return 'أدخل بريد إلكتروني صحيح';
    else
      return null;
  }

  static String? validatePassword({required String password}) {
    if (GetUtils.isBlank(password)!)
      return 'أدخل كلمة المرور';
    else if (password.length < 6)
      return 'يجب أن تكون كلمة المرور أكثر من 6 حروف';
    else
      return null;
  }

  static String? validateConfirmPassword(
      {required String password, required String conformPassword}) {
    if (GetUtils.isBlank(conformPassword)!)
      return 'أدخل تأكيد كلمة المرور';
    else if (conformPassword.length < 6)
      return 'يجب أن تكون كلمة المرور أكثر من 6 حروف';
    else if (password != conformPassword) return 'كلمتا المرور غير متطابقتان';
    return null;
  }

  static String? validateAddress({required String address}) {
    if (GetUtils.isBlank(address)!)
      return 'قم بإدخال عنوانك المفضل';
    else
      return null;
  }

  static String? validatePhone({required String phone}) {
    if (GetUtils.isBlank(phone)!)
      return 'قم بإدخال رقم الهاتف';
    else
      return null;
  }

  static String? validateSport({required String sport}) {
    if (GetUtils.isBlank(sport)!)
      return 'قم بإدخال الميول الرياضي';
    else
      return null;
  }

  static String? validateTitle({required String title}) {
    if (title.isEmpty)
      return 'أدخل عنوان الرسالة';
    else
      return null;
  }

  static String? validateDescription({required String description}) {
    if (description.isEmpty)
      return 'أدخل وصف بسيط للرسالة';
    else
      return null;
  }
}
