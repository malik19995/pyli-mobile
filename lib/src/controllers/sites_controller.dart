import 'package:customerapp/src/helpers/api_gen/generated/api_oas3.swagger.dart';
import 'package:customerapp/src/helpers/swagger_client.dart';
import 'package:customerapp/src/models/_models.dart';
import 'package:get/get.dart';

class SiteController extends GetxController {
  static final SiteController get = Get.isRegistered<SiteController>()
      ? Get.find()
      : Get.put(SiteController());

  Rx<SiteModel?> selectedSite = Rx(null);
  RxList<SiteModel> allSites = RxList([]);

  final _client = ApiClient().getSwaggerClient();

  getAllSites() async {
    var response = await _client.apiV1SitesGet();

    if (response.statusCode == 200 &&
        response.body != null &&
        response.body!.isNotEmpty) {
      if (response.body != null && response.body!.isNotEmpty) {
        allSites.setAll(
          0,
          response.body!.asMap().entries.map(
                (entry) => SiteModel(
                  id: entry.value.id,
                  title: "Site ${entry.key}",
                  subtitle: entry.value.name,
                ),
              ),
        );
        selectedSite(allSites.first);
      }
    }
  }

  addNewSite(String siteName, String type) async {
    await _client.apiV1SiteAddPost(
      body: SiteIn(
        name: siteName,
        type: type,
      ),
    );
  }

  getAllSubscriptions() async {
    await _client.apiV1SubscriptionsGet();
  }

  getSubscriptionsBySite(int siteID) async {
    await _client.apiV1SubscriptionsGet(
      siteId: siteID,
    );
  }

  getAllCanceledSubscriptions() async {
    await _client.apiV1SubscriptionsGet(
      cancelled: true,
    );
  }
}
