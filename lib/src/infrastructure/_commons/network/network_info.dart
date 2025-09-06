import 'package:connectivity_plus/connectivity_plus.dart';

abstract class INetworkInfo {
  Future<bool> checkConnection();
}

class NetworkInfo implements INetworkInfo {
  Connectivity connectivity;
  NetworkInfo({required this.connectivity});

  @override
  Future<bool> checkConnection() async {
    final connectivityResult = await connectivity.checkConnectivity();
    final userHasWifi = connectivityResult.contains(ConnectivityResult.wifi);
    final userHasMobileData = connectivityResult.contains(
      ConnectivityResult.mobile,
    );
    return userHasWifi || userHasMobileData;
  }
}
