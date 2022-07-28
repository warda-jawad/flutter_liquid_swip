import 'dart:convert';

import 'package:expectations/api/api_requests.dart';
import 'package:expectations/controllers/profile_controller.dart';
import 'package:expectations/model/profile.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {


  ProfileData profile = ProfileData();
  RxBool isLoading = false.obs;
  DateTime date = DateTime(2022, 5, 29);

  late GlobalKey<FormState> formKey;
  late TextEditingController nameController;
  late TextEditingController birthDateController;
  late TextEditingController emailController;
  late TextEditingController addressController;
  late TextEditingController phoneController;
  late TextEditingController sportsController;

  @override
  void onInit() {
    loadUserData();
    formKey = GlobalKey<FormState>();
    nameController = TextEditingController();
    birthDateController = TextEditingController();
    emailController = TextEditingController();
    addressController = TextEditingController();
    phoneController = TextEditingController();
    sportsController = TextEditingController();
    super.onInit();
  }

  @override
  dispose() {
    nameController.dispose();
    birthDateController.dispose();
    emailController.dispose();
    addressController.dispose();
    phoneController.dispose();
    sportsController.dispose();
    isLoading(false);
    super.dispose();
  }

  void loadUserData() {
    ApiRequests.fetchUserData(token: AppHelper.getCurrentUserToken())
        .then((value) {
      profile = value!.data!;
      print('USERDATA: ${jsonEncode(profile)}');
      nameController.text = profile.name!;
      emailController.text = profile.email!;
      addressController.text = profile.address!;
      birthDateController.text = profile.dateOfBirth!;
      phoneController.text = profile.phone!.toString();
      // sportsController.text = profile.name!;
    });
  }

  void editProfile() {
    bool isValidate = formKey.currentState!.validate();
    if (isValidate) {
      isLoading(true);
      ApiRequests.editProfile(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        dateOfBirth: birthDateController.text,
        address: addressController.text,
        token: AppHelper.getCurrentUserToken(),
      ).then((value) {
        ProfileController controller = Get.find();
        controller.profile = value!.data!;
        Get.offAndToNamed(Routes.profile);
        isLoading(false);
      }).catchError((error) {
        isLoading(false);
        print("catchError: $error");
      });
    } else
      isLoading(false);
  }
}
