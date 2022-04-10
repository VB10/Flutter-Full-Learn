import 'package:vexana/vexana.dart';

class VexanaNetworkManager extends NetworkManager {
  VexanaNetworkManager() : super(options: BaseOptions(baseUrl: 'https://reqres.in/'));
}
