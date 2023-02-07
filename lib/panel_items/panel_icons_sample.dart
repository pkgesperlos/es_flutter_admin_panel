
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
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
   Color _color= StructureBuilder.styles!.iconColor().primary;
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
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/ticksquare.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/ChatsCircle.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/menu.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/notificationbing.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/setting.svg",
                    color: _color,
                    size: _size,),

                  EsSvgIcon("packages/es_flutter_components/assets/svgs/ticksquare.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/TwitterLogo.svg",
                    color: _color,
                    size: _size,),

                  EsSvgIcon("packages/es_flutter_components/assets/svgs/WhatsappLogo.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/YoutubeLogo.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/advanced.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/chart.svg",
                    color: _color,
                    size: _size,),

                  EsSvgIcon("packages/es_flutter_components/assets/svgs/emojihappy.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/form.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/gallery.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/layer.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/map.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/pages.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/profilecircle.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/send.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/video.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/add.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/bookmarks.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/CaretCircleLeft.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/CaretCircleRight.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/CaretDoubleLeft.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/CaretDoubleRight.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/CaretLeft.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/CaretRight.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/CheckCircle.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/download.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/down.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/up.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/FacebookLogo.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/folder.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/folder2.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/folderfavorite.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/Gift.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/GraduationCap.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/heart.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/hearttick.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/home.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/info.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/infocircle.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/InstagramLogo.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/LinkedinLogo.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/Megaphone.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/message.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/notification.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/profilecircle.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/Question.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/refresh.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/search.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/setting.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/setting2.svg",
                    color: _color,
                    size: _size,),
                  EsSvgIcon("packages/es_flutter_components/assets/svgs/square.svg",
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
              """EsSvgIcon("packages/es_flutter_components/assets/svgs/video.svg",
                  color: _color,
                  size: _size,),
                  where
                  Color _color= StructureBuilder.styles!.primaryDarkColor;
                  double  _size=StructureBuilder.dims!.h2IconSize;
                  """),
      ContainerItems(
          widget: Container(
              width: double.infinity,
            height: _height,
            child: SingleChildScrollView(
              child: Wrap(
                spacing: StructureBuilder.dims!.h0Padding,
                runSpacing: StructureBuilder.dims!.h0Padding*2,
                children: [
                  FaIcon(FontAwesomeIcons.gamepad,color: _color,),
                  FaIcon(FontAwesomeIcons.accessibleIcon,color: _color,),
                  FaIcon(FontAwesomeIcons.addressBook,color: _color,),
                  FaIcon(FontAwesomeIcons.addressCard,color: _color,),
                  FaIcon(FontAwesomeIcons.adn,color: _color,),
                  FaIcon(FontAwesomeIcons.adversal,color: _color,),
                  FaIcon(FontAwesomeIcons.affiliatetheme,color: _color,),
                  FaIcon(FontAwesomeIcons.airbnb,color: _color,),
                  FaIcon(FontAwesomeIcons.algolia,color: _color,),
                  FaIcon(FontAwesomeIcons.alignCenter,color: _color,),
                  FaIcon(FontAwesomeIcons.alignJustify,color: _color,),
                  FaIcon(FontAwesomeIcons.alignLeft,color: _color,),
                  FaIcon(FontAwesomeIcons.alignRight,color: _color,),
                  FaIcon(FontAwesomeIcons.alipay,color: _color,),
                  FaIcon(FontAwesomeIcons.amazon,color: _color,),
                  FaIcon(FontAwesomeIcons.amazonPay,color: _color,),
                  FaIcon(FontAwesomeIcons.amilia,color: _color,),
                  FaIcon(FontAwesomeIcons.anchor,color: _color,),
                  FaIcon(FontAwesomeIcons.anchorCircleExclamation,color: _color,),
                  FaIcon(FontAwesomeIcons.anchorCircleXmark,color: _color,),
                  FaIcon(FontAwesomeIcons.anchorLock,color: _color,),
                  FaIcon(FontAwesomeIcons.angellist,color: _color,),
                  FaIcon(FontAwesomeIcons.angleDown,color: _color,),
                  FaIcon(FontAwesomeIcons.angleLeft,color: _color,),
                  FaIcon(FontAwesomeIcons.angellist,color: _color,),
                  FaIcon(FontAwesomeIcons.angrycreative,color: _color,),
                  FaIcon(FontAwesomeIcons.angular,color: _color,),
                  FaIcon(FontAwesomeIcons.apper,color: _color,),
                  FaIcon(FontAwesomeIcons.apple,color: _color,),
                  FaIcon(FontAwesomeIcons.applePay,color: _color,),
                  FaIcon(FontAwesomeIcons.appleWhole,color: _color,),
                  FaIcon(FontAwesomeIcons.appStore,color: _color,),
                  FaIcon(FontAwesomeIcons.appStoreIos,color: _color,),
                  FaIcon(FontAwesomeIcons.archway,color: _color,),
                  FaIcon(FontAwesomeIcons.arrowDown,color: _color,),
                  FaIcon(FontAwesomeIcons.arrowsRotate,color: _color,),
                  FaIcon(FontAwesomeIcons.arrowsSpin,color: _color,),
                  FaIcon(FontAwesomeIcons.arrowsSplitUpAndLeft,color: _color,),

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
                  Icon(Icons.access_time,color: _color,),
                  Icon(Icons.add,color: _color,),
                  Icon(Icons.account_circle_sharp,color: _color,),
                  Icon(Icons.add_a_photo_sharp,color: _color,),
                  Icon(Icons.access_time_filled,color: _color,),
                  Icon(Icons.access_alarm,color: _color,),
                  Icon(Icons.abc,color: _color,),
                  Icon(Icons.ac_unit,color: _color,),
                  Icon(Icons.accessibility,color: _color,),
                  Icon(Icons.accessible_sharp,color: _color,),
                  Icon(Icons.account_balance_sharp,color: _color,),
                  Icon(Icons.account_balance_wallet,color: _color,),
                  Icon(Icons.account_circle_outlined,color: _color,),
                  Icon(Icons.account_tree_outlined,color: _color,),
                  Icon(Icons.adb,color: _color,),
                  Icon(Icons.add_alert,color: _color,),
                  Icon(Icons.ad_units,color: _color,),
                  Icon(Icons.add_a_photo_outlined,color: _color,),
                  Icon(Icons.add_chart,color: _color,),
                  Icon(Icons.add_card_rounded,color: _color,),
                  Icon(Icons.add_business,color: _color,),
                  Icon(Icons.baby_changing_station,color: _color,),
                  Icon(Icons.backspace_outlined,color: _color,),
                  Icon(Icons.backup_outlined,color: _color,),
                  Icon(Icons.backup_table,color: _color,),
                  Icon(Icons.badge,color: _color,),
                  Icon(Icons.bakery_dining,color: _color,),
                  Icon(Icons.ballot_outlined,color: _color,),
                  Icon(Icons.bar_chart,color: _color,),
                  Icon(Icons.batch_prediction,color: _color,),
                  Icon(Icons.battery_4_bar_outlined,color: _color,),
                  Icon(Icons.battery_alert,color: _color,),
                  Icon(Icons.beach_access_outlined,color: _color,),
                  Icon(Icons.bike_scooter,color: _color,),
                  Icon(Icons.biotech,color: _color,),
                  Icon(Icons.cabin,color: _color,),


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
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
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
                      color: StructureBuilder.styles!.primaryColor,
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
