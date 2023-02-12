



import 'converter/date_time_converter.dart';

class MediaPaginateModel {
  var current_page, from, last_page, per_page, to, total;
  MediaDataModelList? data;
  List<Map<String, dynamic>> source = [];

  MediaPaginateModel.fromJson(dynamic json) {
    current_page = json['current_page'].toString();
    from = json['from'].toString();
    last_page = json['last_page'].toString();
    per_page = json['per_page'].toString();
    to = json['to'].toString();
    total = json['total'].toString();
    data = json['data'] == null ? null : MediaDataModelList.fromJson(json['data']);
    // source = _generateData(per_page,current_page,MediaModelList.fromJson(json['data']).list);

  }
}

class MediaDataModelList {
  List<MediaDataModel> list = [];

  MediaDataModelList.fromJson(res) {
    List data = res;

    for (int i = 0; i < data.length; i++) {
      list.add(MediaDataModel.fromJson(data[i]));
    }

  }
}
class MediaDataModel {
  var id,title, description,media_id,checklist_id ,created_at, updated_at;

  MediaModel? media;

  MediaDataModel.fromJson(dynamic json) {

    id = json['_id'].toString();
    title = json['title'].toString();
    description = json['description'].toString();
    media_id = json['media_id'].toString();
    media_id = json['media_id'].toString();
    checklist_id = json['checklist_id'].toString();
    media = (json['media'] == null ? null : MediaModel.fromJson(json['media']));
    created_at = DateTimeConverter.greToJalali(json['created_at'].toString(),hasTime: true,showTime: true);
    updated_at = json['updated_at'].toString();
  }
}


// class MediaModelList {
//   List<MediaModel> list = [];
//
//   MediaModelList.fromJson(res) {
//     List data = res;
//
//     for (int i = 0; i < data.length; i++) {
//       list.add(MediaModel.fromJson(data[i]));
//     }
//
//   }
// }

// List<Map<String, dynamic>> _generateData(String perPage,String currentPage,List<MediaModel> source) {
//   List<Map<String, dynamic>> temps = [];
//   var i = (int.parse(currentPage)-1)*int.parse(perPage);
//   for (MediaModel data in source) {
//     i++;
//     temps.add({
//       "id": i,
//       "data":data,
//       "created_at": data.created_at.toString(),
//       "file_name": data.file_name.toString(),
//       "received": [i + 20, 150]
//     });
//
//   }
//   return temps;
// }

class MediaModel {
  var id, created_at, updated_at, url, file_name,type;

  MediaModel.fromJson(dynamic json) {

    id = json['_id'].toString();
    url = json['url'].toString();
    type = json['type'].toString();
    file_name = json['file_name'].toString();
    created_at = DateTimeConverter.greToJalali(json['created_at'].toString(),hasTime: true,showTime: true);
    updated_at = json['updated_at'].toString();
  }
}








