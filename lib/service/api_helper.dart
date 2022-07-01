import '../utils/SharedPref.dart';
import '../utils/app_keys.dart';

var id = SharedPref.getInstance()!.getStringValuesSF(AppKeys.loginId);
nearByParams(wid) {
  final params = {
    'businessId' : id,
    "currentLocation": {"lat": 30.90, "log": 70.45},
    "categories": [wid.toString()]
  };
  return params;
}

nearByDetailParams() {
  final params = {"businessId": id};
  return params;
}
