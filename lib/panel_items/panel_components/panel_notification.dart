//
// import 'package:es_flutter_component/components/es_button/es_button.dart';
// import 'package:es_flutter_component/components/es_notification/es_ordinary_notification.dart';
// import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
// import 'package:es_flutter_component/resources/structure_builder.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bootstrap/flutter_bootstrap.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//
// import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
//
// class PanelNotification extends StatelessWidget {
//   const PanelNotification({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // String _data = AppLocalizations.of(context)!.samplButton;
//     List list = [
//       ContainerItems(
//           widget:EsButton(
//             text: AppLocalizations.of(context)!.simpleNotifications,
//             onTap: () {
//               NotificationApi.showNotification();
//             },
//           ),
//           title:AppLocalizations.of(context)!.simpleNotifications,
//           information:"It is an ordinary notification located in: \n es_flutter_component/lib/components/es_notification>es_ordinary_notification.dart \n and is used as: \n "
//               """EsOrdinaryButton(
//             text: AppLocalizations.of(context)!.simpleNotifications,
//             onPressed: () {
//               NotificationApi.showNotification(); },),"""
//       )
//     ];
//     bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
//         color: StructureBuilder.styles!.primaryLightColor,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 padding: EdgeInsets.symmetric(
//                     vertical: StructureBuilder.dims!.h0Padding),
//                 margin: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
//
//                 width: double.maxFinite,
//                 ////////////////////////
//                 child: EsOrdinaryText(
//                    AppLocalizations.of(context)!.notificationsDescription,
//                 ),
//                 decoration: BoxDecoration(
//                     color: StructureBuilder.styles!.primaryColor,
//                     borderRadius: BorderRadius.all(
//                         Radius.circular(StructureBuilder.dims!.h2FontSize))),
//               ),
//               BootstrapContainer(
//                   fluid: true,
//                   padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
//                   decoration: BoxDecoration(
//                     color: StructureBuilder.styles!.primaryLightColor,
//                   ),
//                   children: List.generate(
//                       list.length, (index) => _boxShow(list[index])))
//             ],
//           ),
//         ));
//   }
//
//   Widget _boxShow(Widget widget) {
//     return BootstrapCol(
//         sizes: 'col-sm-12 col-ml-12 col-lg-4 col-xl-4',
//         child: Container(
//           padding: EdgeInsets.symmetric(
//             horizontal: StructureBuilder.dims!.h0Padding,
//             vertical: StructureBuilder.dims!.h0Padding,
//           ),
//           margin: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(
//                   Radius.circular(StructureBuilder.dims!.h0Padding)),
//               color: StructureBuilder.styles!.primaryColor),
//           child: widget,
//         ));
//   }
//
// }
