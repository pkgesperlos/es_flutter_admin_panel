import 'package:es_flutter_admin_panel/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
// import 'package:test_offline_data_job/blocs/workbench_bloc.dart';
// import 'package:test_offline_data_job/models/workbensh_model.dart';
// import 'package:test_offline_data_job/widgets/my_drawer.dart';


class ManageData extends StatefulWidget {
  ManageData({Key? key}) : super(key: key);

  @override
  _ManageDataState createState() => _ManageDataState();
}

class _ManageDataState extends State<ManageData> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // setData();
  }


  @override
  Widget build(BuildContext context) {
    return MyDrawer(

      child: Container(
        height: 500,
        color: Colors.blueGrey,
      ),
    );
  }

  // void setData() async {
  //   WorkbenchModelList list = await workbenchBlocGetAll.fetchGetAll(
  //       apiAddress: 'workbench/get-all', fullResponse: (Response res) {
  //
  //         print(res);
  //   });
  // }

}