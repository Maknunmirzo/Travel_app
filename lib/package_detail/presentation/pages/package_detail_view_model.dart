import 'package:flutter/cupertino.dart';

import '../../data/models/package_detail_model.dart';
import '../../data/repositories/package_detail_repository.dart';

class PackageDetailViewModel extends ChangeNotifier{

  PackageDetailViewModel({required PackageDetailRepository repo}):_repo=repo{
    load(1);
  }

  final PackageDetailRepository _repo;
  late PackageDetailModel package;


  bool loading=true;

  Future<void> load(int detailId) async {
    package=await _repo.fetchDetailById(detailId);
    loading = false;
    notifyListeners();
  }

}