

import 'package:es_flutter_admin_panel/panel_api_analyze/resources/status_checker.dart';
import 'package:es_flutter_components/resources/Constants/enums.dart';


class BlocCheck{

  static String hasError(dynamic res){



    if (res == getError(RequestError.noNet)
        || res == getError(RequestError.timeOut)
        || res == getError(RequestError.unknown)
        || res == "null"
    ) {

      return res;
    }


    return "null";
  }

  static bool hasModelError(model){



    if (model == "nc" || model == "to") {

      return true;
    }

    if (model == "error") {

      return true;
    }

    if (model == "null")
      return true;


    return false;
  }
}