import 'package:es_flutter_component/components/es_table/es_simple_table.dart';
import 'package:es_flutter_component/components/es_text/es_header.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../main.dart';

class EsInformationCard extends StatelessWidget {
  String? name;
  String? lastName;
  String? job;
  int? age;
  String? city;
  String? address;
  String? phone;
  String? email;
  void Function()? editFunction;

  EsInformationCard({
    Key? key,
    this.name,
    this.lastName,
    this.job,
    this.age,
    this.city,
    this.address,
    this.phone,
    this.email,
    this.editFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
      margin: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h1Padding,
      ),
      decoration: BoxDecoration(
          color: MyStyle.cardColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EsHeader(
                "Information",
              ),
              InkWell(
                onTap: editFunction,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    EsTitle(
                      AppLocalizations.of(context)!.editprofile,
                    ),
                    Icon(Icons.edit)
                  ],
                ),
              )
            ],
          ),
          IntrinsicWidth(
            child: EsSimpleTable(
              dividerThickness: 0.000001,
              horizontalMargin: 0,
              headingColor: MyStyle.cardColor,
              rowsContent: [
                [
                  EsOrdinaryText(
                    AppLocalizations.of(context)!.name,
                    align: TextAlign.start,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsOrdinaryText(name ?? "Sajjad"),
                ],
                [
                  EsOrdinaryText(
                    AppLocalizations.of(context)!.lastname,
                    align: TextAlign.start,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsOrdinaryText(lastName ?? "Arvin"),
                ],
                [
                  EsOrdinaryText(
                    AppLocalizations.of(context)!.age,
                    align: TextAlign.start,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsOrdinaryText(age.toString()),
                ],
                [
                  EsOrdinaryText(
                    AppLocalizations.of(context)!.job,
                    align: TextAlign.start,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsOrdinaryText(job ?? "Developer"),
                ],
                [
                  EsOrdinaryText(
                    AppLocalizations.of(context)!.city,
                    align: TextAlign.start,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsOrdinaryText(city ?? "Kerman"),
                ],
                [
                  EsOrdinaryText(
                    AppLocalizations.of(context)!.address,
                    align: TextAlign.start,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsOrdinaryText(
                    address ?? AppLocalizations.of(context)!.lormmid,
                  ),
                ],
                [
                  EsOrdinaryText(
                    AppLocalizations.of(context)!.phone,
                    align: TextAlign.start,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsOrdinaryText(phone ?? "141144314"),
                ],
                [
                  EsOrdinaryText(
                    AppLocalizations.of(context)!.email,
                    align: TextAlign.start,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsOrdinaryText(email ?? "example@gmail.com"),
                ],
              ],
              columnTitle: [
                Container(),
                Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
