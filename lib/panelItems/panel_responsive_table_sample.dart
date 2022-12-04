import 'dart:math';


import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_table/responsive_table.dart';

class PanelResponsiveTableSample extends StatefulWidget {
  PanelResponsiveTableSample({Key? key}) : super(key: key);

  @override
  State<PanelResponsiveTableSample> createState() => _PanelResponsiveTableSampleState();
}

class _PanelResponsiveTableSampleState extends State<PanelResponsiveTableSample> {
  late List<DatatableHeader> _headers;

  List<int> _perPages = [10, 20, 50, 100];
  int _total = 100;
  int? _currentPerPage = 10;
  List<bool>? _expanded;
  String? _searchKey = "id";

  int _currentPage = 1;
  bool _isSearch = false;
  List<Map<String, dynamic>> _sourceOriginal = [];
  List<Map<String, dynamic>> _sourceFiltered = [];
  List<Map<String, dynamic>> _source = [];
  List<Map<String, dynamic>> _selecteds = [];
  // ignore: unused_field
  String _selectableKey = "id";

  String? _sortColumn;
  bool _sortAscending = true;
  bool _isLoading = true;
  bool _showSelect = true;
  var random = new Random();

  List<Map<String, dynamic>> _generateData({int n: 100}) {
    final List source = List.filled(n, Random.secure());
    List<Map<String, dynamic>> temps = [];
    var i = 1;
    print(i);
    // ignore: unused_local_variable
    for (var data in source) {
      temps.add({
        "id": i,
        "sku": "$i\000$i",
        "name": "Product $i",
        "category": "Category-$i",
        "price": i * 10.00,
        "cost": "20.00",
        "margin": "${i}0.20",
        "in_stock": "${i}0",
        "alert": "5",
        "received": [i + 20, 150]
      });
      i++;
    }
    return temps;
  }

  _initializeData() async {
    _mockPullData();
  }

  _mockPullData() async {
    _expanded = List.generate(_currentPerPage!, (index) => false);

    setState(() => _isLoading = true);
    Future.delayed(Duration(seconds: 3)).then((value) {
      _sourceOriginal.clear();
      _sourceOriginal.addAll(_generateData(n: random.nextInt(10000)));
      _sourceFiltered = _sourceOriginal;
      _total = _sourceFiltered.length;
      _source = _sourceFiltered.getRange(0, _currentPerPage!).toList();
      setState(() => _isLoading = false);
    });
  }

  _resetData({start: 0}) async {
    setState(() => _isLoading = true);
    var _expandedLen =
    _total - start < _currentPerPage! ? _total - start : _currentPerPage;
    Future.delayed(Duration(seconds: 0)).then((value) {
      _expanded = List.generate(_expandedLen as int, (index) => false);
      _source.clear();
      _source = _sourceFiltered.getRange(start, start + _expandedLen).toList();
      setState(() => _isLoading = false);
    });
  }

  _filterData(value) {
    setState(() => _isLoading = true);

    try {
      if (value == "" || value == null) {
        _sourceFiltered = _sourceOriginal;
      } else {
        _sourceFiltered = _sourceOriginal
            .where((data) => data[_searchKey!]
            .toString()
            .toLowerCase()
            .contains(value.toString().toLowerCase()))
            .toList();
      }

      _total = _sourceFiltered.length;
      var _rangeTop = _total < _currentPerPage! ? _total : _currentPerPage!;
      _expanded = List.generate(_rangeTop, (index) => false);
      _source = _sourceFiltered.getRange(0, _rangeTop).toList();
    } catch (e) {
      print(e);
    }
    setState(() => _isLoading = false);
  }

