
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:es_flutter_component/es_button/es_information_button.dart';
class PanelIconsSample extends StatefulWidget {
  PanelIconsSample({Key? key}) : super(key: key);

  @override
  State<PanelIconsSample> createState() => _PanelIconsSampleState();
}

class _PanelIconsSampleState extends State<PanelIconsSample> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   Color _color= StructureBuilder.styles!.primaryColor;
  double  _size=StructureBuilder.dims!.h2IconSize;
    List list = [
      ContainerItems(
          widget: Container(
              width: double.infinity,
            // height: 500,
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding*2,
              children: [
                EsSvgIcon("packages/es_flutter_component/assets/svgs/add.svg",
                color: _color,
                size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/bookmarks.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/CaretCircleLeft.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/CaretCircleRight.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/CaretDoubleLeft.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/CaretDoubleRight.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/CaretLeft.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/CaretRight.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/CheckCircle.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/download.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/down.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/up.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/FacebookLogo.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/folder.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/folder2.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/folderfavorite.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/Gift.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/heart.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/hearttick.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/home.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/info.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/infocircle.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/InstagramLogo.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/LinkedinLogo.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/Megaphone.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/message.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/notification.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/profilecircle.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/Question.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/refresh.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/search.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/setting.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/setting2.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/square.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/ticksquare.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/TwitterLogo.svg",
                  color: _color,
                  size: _size,),

                EsSvgIcon("packages/es_flutter_component/assets/svgs/WhatsappLogo.svg",
                  color: _color,
                  size: _size,),
                EsSvgIcon("packages/es_flutter_component/assets/svgs/YoutubeLogo.svg",
                  color: _color,
                  size: _size,),


              ],
            )

          ),
          title:"Icons",
          information:
          "It is a quill Text Editor located in: \n es_flutter_component>lib/es_form/es_text_editor/es_text_editor.dart"
              " \n and is used as: \n "
              """EsTextEditor(),"""),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.quilltexteditortitle,
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
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
