import 'package:flutter_full_learn/202/cache/shared_learn_cache.dart';
import 'package:flutter_full_learn/303/reqrest_resource/model/resoruce_model.dart';
import 'package:flutter_full_learn/303/reqrest_resource/service/reqres_service.dart';

import '../../../product/service/project_dio.dart';
import '../view/req_res_view.dart';

abstract class ReqresViewModel extends LoadingStatefull<ReqResView> with ProjectDioMixin {
  late final IReqresService reqresService;

  List<Data> resources = [];
  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(service);
    _fetch();
  }

  Future<void> _fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }
}
