
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/components/es_bread_crumb/bread_crumb_navigator.dart';
import 'package:es_flutter_components/components/es_bread_crumb/static_bread_crumb_navigator.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class PanelBreadCrumbSample extends StatelessWidget {

  static const routeName = '/panelBreadCrumbSample';



  const PanelBreadCrumbSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height=150;
    List list = [
      ContainerItems(
          widget: Container(
            height: _height,
              child: Column(
            children: [
              BreadCrumbNavigator.shaped(
                currentRoute: AppLocalizations.of(context)!.components,
                breadButtonType: BreadButtonType.shaped,
              ),
              EsVSpacer(
                big: true,
              ),
              BreadCrumbNavigator.shaped(
                currentRoute: AppLocalizations.of(context)!.components,
                breadButtonType: BreadButtonType.shaped,
                backgroundColor: StructureBuilder.styles!.secondaryColor,
                textColor: StructureBuilder.styles!.textColor().secondary,
              ),
              EsVSpacer(
                big: true,
              ),
              BreadCrumbNavigator.shaped(
                currentRoute: AppLocalizations.of(context)!.components,
                breadButtonType: BreadButtonType.shaped,
                backgroundColor: StructureBuilder.styles!.specificColor,
                textColor: StructureBuilder.styles!.textColor().secondary,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.breadcrumbwithsolidstructureindifferentcolors,
          information:
          "these are bredcrumbs in different sizes located in: \n es_flutter_component/lib/components/es_bread_crumb/bread_crumb_navigator.dart'\n and is used as: \n "
              "first \n navigatorObservers: [AppNavigatorObserver()], \n "
              "should be added in the MaterialApp of the main.dart file  \n "
              "Then \n set route as \n "
              """class PanelBreadCrumbSample extends StatelessWidget {
                     static MaterialPageRoute getRoute() => MaterialPageRoute(
                     settings: RouteSettings(name: 'breadcrumb'),
                     builder: (context) => PanelBreadCrumbSample()); ..."""
              """ BreadCrumbNavigator.shaped(
                currentRoute: AppLocalizations.of(context)!.components,
                breadButtonType: BreadButtonType.shaped,
                backgroundColor: StructureBuilder.styles!.secondaryColor,
                textColor: StructureBuilder.styles!.textColor().secondary,
              ),\n 
              and finally navigate to other pages by \n 
               Navigator.push(context, PanelLabelSample.getRoute());"""),
      ContainerItems(
          widget: Container(
              height: _height,
              child: Column(
            children: [
              StaticBreadCrumbNavigator.simple(

                currentRoute: AppLocalizations.of(context)!.breadcrumb,
                breadButtonType: BreadButtonType.shaped,
                routNameList: [
                  '/panelBreadCrumbSample',
                  '/esRecoverPassword',
                  '/esSignin',
                ],
              ),
            ]
          )),
          title: AppLocalizations.of(context)!.staticbreadcrumb,
          information:
          "It is static bredcrumb  located in: \n es_flutter_component/lib/components/es_bread_crumb/static_bread_crumb_navigator.dart'\n and is used as: \n "
              "first \n navigatorObservers: [AppNavigatorObserver()], \n "
              "should be added in the MaterialApp of the main.dart file  \n "
              "Then \n set routes like : \n "
              """class PanelBreadCrumbSample extends StatelessWidget {
                   static const routeName = '/panelBreadCrumbSample'; ..."""
              """ StaticBreadCrumbNavigator.simple(

                currentRoute: AppLocalizations.of(context)!.breadcrumb,
                breadButtonType: BreadButtonType.shaped,
                routNameList: [
                  '/panelBreadCrumbSample',
                  '/esRecoverPassword',
                  '/esSignin',
                ],
              ),"""),
      ContainerItems(
          widget: Container(
              height: _height,
              child: Column(
            children: [
              BreadCrumbNavigator.shaped(
                currentRoute: AppLocalizations.of(context)!.components,
                breadButtonType: BreadButtonType.shaped,
                padding: StructureBuilder.dims!.h1Padding,
              ),
              EsVSpacer(
                big: true,
              ),
              BreadCrumbNavigator.shaped(
                currentRoute: AppLocalizations.of(context)!.components,
                breadButtonType: BreadButtonType.shaped,
                padding: StructureBuilder.dims!.h2Padding,
              ),
              EsVSpacer(
                big: true,
              ),
              BreadCrumbNavigator.shaped(
                currentRoute: AppLocalizations.of(context)!.components,
                breadButtonType: BreadButtonType.shaped,
                padding: StructureBuilder.dims!.h3Padding,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.breadcrumbwithsolidstructureindifferentsizes,
          information:
              "these are bredcrumbs in different sizes located in: \n es_flutter_component/lib/components/es_bread_crumb/bread_crumb_navigator.dart'\n and is used as: \n "
              "first \n navigatorObservers: [AppNavigatorObserver()], \n "
              "should be added in the MaterialApp of the main.dart file  \n "
              "Then \n set route as \n "
                  """class PanelBreadCrumbSample extends StatelessWidget {
                   static const routeName = '/panelBreadCrumbSample'; ..."""
              """ BreadCrumbNavigator.shaped(
                    currentRoute: 'AppLocalizations.of(context)!.breadcrumb,
                    breadButtonType: BreadButtonType.shaped,
                    padding: StructureBuilder.dims!.h2Padding,
                  ),\n 
              and finally navigate to other pages by \n 
               Navigator.push(context, PanelLabelSample.getRoute());"""),
      ContainerItems(
          widget: Container(
              height: _height,
              child: Column(
            children: [
              BreadCrumbNavigator(
                currentRoute: AppLocalizations.of(context)!.components,
              ),
              EsVSpacer(big: true,),
              BreadCrumbNavigator.simple(
                currentRoute: AppLocalizations.of(context)!.components,
                suffix: EsHeader(
                  " > ",
                  color: StructureBuilder.styles!.primaryDarkColor,
                ),
              ),
              EsVSpacer(big: true,),
              BreadCrumbNavigator.simple(
                currentRoute: AppLocalizations.of(context)!.components,
                suffix: EsHeader(
                  "  ",
                  color: StructureBuilder.styles!.primaryDarkColor,
                ),
              ),
              EsVSpacer(big: true,),
              BreadCrumbNavigator.simple(
                currentRoute: AppLocalizations.of(context)!.components,
                suffix: EsHeader(
                  " | ",
                  color: StructureBuilder.styles!.primaryDarkColor,
                ),
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.breadcrumbwithtypingelementsseparator,
          information:
          "these are breadcrumbs with typing elements seprator located in: \n es_flutter_component/lib/components/es_bread_crumb/bread_crumb_navigator.dart'\n and is used as: \n "
              "first \n navigatorObservers: [AppNavigatorObserver()], \n "
              "should be added in the MaterialApp of the main.dart file  \n "
              "Then \n set route as \n "
              """class PanelBreadCrumbSample extends StatelessWidget {
                   static const routeName = '/panelBreadCrumbSample'; ..."""
              """ BreadCrumbNavigator.simple(
                currentRoute: AppLocalizations.of(context)!.components,
                suffix: EsHeader(
                  " > ",
                  color: StructureBuilder.styles!.primaryDarkColor,
                ),
              ), \n 
              and finally navigate to other pages by \n 
               Navigator.push(context, PanelLabelSample.getRoute());"""),
      ContainerItems(
          widget: Container(
              height: _height,
              child: Column(
            children: [
              BreadCrumbNavigator.icon(
                currentRoute: AppLocalizations.of(context)!.components,
                breadButtonType: BreadButtonType.icon,
                rtlSuffixIcon: EsSvgIcon("packages/es_flutter_components/assets/svgs/CaretLeft.svg",
                size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryDarkColor,
                ),
                ltrSuffixIcon: EsSvgIcon("packages/es_flutter_components/assets/svgs/CaretRight.svg",
                  size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryDarkColor,),

              ),
              EsVSpacer(big: true,),
              BreadCrumbNavigator.icon(
                currentRoute: AppLocalizations.of(context)!.components,
                breadButtonType: BreadButtonType.icon,
                rtlSuffixIcon: EsSvgIcon("packages/es_flutter_components/assets/svgs/CaretCircleLeft.svg",
                size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryDarkColor,
                ),

                ltrSuffixIcon: EsSvgIcon("packages/es_flutter_components/assets/svgs/CaretCircleRight.svg",
                  size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryDarkColor,),

              ),
              EsVSpacer(big: true,),
              BreadCrumbNavigator.icon(
                currentRoute: AppLocalizations.of(context)!.components,
                breadButtonType: BreadButtonType.icon,
                rtlSuffixIcon: EsSvgIcon("packages/es_flutter_components/assets/svgs/CaretDoubleLeft.svg",
                size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryDarkColor,
                ),
                ltrSuffixIcon: EsSvgIcon("packages/es_flutter_components/assets/svgs/CaretDoubleRight.svg",
                  size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryDarkColor,),

              ),
            ],
          )
          ),
          title: AppLocalizations.of(context)!.breadcrumbwithiconseparator,
          information:
          "these are breadcrumbs with icon separator located in: \n es_flutter_component/lib/components/es_bread_crumb/bread_crumb_navigator.dart'\n and is used as: \n "
              "first \n navigatorObservers: [AppNavigatorObserver()], \n "
              "should be added in the MaterialApp of the main.dart file  \n "
              "Then \n set route as \n "
              """class PanelBreadCrumbSample extends StatelessWidget {
                   static const routeName = '/panelBreadCrumbSample'; ..."""
              """ BreadCrumbNavigator.icon(
                currentRoute: AppLocalizations.of(context)!.components,
                breadButtonType: BreadButtonType.icon,
                rtlSuffixIcon: EsSvgIcon('packages/es_flutter_component/assets/svgs/CaretLeft.svg",
                size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.primaryDarkColor,
                ),
                ltrSuffixIcon: EsSvgIcon('packages/es_flutter_component/assets/svgs/CaretRight.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.primaryDarkColor,),

              ),\n 
              and finally navigate to other pages by \n 
               Navigator.push(context, PanelLabelSample.getRoute());"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                BreadCrumbNavigator(currentRoute: AppLocalizations.of(context)!.components),
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.breadcrumbtitle,
                ),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
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
