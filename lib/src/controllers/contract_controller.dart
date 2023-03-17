import 'package:customerapp/src/helpers/api_gen/generated/api_oas3.swagger.dart';
import 'package:customerapp/src/helpers/swagger_client.dart';
import 'package:get/get.dart';

class ContractController extends GetxController {
  static final ContractController get = Get.isRegistered<ContractController>()
      ? Get.find()
      : Get.put(ContractController());

  // RxList<SiteOut> sites = [].obs as RxList<SiteOut>;
  // ['Site 1 - 1234 Green RD', 'Site 2 - 8765 Blue RD'].obs;
  // RxString selectedSite = 'Site 1 - 1234 Green RD'.obs;

  final _client = ApiClient().getSwaggerClient();

  getContracts(int customerID) async {
    await _client.apiV1ContractGetContractCusCustomeIDGet(
      customeID: customerID,
    );
  }
}
