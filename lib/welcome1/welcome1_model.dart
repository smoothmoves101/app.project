import '/flutter_flow/flutter_flow_util.dart';
import 'welcome1_widget.dart' show Welcome1Widget;
import 'package:flutter/material.dart';

class Welcome1Model extends FlutterFlowModel<Welcome1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
