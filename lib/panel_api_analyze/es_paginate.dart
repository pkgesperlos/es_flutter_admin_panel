import 'package:flutter/material.dart';

class EsPaginate extends StatefulWidget {
  Function()? onFinish;
  Widget child;
  ScrollController listScrollController;

  EsPaginate({Key? key, this.onFinish, required this.child,
    required this.listScrollController}) : super(key: key);

  @override
  _EsPaginateState createState() => _EsPaginateState();

}

class _EsPaginateState extends State<EsPaginate>
    with AutomaticKeepAliveClientMixin<EsPaginate> {

  bool _finishFlag = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.listScrollController.jumpTo(0.0000000001,);
    });

    widget.listScrollController.addListener(() {
      double maxScroll = widget.listScrollController.position.maxScrollExtent;
      double currentScroll = widget.listScrollController.position.pixels;

      if (maxScroll - currentScroll == 0) {
        setState(() {




            widget.onFinish!();

          _finishFlag == false;



        });
      }
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;


}

