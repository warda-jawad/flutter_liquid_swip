import 'dart:convert';
import 'package:expectations/model/add_favorite.dart';
import 'package:expectations/model/ads.dart';
import 'package:expectations/model/awards.dart';
import 'package:expectations/model/boarding.dart';
import 'package:expectations/model/contact_us.dart';
import 'package:expectations/model/delete_favorite.dart';
import 'package:expectations/model/favorite.dart';
import 'package:expectations/model/forget_password.dart';
import 'package:expectations/model/logout.dart';
import 'package:expectations/model/match_prediction.dart';
import 'package:expectations/model/notifications.dart';
import 'package:expectations/model/periodicals.dart';
import 'package:expectations/model/profile.dart';
import 'package:expectations/model/register.dart';
import 'package:expectations/model/reset_password.dart';
import 'package:expectations/model/search.dart';
import 'package:expectations/model/user.dart';
import 'package:expectations/model/user_expectations.dart';
import 'package:expectations/model/winners.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiRequests {
  static String _baseUrl = 'https://tawaq3.com/expectations/api';
  static var _client = http.Client();

  static Future<Register> createAccount(
      {required name,
      required email,
      required password,
      required confirmPassword,
      required phone,
      required dateOfBirth,
      required address,
      fcmToken}) async {
    http.Response response = await _client.post(Uri.parse('$_baseUrl/register'),
        headers: {'Content-type': 'application/json'},
        body: jsonEncode(
          <String, dynamic>{
            "name": name,
            "email": email,
            "password": password,
            "password_confirmation": confirmPassword,
            "phone": phone,
            "date_of_birth": dateOfBirth,
            "address": address,
            "fcm_token": fcmToken
          },
        ));
    Register user = Register();
    if (response.statusCode == 200 || response.statusCode == 201) {
      var body = jsonDecode(response.body);
      user = Register.fromJson(body);
      return user;
    } else {
      var body = jsonDecode(response.body);
      user = Register.message(body);
      if (user.message == 'The email has already been taken.') ;
      Get.snackbar('خطأ في إنشاء الحساب', 'هذا الإيميل مستخدم من قبل شخص آخر');
      print('Error Register ${response.statusCode}: ${response.body}');
      return user;
    }
  }

  static Future<User?> login({required email, required password, token}) async {
    var response = await _client.post(Uri.parse('$_baseUrl/login'),
        headers: {'Content-type': 'application/json', 'Authorization': token},
        body: jsonEncode(
          <String, dynamic>{"email": email, "password": password},
        ));
    User user = User();
    if (response.statusCode == 200 || response.statusCode == 201) {
      var body = jsonDecode(response.body);
      user = User.fromJson(body);
      return user;
    } else {
      var body = jsonDecode(response.body);
      user = User.message(body);
      if (user.message == 'api.password_wrong')
        Get.snackbar('خطأ في تسجيل الدخول', 'كلمة المرور المدخل غير صحيحة');
      else if (user.message == 'api.email_not_found')
        Get.snackbar('خطأ في تسجيل الدخول', 'هذا الإيميل غير مقترن في أي حساب');
      else
        Get.snackbar('خطأ في تسجيل الدخول',
            'هناك خطأ ما يرجى التحقق من جميع البيانات المدخلة');
      print('Error Login: ${response.statusCode}: ${response.body}');
      return user;
    }
  }

  static Future<Boarding?> fetchBoardings() async {
    http.Response response = await _client.get(Uri.parse('$_baseUrl/setting'),
        headers: {'Content-type': 'application/json'});
    List<BoardingData> boardings = [];
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      Boarding boarding = Boarding.fromJson(body);
      // print('BOARDINGS: ${jsonEncode(boarding)}');
      return boarding;
    }
    return null;
  }

  static Future<Search?> search({required String word}) async {
    http.Response response = await _client.post(Uri.parse('$_baseUrl/search'),
        headers: {'Content-type': 'application/json'},
        body: jsonEncode(<String, dynamic>{"key": word}));
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print('Response: $body');
      Search search = Search.fromJson(body);
      return search;
    } else {
      print('Error Search ${response.body}');
      return null;
    }
  }

  static Future<Ads?> fetchAds() async {
    http.Response response = await _client.get(Uri.parse('$_baseUrl/ads'));
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print("fetchAds ADS: $body");
      Ads ads = Ads.fromJson(body);
      return ads;
    }
    return null;
  }

  static Future<Periodicals?> fetchPeriodicals(
      {required String token}) async {
    http.Response response = await _client.post(
      Uri.parse('$_baseUrl/periodicals'),
      headers: {'Content-type': 'application/json', 'Authorization': token},
    );
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print('Response: $body');
      Periodicals periodicals = Periodicals.fromJson(body);
      return periodicals;
    } else {
      print('Error: ${response.body}');
      return null;
    }
  }

  static Future<Periodicals?> fetchPeriodicalsByDate(
      {required String token, required String date}) async {
    http.Response response = await _client.post(
      Uri.parse('$_baseUrl/periodicals'),
      headers: {'Content-type': 'application/json', 'Authorization': token},
      body: jsonEncode(<String, String>{"key": date}),
    );
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print('Response: $body');
      Periodicals periodicals = Periodicals.fromJson(body);
      return periodicals;
    } else {
      print('Error: ${response.body}');
      return null;
    }
  }

  static Future<MatchPrediction?> matchPrediction({
    required String token,
    required int matchId,
    required int resultHome,
    required int resultAway,
  }) async {
    http.Response response = await _client.post(
        Uri.parse('$_baseUrl/expectations/store'),
        headers: {'Content-type': 'application/json', 'Authorization': token},
        body: jsonEncode(<String, dynamic>{
          "match_id": matchId,
          "result_1": resultHome,
          "result_2": resultAway
        }));
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print('Response: $body');
      MatchPrediction matchPrediction = MatchPrediction.fromJson(body);
      return matchPrediction;
    } else {
      print('Error: ${response.body}');
      return null;
    }
  }

  static Future<UserExpectations?> fetchExpectations(
      {required String token}) async {
    http.Response response = await _client.get(
        Uri.parse('$_baseUrl/expectations'),
        headers: {'Content-type': 'application/json', 'Authorization': token});
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      // print('Response: $body');
      UserExpectations expectations = UserExpectations.fromJson(body);
      return expectations;
    } else {
      print('Error: ${response.body}');
      return null;
    }
  }

  static Future<AddFavorite?> addToFavorite(
      {required String token, required int matchId}) async {
    http.Response response = await _client.post(
        Uri.parse('$_baseUrl/favorite/store'),
        headers: {'Content-type': 'application/json', 'Authorization': token},
        body: jsonEncode(<String, dynamic>{"match_id": matchId}));
    if(response.statusCode == 200){
      var body = jsonDecode(response.body);
      print('Response: $body');
      AddFavorite favorite = AddFavorite.fromJson(body);
      return favorite;
    }else{
      print('Error Add Favorite: ${response.body}');
      return null;
    }
  }

  static Future<DeleteFavorite?> removeFromFavorite({required String token, required int matchId}) async {
    http.Response response = await _client.delete(Uri.parse('$_baseUrl/favorite/destroy/$matchId'),
      headers: {'Content-type': 'application/json', 'Authorization': token},);
    if(response.statusCode == 200){
      var body = jsonDecode(response.body);
      print('Response: $body');
      DeleteFavorite favorite = DeleteFavorite.fromJson(body);
      return favorite;
    }else{
      print('Error Delete Favorite: ${response.body}');
      return null;
    }
  }

  static Future<Favorite?> fetchFavorites({required String token}) async {
    http.Response response = await _client.get(Uri.parse('$_baseUrl/favorite'),
        headers: {'Content-type': 'application/json', 'Authorization': token});
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      // print('fetchFavorites: ${body}');
      Favorite favorite = Favorite.fromJson(body);
      return favorite;
    } else {
      print('Error: ${response.body}');
      return null;
    }
  }

  static Future<Notifications?> fetchNotifications() async {
    http.Response response =
        await _client.get(Uri.parse('$_baseUrl/notifications'));
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      // print('Response: $body');
      Notifications notifications = Notifications.fromJson(body);
      return notifications;
    } else {
      print('Error: ${response.body}');
      return null;
    }
  }

  static Future<Profile?> fetchUserData({required String token}) async {
    http.Response response = await _client.get(
        Uri.parse('$_baseUrl/user/profile'),
        headers: {'Authorization': token});
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      // print('Response: $body');
      Profile profile = Profile.fromJson(body);
      return profile;
    } else {
      print('Error: ${response.body}');
      return null;
    }
  }

  static Future<Profile?> editProfile(
      {required String name,
      required String email,
      required String phone,
      required String dateOfBirth,
      required String address,
      required String token,
      String? image}) async {
    http.Response response = await _client.post(
      Uri.parse('$_baseUrl/user/update'),
      headers: {'Content-type': 'application/json', 'Authorization': token},
      body: jsonEncode(
        <String, dynamic>{
          "name": name,
          "email": email,
          "phone": phone,
          "date_of_birth": dateOfBirth,
          "address": address,
          // "image": image
        },
      ),
    );
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      Profile profile = Profile.fromJson(body);
      return profile;
    } else {
      print('Error: ${response.body}');
      return null;
    }
  }

  static Future<ContactUs?> contactUs({
    required int userId,
    required String phone,
    required String title,
    required String description,
  }) async {
    http.Response response =
        await _client.post(Uri.parse('$_baseUrl/connect_us/store'),
            headers: {'Content-type': 'application/json'},
            body: jsonEncode(
              <String, dynamic>{
                "user_id": userId,
                "title": title,
                "phone": phone,
                "description": description
              },
            ));
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      // print('Response: $body');
      ContactUs contactUs = ContactUs.fromJson(body);
      return contactUs;
    } else {
      print('Error: ${response.body}');
      return null;
    }
  }

  static Future<Winners?> fetchWinners({required int matchId}) async {
    http.Response response = await _client.get(
        Uri.parse('$_baseUrl/winners/$matchId'),
        headers: {'Content-type': 'application/json'});
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      // print('Response: $body');
      Winners winners = Winners.fromJson(body);
      return winners;
    } else {
      print('Error: ${response.body}');
      return null;
    }
  }

  static Future<Awards?> fetchAwards({required int matchId}) async {
    http.Response response = await _client.get(
        Uri.parse('$_baseUrl/awards/$matchId'),
        headers: {'Content-type': 'application/json'});
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print('Response: $body');
      Awards awards = Awards.fromJson(body);
      return awards;
    } else {
      print('Error: ${response.body}');
      return null;
    }
  }

  static Future<ForgetPassword?> forgetpassword({required String email}) async {
    http.Response response = await _client.post(
      Uri.parse('$_baseUrl/forgot-password'),
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(
        <String, dynamic>{"email": email},
      ),
    );
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print("Response: $body");
      ForgetPassword forgetPassword = ForgetPassword.fromJson(body);
      return forgetPassword;
    } else {
      print('Error: ${response.body}');
      return null;
    }
  }

  static Future<ResetPassword> resetPassword(
      {required String token,
      required String oldPassword,
      required String newPassword,
      required String confirmPassword}) async {
    http.Response response = await _client.post(
      Uri.parse('$_baseUrl/reset-password'),
      headers: {'Content-type': 'application/json', 'Authorization': token},
      body: jsonEncode(<String, dynamic>{
        "old_password": oldPassword,
        "new_password": newPassword,
        "confirm_password": confirmPassword
      }),
    );
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print("Reponse: $body");
      ResetPassword resetPassword = ResetPassword.fromJson(body);
      return resetPassword;
    } else {
      var body = jsonDecode(response.body);
      ResetPassword resetPassword = ResetPassword.message(body);
      print('Error: ${response.body}');
      return resetPassword;
    }
  }

  static Future<Logout?> logout({required String token}) async {
    http.Response response = await _client.post(
      Uri.parse('$_baseUrl/logout'),
      headers: {'Content-type': 'application/json', 'Authorization': token},
    );
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      Logout logout = Logout.fromJson(body);
      return logout;
    } else {
      print('Error: ${response.body}');
      return null;
    }
  }
}
