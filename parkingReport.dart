import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

import 'parking_report_model.dart';
export 'parking_report_model.dart';

class ParkingReportWidget extends StatefulWidget {
  const ParkingReportWidget({Key? key}) : super(key: key);

  @override
  _ParkingReportWidgetState createState() => _ParkingReportWidgetState();
}

class _ParkingReportWidgetState extends State<ParkingReportWidget> {
  late ParkingReportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ParkingReportModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF331FEA),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Report Parking',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/better-campus-mwh8h4/assets/6jajkua0p20d/markedFullMao.png',
                  width: 401,
                  height: 412,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Which lot are you reporting for?                ',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 20,
                    ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              FlutterFlowDropDown<String>(
                controller: _model.dropDownValueController ??=
                    FormFieldController<String>(null),
                options: FFAppState().parkingLots,
                onChanged: (val) => setState(() => _model.dropDownValue = val),
                width: 300,
                height: 50,
                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                hintText: 'Please select...',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2,
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderWidth: 2,
                borderRadius: 8,
                margin: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
                hidesUnderline: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Text(
                'What is the capacity of the lot?',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 15,
                    ),
              ),
              Text(
                functions
                    .convertStringtoInt(_model.sliderValue?.toString())
                    .toString(),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 20,
                    ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Slider(
                activeColor: Color(0xFF393EEF),
                min: 0,
                max: 100,
                value: _model.sliderValue ??= 0,
                label: _model.sliderValue.toString(),
                divisions: 1000,
                onChanged: (newValue) {
                  newValue = double.parse(newValue.toStringAsFixed(2));
                  setState(() => _model.sliderValue = newValue);
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Estimated Lot Capacity: ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 15,
                        ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  LinearPercentIndicator(
                    percent: functions
                        .convertStringtoInt(_model.sliderValue?.toString())!
                        .toDouble(),
                    lineHeight: 30,
                    animation: true,
                    animateFromLastPercent: true,
                    progressColor: Color(0xFF1A3AFD),
                    backgroundColor: FlutterFlowTheme.of(context).accent4,
                    center: Text(
                      formatNumber(
                        _model.sliderValue,
                        formatType: FormatType.percent,
                      ),
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Outfit',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
