import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/editable_components/es-search_result/es_search_result.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/components/es_tab_bar/es_top_tab_bar_navigation.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/Constants/dims.dart';
import 'package:es_flutter_components/resources/Constants/styles.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../editable_components/es-search_result/es_article_search_card.dart';
import '../../editable_components/es-search_result/es_image_search_card.dart';
import '../../editable_components/es-search_result/es_user_search_card.dart';
import '../../panel_api_analyze/blocs/media_bloc.dart';
import '../../panel_api_analyze/es_paginate.dart';
import '../../panel_api_analyze/models/media_model.dart';
import '../../panel_ui/components/search_text_field.dart';

class PanelBlockTheorySample extends StatefulWidget {
  static const routeName = '/panelBlockTheorySample';

  PanelBlockTheorySample({Key? key}) : super(key: key);

  @override
  State<PanelBlockTheorySample> createState() =>
      _PanelBlockTheorySampleState();
}

class _PanelBlockTheorySampleState extends State<PanelBlockTheorySample> {


  ScrollController _listScrollController = ScrollController();

  bool loading = false;
  int _currentPage = 1;
  List<MediaDataModel> list = [];

  bool _finishFlag = false;
  /////////////////////////handle net
  String _total = "0";
  bool _noNet = false;
  double currentScroll = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _finishFlag ? null : getData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = 1000;
    int num2 = 20;


    // List<Widget> _iamgeCardList =
    //     List.generate(num2, (index) => EsImageSearchCard());

    List ContainerList = [
      ContainerItems(
          widget: Container(
            width: double.infinity,
            height: _height,
            // child:   SingleChildScrollView(
            //   child: Wrap(
            //       spacing: StructureBuilder.dims!.h0Padding,
            //       runSpacing: StructureBuilder.dims!.h1Padding,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: List.generate(
            //         _iamgeCardList.length,
            //             (index) {
            //           return _iamgeCardList [index];
            //         },
            //       )),
            // )
            child: StreamBuilder<MediaPaginateModel>(
              stream: mediaBlocShow.actions,
              builder: (context, AsyncSnapshot<MediaPaginateModel> snapshot) {

                if (snapshot.hasData) {
                  //////////return to scroll in >1 pages
                  if(_currentPage>1){
                    SchedulerBinding.instance.addPostFrameCallback((_) {
                      if (_listScrollController.hasClients) {
                        Future.delayed(Duration(milliseconds: 50), () {
                          _listScrollController?.jumpTo(currentScroll );
                        });
                      }
                    });
                  }
                  _noNet = false;
                  ////////////////////////////////////////////////////////////////

                  return EsPaginate(
                    listScrollController: _listScrollController,
                    onFinish: () {
                      _currentPage++;
                      ////////////////////////////////////set currentScroll
                      if (_listScrollController.hasClients) {
                        currentScroll = _listScrollController.position.pixels+100;
                      }
                      //////////////////////////////////////////////////////

                      _finishFlag ? null : getData();
                    },

                    child: ListView.builder(
                        controller: _listScrollController,
                        itemCount: _finishFlag ? list.length : list.length + 1,
                        itemBuilder: (context,index){
                          return index < list.length

                              ?EsImageSearchCard(imagePath: list[index].media!.url,)
                              : Center(
                            child: CircularProgressIndicator(),
                          );
                        },),

                  );
                }
                ////////////////////////////////////handel no net
                if (snapshot.error == "noNet" && _noNet == false) {
                  _noNet = true;

                  Future.delayed(Duration(milliseconds: 100), () {
                    getData();
                  });
                }
//////////////////////////////////////////////////////////////////

                return BootstrapCol(
                  sizes: 'col-sm-12 col-ml-6 col-lg-4 col-xl-4',
                  child: AspectRatio(
                    aspectRatio: 10 / 6.5,
                    child: Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(
                        vertical: Dims.h2Padding,
                        horizontal: Dims.h2Padding,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Styles.t3Color,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ),
                      ),
                      child: Center(child: CircularProgressIndicator(),),
                    ),
                  ),
                );
              },
            ),
          ),
          title: "Block theory",
          information: ""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: "Block theory",
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryColor,
                  ),
                  children: List.generate(list.length, (index) {
                    if (index == list.length - 1)
                      return boxShow2(ContainerList[index]);
                    else
                      return boxShow(ContainerList[index]);
                  })
                  // children: [boxShow(list[0]),boxShow2(list[1]),],

                  )
            ],
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-6 col-lg-6 col-xl-4', child: widget);
  }

  Widget boxShow2(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }


  void needGetDataFromFirst() {
    _finishFlag = false;
    _currentPage = 1;
  }

  getData() async {
    // print(_currentPage);
    // if (_currentPage == 2) {
    //   await Future.delayed(Duration(seconds: 3), () {
    //     print("delay");
    //   });
    // }
    // print(list[0].media!.url);

    if (_currentPage == 1)
      setState(() {
        list.clear();
      });

    MediaPaginateModel pageData = await mediaBlocShow.fetchShow(
      apiAddress: "checklist-media/show",
      body: {

        "page": _currentPage.toString(),
      },
    );

    list.addAll(pageData.data!.list);

    if (pageData.total != null) {
      setState(() {
        _total = pageData.total;
      });
    }

    if (_total == list.length.toString()) {
      _finishFlag = true;
    }
  }

}
