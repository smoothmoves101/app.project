import '/flutter_flow/flutter_flow_util.dart';
import 'welcomes_widget.dart' show WelcomesWidget;
import 'package:flutter/material.dart';

class WelcomesModel extends FlutterFlowModel<WelcomesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
