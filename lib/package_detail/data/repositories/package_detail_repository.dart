

import '../../../core/client.dart';
import '../models/package_detail_model.dart';

class PackageDetailRepository{

  final ApiClient client;
  late PackageDetailModel model;

  PackageDetailRepository({required this.client});


  Future<PackageDetailModel> fetchDetailById(int detailId) async{
    var rawDetail=await client.fetchPackageById(detailId);
    model=PackageDetailModel.fromJson(rawDetail);
    return model;
  }
}