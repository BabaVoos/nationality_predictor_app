
import '../models/nationalize.dart';
import '../web_services/nationalize_web_services.dart';

class NationalizeRepo {
  final NationalizeWebServices nationalizeWebServices;

  NationalizeRepo(this.nationalizeWebServices);

  Future<Nationalize> getData(String name) async {
    return await nationalizeWebServices.getData(
      name,
    );
  }
}
