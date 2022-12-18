
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PanelIconsSample extends StatefulWidget {

  static const routeName = '/panelIconsSample';

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
    double _height=200;
   Color _color= StructureBuilder.styles!.primaryColor;
  double  _size=StructureBuilder.dims!.h2IconSize;
    List list = [
      ContainerItems(
          widget: Container(
              width: double.infinity,
            height: _height,
            child: SingleChildScrollView(
              child: Wrap(
                spacing: StructureBuilder.dims!.h0Padding,
                runSpacing: StructureBuilder.dims!.h0Padding*2,
                children: [
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/ticksquare.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/ChatsCircle.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/menu.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/notificationbing.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/setting.svg",
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
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/advanced.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/chart.svg",
                    color: _color,
                    size: _size,),

                  EsSvgIcon("packages/es_flutter_component/assets/svgs/emojihappy.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/form.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/gallery.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/layer.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/map.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/pages.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/profilecircle.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/send.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/video.svg",
                    color: _color,
                    size: _size,),
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

                ],
              ),
            )

          ),
          title:AppLocalizations.of(context)!.panelicons,
          information:
          "these are Panel icons located in: \n es_flutter_component>assets/svgs"
              " \n and is used as: \n "
              """EsSvgIcon("packages/es_flutter_component/assets/svgs/video.svg",
                  color: _color,
                  size: _size,),"""),
      ContainerItems(
          widget: Container(
              width: double.infinity,
            height: _height,
            child: SingleChildScrollView(
              child: Wrap(
                spacing: StructureBuilder.dims!.h0Padding,
                runSpacing: StructureBuilder.dims!.h0Padding*2,
                children: [
                  FaIcon(FontAwesomeIcons.gamepad),
                  FaIcon(FontAwesomeIcons.accessibleIcon),
                  FaIcon(FontAwesomeIcons.addressBook),
                  FaIcon(FontAwesomeIcons.addressCard),
                  FaIcon(FontAwesomeIcons.adn),
                  FaIcon(FontAwesomeIcons.adversal),
                  FaIcon(FontAwesomeIcons.affiliatetheme),
                  FaIcon(FontAwesomeIcons.airbnb),
                  FaIcon(FontAwesomeIcons.algolia),
                  FaIcon(FontAwesomeIcons.alignCenter),
                  FaIcon(FontAwesomeIcons.alignJustify),
                  FaIcon(FontAwesomeIcons.alignLeft),
                  FaIcon(FontAwesomeIcons.alignRight),
                  FaIcon(FontAwesomeIcons.alipay),
                  FaIcon(FontAwesomeIcons.amazon),
                  FaIcon(FontAwesomeIcons.amazonPay),
                  FaIcon(FontAwesomeIcons.amilia),
                  FaIcon(FontAwesomeIcons.anchor),
                  FaIcon(FontAwesomeIcons.anchorCircleExclamation),
                  FaIcon(FontAwesomeIcons.anchorCircleXmark),
                  FaIcon(FontAwesomeIcons.anchorLock),
                  FaIcon(FontAwesomeIcons.angellist),
                  FaIcon(FontAwesomeIcons.angleDown),
                  FaIcon(FontAwesomeIcons.angleLeft),
                  FaIcon(FontAwesomeIcons.angellist),
                  FaIcon(FontAwesomeIcons.angrycreative),
                  FaIcon(FontAwesomeIcons.angular),
                  FaIcon(FontAwesomeIcons.apper),
                  FaIcon(FontAwesomeIcons.apple),
                  FaIcon(FontAwesomeIcons.applePay),
                  FaIcon(FontAwesomeIcons.appleWhole),
                  FaIcon(FontAwesomeIcons.appStore),
                  FaIcon(FontAwesomeIcons.appStoreIos),
                  FaIcon(FontAwesomeIcons.archway),
                  FaIcon(FontAwesomeIcons.arrowDown),
                  FaIcon(FontAwesomeIcons.arrowsRotate),
                  FaIcon(FontAwesomeIcons.arrowsSpin),
                  FaIcon(FontAwesomeIcons.arrowsSplitUpAndLeft),

                ]
              ),
            )

          ),
          title:AppLocalizations.of(context)!.fontawesomefluttericons,
          information:
          "Theey are font_awesome_flutter icons that the font_awesome_flutter package "
              "\n is added in pubspec.yaml dependencies"
              " \n and is used as: \n "
              """FaIcon(FontAwesomeIcons.gamepad),"""),
      ContainerItems(
          widget: Container(
              width: double.infinity,
            height: _height,
            child: SingleChildScrollView(
              child: Wrap(
                spacing: StructureBuilder.dims!.h0Padding,
                runSpacing: StructureBuilder.dims!.h0Padding*2,
                children: [
                  Icon(Icons.access_time),
                  Icon(Icons.add),
                  Icon(Icons.account_circle_sharp),
                  Icon(Icons.add_a_photo_sharp),
                  Icon(Icons.access_time_filled),
                  Icon(Icons.access_alarm),
                  Icon(Icons.abc),
                  Icon(Icons.ac_unit),
                  Icon(Icons.accessibility),
                  Icon(Icons.accessible_sharp),
                  Icon(Icons.account_balance_sharp),
                  Icon(Icons.account_balance_wallet),
                  Icon(Icons.account_circle_outlined),
                  Icon(Icons.account_tree_outlined),
                  Icon(Icons.adb),
                  Icon(Icons.add_alert),
                  Icon(Icons.ad_units),
                  Icon(Icons.add_a_photo_outlined),
                  Icon(Icons.add_chart),
                  Icon(Icons.add_card_rounded),
                  Icon(Icons.add_business),


                ]
              ),
            )

          ),
          title:AppLocalizations.of(context)!.fluttericons,
          information:
          "Theey are flutter icons that "
              " \n and is used as: \n "
              """Icon(Icons.add_a_photo_outlined),"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.primaryDarkColor,
          body:SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.icontitle,
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
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
