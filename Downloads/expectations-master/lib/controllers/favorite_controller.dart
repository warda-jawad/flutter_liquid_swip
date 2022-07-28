
import 'package:expectations/api/api_requests.dart';
import 'package:expectations/model/favorite.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController{

  RxBool isLoading = false.obs;

  List<FavoriteData> listFavorites = [];
  FavoriteData favorite = FavoriteData();

  @override
  void onInit(){
    // fetchFavorites();
    super.onInit();
  }

  fetchFavorites(){
    isLoading(true);
    ApiRequests.fetchFavorites(token: AppHelper.getCurrentUserToken())
        .then((value) {
      listFavorites.addAll(value!.data!);
      listFavorites.forEach((element) => favorite = element);
      isLoading(false);
    }).catchError((error) => isLoading(false));
  }

  void removeFromFavorite() {
    ApiRequests.removeFromFavorite(
        token: AppHelper.getCurrentUserToken(), matchId: favorite.id!)
        .then((value) {
      fetchFavorites();
      update();
      Get.snackbar('حذف من المفضلة', '${value!.data}');
    });
  }
}