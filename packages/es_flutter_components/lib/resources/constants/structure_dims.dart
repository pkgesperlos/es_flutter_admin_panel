



import 'package:es_flutter_components/resources/constants/dims.dart';


class StructureDims{

  final double h0Padding;
  final double h1Padding;
  final double h2Padding;
  final double h3Padding;
  final double h0IconSize;
  final double h1IconSize;
  final double h2IconSize;
  final double h3IconSize;
  final double h0FontSize;
  final double h1FontSize;
  final double h2FontSize;
  final double h3FontSize;
  final double h4FontSize;
  final double h5FontSize;
  final double h6FontSize;
  final double bordertickness;
  final double h0BorderRadius;
  final double h1BorderRadius;
  final double h2BorderRadius;
  final double h3BorderRadius;
  final double headerButtonSize;
  final double titelButtonSize;
  final double ordinaryButtonSize;
  final double textFieldHight;

  StructureDims(
      this.h0Padding,
      this.h1Padding,
      this.h2Padding,
      this.h3Padding,
      this.h0IconSize,
      this.h1IconSize,
      this.h2IconSize,
      this.h3IconSize,
      this.h0FontSize,
      this.h1FontSize,
      this.h2FontSize,
      this.h3FontSize,
      this.h4FontSize,
      this.h5FontSize,
      this.h6FontSize,
      this.bordertickness,
      this.h0BorderRadius,
      this.h1BorderRadius,
      this.h2BorderRadius,
      this.h3BorderRadius,
      this.headerButtonSize,
      this.titelButtonSize,
      this.ordinaryButtonSize,
      this.textFieldHight,
      );

  AdditionalDimsModel additional() {
    return AdditionalDimsModel();
  }


}




class InitialDims extends StructureDims{

  InitialDims({
    h0Padding = Dims.h0Padding,
    h1Padding = Dims.h1Padding,
    h2Padding = Dims.h2Padding,
    h3Padding = Dims.h3Padding,
    h0IconSize = Dims.h0IconSize,
    h1IconSize = Dims.h1IconSize,
    h2IconSize = Dims.h2IconSize,
    h3IconSize = Dims.h3IconSize,
    h0FontSize = Dims.h0FontSize,
    h1FontSize = Dims.h1FontSize,
    h2FontSize = Dims.h2FontSize,
    h3FontSize = Dims.h3FontSize,
    h4FontSize = Dims.h4FontSize,
    h5FontSize = Dims.h5FontSize,
    h6FontSize = Dims.h6FontSize,
    bordertickness = Dims.bordertickness,
    h0BorderRadius = Dims.h0BorderRadius,
    h1BorderRadius = Dims.h1BorderRadius,
    h2BorderRadius = Dims.h2BorderRadius,
    h3BorderRadius = Dims.h3BorderRadius,
    headerButtonSize = Dims.h1FontSize,
    titelButtonSize = Dims.h2FontSize,
    ordinaryButtonSize = Dims.h3FontSize,
    textFieldHight = Dims.textFieldHigh,
  }) : super(
    h0Padding,
    h1Padding,
    h2Padding,
    h3Padding,
    h0IconSize,
    h1IconSize,
    h2IconSize,
    h3IconSize,
    h0FontSize,
    h1FontSize,
    h2FontSize,
    h3FontSize,
    h4FontSize,
    h5FontSize,
    h6FontSize,
    bordertickness,
    h0BorderRadius,
    h1BorderRadius,
    h2BorderRadius,
    h3BorderRadius,

    headerButtonSize,
    titelButtonSize,
    ordinaryButtonSize,
    textFieldHight,
  );

}


class AdditionalDimsModel{

  double primary2 = 0;


}