  @override
  void initState() {
    super.initState();

    /// set headers
    _headers = [
      DatatableHeader(
          text: "ID",
          value: "id",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Name",
          value: "name",
          show: true,
          flex: 2,
          sortable: true,
          editable: true,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "SKU",
          value: "sku",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Category",
          value: "category",
          show: true,
          sortable: true,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "Price",
          value: "price",
          show: true,
          sortable: true,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "Margin",
          value: "margin",
          show: true,
          sortable: true,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "In Stock",
          value: "in_stock",
          show: true,
          sortable: true,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "Alert",
          value: "alert",
          show: true,
          sortable: true,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "Received",
          value: "received",
          show: true,
          sortable: false,
          sourceBuilder: (value, row) {
            List list = List.from(value);
            return Container(
              child: Column(
                children: [
                  Container(
                    width: 85,
                    child: LinearProgressIndicator(
                      color: StructureBuilder.styles!.primaryColor,
                      backgroundColor: StructureBuilder.styles!.t3Color,
                      value: list.first / list.last,
                    ),
                  ),
                  Text("${list.first} of ${list.last}")
                ],
              ),
            );
          },
          textAlign: TextAlign.center),
    ];

    _initializeData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          widget: Container(
              height:750,
              child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 700,
                          ),
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0BorderRadius*2)),
                            border: Border.all(color: StructureBuilder.styles!.primaryColor)
                          ),

                          child: Container(
                            padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                            decoration: BoxDecoration(
                                color: StructureBuilder.styles!.primaryLightColor,
                                borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0BorderRadius*2))
                            ),
                            // clipBehavior: Clip.antiAlias,
                            child: ResponsiveDatatable(

                              reponseScreenSizes: [ScreenSize.xs],
                              actions: [
                                if (_isSearch)
                                  Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Enter search term based on ' +
                                                _searchKey!
                                                    .replaceAll(new RegExp('[\\W_]+'), ' ')
                                                    .toUpperCase(),
                                            prefixIcon: IconButton(
                                                icon: Icon(Icons.cancel),
                                                onPressed: () {
                                                  setState(() {
                                                    _isSearch = false;
                                                  });
                                                  _initializeData();
                                                }),
                                            suffixIcon: IconButton(
                                                icon:EsSvgIcon(
                                                  "packages/es_flutter_component/assets/svgs/search.svg"
                                                  ,size: StructureBuilder.dims!.h3IconSize,
                                                ), onPressed: () {})),
                                        onSubmitted: (value) {
                                          _filterData(value);
                                        },
                                      )),
                                if (!_isSearch)
                                  Row(
                                    children: [
                                      IconButton(
                                          icon: EsSvgIcon(
                                            "packages/es_flutter_component/assets/svgs/search.svg"
                                                ,size: StructureBuilder.dims!.h3IconSize,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _isSearch = true;
                                            });
                                          }),
                                      EsHSpacer(),
                                      EsSvgIcon(
                                        "packages/es_flutter_component/assets/svgs/refresh.svg"
                                        ,size: StructureBuilder.dims!.h3IconSize,
                                      ),
                                    ],
                                  )
                              ],
                              headers: _headers,
                              source: _source,
                              selecteds: _selecteds,
                              showSelect: _showSelect,
                              autoHeight: false,
                              dropContainer: (data) {
                                if (int.tryParse(data['id'].toString())!.isEven) {
                                  return Text("is Even");
                                }
                                return _DropDownContainer(data: data);
                              },
                              onChangedRow: (value, header) {
                                /// print(value);
                                /// print(header);
                              },
                              onSubmittedRow: (value, header) {
                                /// print(value);
                                /// print(header);
                              },
                              onTabRow: (data) {
                                // print(data);
                              },
                              onSort: (value) {
                                setState(() => _isLoading = true);

                                setState(() {
                                  _sortColumn = value;
                                  _sortAscending = !_sortAscending;
                                  if (_sortAscending) {
                                    _sourceFiltered.sort((a, b) =>
                                        b["$_sortColumn"].compareTo(a["$_sortColumn"]));
                                  } else {
                                    _sourceFiltered.sort((a, b) =>
                                        a["$_sortColumn"].compareTo(b["$_sortColumn"]));
                                  }
                                  var _rangeTop = _currentPerPage! < _sourceFiltered.length
                                      ? _currentPerPage!
                                      : _sourceFiltered.length;
                                  _source = _sourceFiltered.getRange(0, _rangeTop).toList();
                                  _searchKey = value;

                                  _isLoading = false;
                                });
                              },
                              expanded: _expanded,
                              sortAscending: _sortAscending,
                              sortColumn: _sortColumn,
                              isLoading: _isLoading,
                              onSelect: (value, item) {
                                print("$value  $item ");
                                if (value!) {
                                  setState(() => _selecteds.add(item));
                                } else {
                                  setState(
                                          () => _selecteds.removeAt(_selecteds.indexOf(item)));
                                }
                              },
                              onSelectAll: (value) {
                                if (value!) {
                                  setState(() => _selecteds =
                                      _source.map((entry) => entry).toList().cast());
                                } else {
                                  setState(() => _selecteds.clear());
                                }
                              },
                              footers: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text("Rows per page:"),
                                ),
                                if (_perPages.isNotEmpty)
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: DropdownButton<int>(
                                      value: _currentPerPage,
                                      items: _perPages
                                          .map((e) => DropdownMenuItem<int>(
                                        child: Text("$e"),
                                        value: e,
                                      ))
                                          .toList(),
                                      onChanged: (dynamic value) {
                                        setState(() {
                                          _currentPerPage = value;
                                          _currentPage = 1;
                                          _resetData();
                                        });
                                      },
                                      isExpanded: false,
                                    ),
                                  ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child:
                                  Text("$_currentPage - $_currentPerPage of $_total"),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    size: 16,
                                  ),
                                  onPressed: _currentPage == 1
                                      ? null
                                      : () {
                                    var _nextSet = _currentPage - _currentPerPage!;
                                    setState(() {
                                      _currentPage = _nextSet > 1 ? _nextSet : 1;
                                      _resetData(start: _currentPage - 1);
                                    });
                                  },
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                ),
                                IconButton(
                                  icon: Icon(Icons.arrow_forward_ios, size: 16),
                                  onPressed: _currentPage + _currentPerPage! - 1 > _total
                                      ? null
                                      : () {
                                    var _nextSet = _currentPage + _currentPerPage!;

                                    setState(() {
                                      _currentPage = _nextSet < _total
                                          ? _nextSet
                                          : _total - _currentPerPage!;
                                      _resetData(start: _nextSet - 1);
                                    });
                                  },
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                )
                              ],
                              headerDecoration: BoxDecoration(
                                  color: StructureBuilder.styles!.primaryColor,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(StructureBuilder.dims!.h0BorderRadius),
                                      topLeft: Radius.circular(StructureBuilder.dims!.h0BorderRadius),
                                  ),
                                  // border: Border(
                                  //     bottom: BorderSide(color: Colors.red, width: 1))
                              ),
                              selectedDecoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                    BorderSide(color: Colors.green[300]!, width: 1)),
                                color: Colors.green,
                              ),
                              headerTextStyle: TextStyle(color: Colors.white),
                              rowTextStyle: TextStyle(color: StructureBuilder.styles!.secondaryColor),
                              selectedTextStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ])),
          ),
          title: AppLocalizations.of(context)!.responsivetable,
          information:
              "it is responsive table that the package is added in pubspec.yaml 's dependencies \n and is used as: \n "
              """ResponsiveDatatable(

                              reponseScreenSizes: [ScreenSize.xs],
                              actions: [
                                if (_isSearch)
                                  Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Enter search term based on ' +
                                                _searchKey!
                                                    .replaceAll(new RegExp('[\\W_]+'), ' ')
                                                    .toUpperCase(),
                                            prefixIcon: IconButton(
                                                icon: Icon(Icons.cancel),
                                                onPressed: () {
                                                  setState(() {
                                                    _isSearch = false;
                                                  });
                                                  _initializeData();
                                                }),
                                            suffixIcon: IconButton(
                                                icon:EsSvgIcon(
                                                  "packages/es_flutter_component/assets/svgs/search.svg"
                                                  ,size: StructureBuilder.dims!.h3IconSize,
                                                ), onPressed: () {})),
                                        onSubmitted: (value) {
                                          _filterData(value);
                                        },
                                      )),
                                if (!_isSearch)
                                  Row(
                                    children: [
                                      IconButton(
                                          icon: EsSvgIcon(
                                            "packages/es_flutter_component/assets/svgs/search.svg"
                                                ,size: StructureBuilder.dims!.h3IconSize,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _isSearch = true;
                                            });
                                          }),
                                      EsHSpacer(),
                                      EsSvgIcon(
                                        "packages/es_flutter_component/assets/svgs/refresh.svg"
                                        ,size: StructureBuilder.dims!.h3IconSize,
                                      ),
                                    ],
                                  )
                              ],
                              headers: _headers,
                              source: _source,
                              selecteds: _selecteds,
                              showSelect: _showSelect,
                              autoHeight: false,
                              dropContainer: (data) {
                                if (int.tryParse(data['id'].toString())!.isEven) {
                                  return Text("is Even");
                                }
                                return _DropDownContainer(data: data);
                              },
                              onChangedRow: (value, header) {
                                /// print(value);
                                /// print(header);
                              },
                              onSubmittedRow: (value, header) {
                                /// print(value);
                                /// print(header);
                              },
                              onTabRow: (data) {
                                // print(data);
                              },
                              onSort: (value) {
                                setState(() => _isLoading = true);

                                setState(() {
                                  _sortColumn = value;
                                  _sortAscending = !_sortAscending;
                                  if (_sortAscending) {
                                    _sourceFiltered.sort((a, b) =>
                                        b["$_sortColumn"].compareTo(a["$_sortColumn"]));
                                  } else {
                                    _sourceFiltered.sort((a, b) =>
                                        a["$_sortColumn"].compareTo(b["$_sortColumn"]));
                                  }
                                  var _rangeTop = _currentPerPage! < _sourceFiltered.length
                                      ? _currentPerPage!
                                      : _sourceFiltered.length;
                                  _source = _sourceFiltered.getRange(0, _rangeTop).toList();
                                  _searchKey = value;

                                  _isLoading = false;
                                });
                              },
                              expanded: _expanded,
                              sortAscending: _sortAscending,
                              sortColumn: _sortColumn,
                              isLoading: _isLoading,
                              onSelect: (value, item) {
                                if (value!) {
                                  setState(() => _selecteds.add(item));
                                } else {
                                  setState(
                                          () => _selecteds.removeAt(_selecteds.indexOf(item)));
                                }
                              },
                              onSelectAll: (value) {
                                if (value!) {
                                  setState(() => _selecteds =
                                      _source.map((entry) => entry).toList().cast());
                                } else {
                                  setState(() => _selecteds.clear());
                                }
                              },
                              footers: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text("Rows per page:"),
                                ),
                                if (_perPages.isNotEmpty)
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: DropdownButton<int>(
                                      value: _currentPerPage,
                                      items: _perPages
                                          .map((e) => DropdownMenuItem<int>(
                                        child: Text("$e"),
                                        value: e,
                                      ))
                                          .toList(),
                                      onChanged: (dynamic value) {
                                        setState(() {
                                          _currentPerPage = value;
                                          _currentPage = 1;
                                          _resetData();
                                        });
                                      },
                                      isExpanded: false,
                                    ),
                                  ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child:
                                  Text("$_currentPage - $_currentPerPage of $_total"),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    size: 16,
                                  ),
                                  onPressed: _currentPage == 1
                                      ? null
                                      : () {
                                    var _nextSet = _currentPage - _currentPerPage!;
                                    setState(() {
                                      _currentPage = _nextSet > 1 ? _nextSet : 1;
                                      _resetData(start: _currentPage - 1);
                                    });
                                  },
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                ),
                                IconButton(
                                  icon: Icon(Icons.arrow_forward_ios, size: 16),
                                  onPressed: _currentPage + _currentPerPage! - 1 > _total
                                      ? null
                                      : () {
                                    var _nextSet = _currentPage + _currentPerPage!;

                                    setState(() {
                                      _currentPage = _nextSet < _total
                                          ? _nextSet
                                          : _total - _currentPerPage!;
                                      _resetData(start: _nextSet - 1);
                                    });
                                  },
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                )
                              ],
                              headerDecoration: BoxDecoration(
                                  color: StructureBuilder.styles!.primaryColor,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(StructureBuilder.dims!.h0BorderRadius),
                                      topLeft: Radius.circular(StructureBuilder.dims!.h0BorderRadius),
                                  ),
                                  // border: Border(
                                  //     bottom: BorderSide(color: Colors.red, width: 1))
                              ),
                              selectedDecoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                    BorderSide(color: Colors.green[300]!, width: 1)),
                                color: Colors.green,
                              ),
                              headerTextStyle: TextStyle(color: Colors.white),
                              rowTextStyle: TextStyle(color: StructureBuilder.styles!.secondaryColor),
                              selectedTextStyle: TextStyle(color: Colors.white),
                            ),"""),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.responsivetabletitle,
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  children: List.generate(
                      list.length, (index) => boxShow(list[index])))
            ],
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(

        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12',
        child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}


class _DropDownContainer extends StatelessWidget {
  final Map<String, dynamic> data;
  const _DropDownContainer({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = data.entries.map<Widget>((entry) {
      Widget w = Row(
        children: [
          Text(entry.key.toString()),
          Spacer(),
          Text(entry.value.toString()),
        ],
      );
      return w;
    }).toList();

    return Container(
      /// height: 100,
      child: Column(
        /// children: [
        ///   Expanded(
        ///       child: Container(
        ///     color: Colors.red,
        ///     height: 50,
        ///   )),
        /// ],
        children: _children,
      ),
    );
  }
}