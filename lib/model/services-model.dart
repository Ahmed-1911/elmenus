import 'package:get/get.dart';
class Service {
  final String name;
  final String imageUrl;

  Service({this.name, this.imageUrl});
}

List<Service> servicesList = [
  Service(
    name: 'live',
    imageUrl: "https://coppelis.com/wp-content/uploads/2016/12/facebook-placeholder-for-locate-places-on-maps.png",
  ),
  Service(
    name: 'payment',
    imageUrl: "https://preview.pixlr.com/images/800wm/1503/1/1503117368.jpg",
  ),
  Service(
    name: 'promo',
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoRxMiylXwbmQQf9_acx-AOFvsKDFrOXaf9w&usqp=CAU",
  ),
  Service(
    name: 'offers',
    imageUrl: "https://clipartart.com/images/speaker-logo-clipart-1.jpg",
  ),
];
