import '/backend/api_requests/api_calls.dart';
import '/components/aiback_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard1_widget.dart' show Dashboard1Widget;
import 'package:flutter/material.dart';

class Dashboard1Model extends FlutterFlowModel<Dashboard1Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Aiback component.
  late AibackModel aibackModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (DviceDetails)] action in IconButton widget.
  ApiCallResponse? apiResult86d;

  @override
  void initState(BuildContext context) {
    aibackModel = createModel(context, () => AibackModel());
  }

  @override
  void dispose() {
    aibackModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
