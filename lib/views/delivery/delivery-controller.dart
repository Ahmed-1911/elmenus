import 'package:elmenus/model/offers.dart';
import 'package:elmenus/model/restaurants-model.dart';
import 'package:elmenus/services/offers-services.dart';
import 'package:elmenus/services/resturants-services.dart';
import 'package:get/get.dart';


class DeliveryController extends GetxController {
  @override
  void onInit() async{
    super.onInit();
   await fetchListOfRestaurant();
   await fetchListOfOffers();
   await fetchListOfRestaurantByMood('Hidden Gems');
   await fetchListOfRestaurantByDish();
  }

  var isLoading = true.obs;
  var dishFilter='Grills'.obs;
  var restaurantsList = List<RestaurantElement>().obs;
  var restaurantsListByMood = List<RestaurantElement>().obs;
  var restaurantsListByDish = List<RestaurantElement>().obs;
  var offers = List<OfferElement>().obs;

  fetchListOfRestaurant() async {
    isLoading(true);
    restaurantsList.value = await RestaurantsApi().fetchRestaurantsList();
    isLoading(false);
  }

  fetchListOfRestaurantByMood(String mood) async {
    isLoading(true);
    restaurantsListByMood.value=restaurantsList.where((element) => element.mood==mood).toList();
    isLoading(false);
  }

  fetchListOfRestaurantByDish() {
    isLoading(true);
    restaurantsListByDish.value=restaurantsList.where((element) => element.dish==dishFilter.value).toList();
    update();
    isLoading(false);
  }

  fetchListOfOffers() async {
    isLoading(true);
    offers.value = await OffersApi().fetchOffersList();
    isLoading(false);
  }

  changeDishFilter(String filter)async{
    dishFilter(filter);
    await fetchListOfRestaurantByDish();
    update();
  }
}
