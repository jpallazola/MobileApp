import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'parking_lot_map_model.dart';
export 'parking_lot_map_model.dart';

class ParkingLotMapWidget extends StatefulWidget {
  const ParkingLotMapWidget({Key? key}) : super(key: key);

  @override
  _ParkingLotMapWidgetState createState() => _ParkingLotMapWidgetState();
}

class _ParkingLotMapWidgetState extends State<ParkingLotMapWidget> {
  late ParkingLotMapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ParkingLotMapModel());
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
            'Parking Lot Map',
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
                borderRadius: BorderRadius.circular(0),
                child: Image.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/better-campus-mwh8h4/assets/6jajkua0p20d/markedFullMao.png',
                  width: 393,
                  height: 430,
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 18,
                color: Color(0xFF1A3AFD),
              ),
              Text(
                'Map Legend',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 60,
                    child: VerticalDivider(
                      thickness: 1,
                      color: FlutterFlowTheme.of(context).accent4,
                    ),
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: Color(0xFF1A3AFD),
                    size: 50,
                  ),
                  Text(
                    '      All Student Parking',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 20,
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 60,
                    child: VerticalDivider(
                      thickness: 1,
                      color: FlutterFlowTheme.of(context).accent4,
                    ),
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: Color(0xFFFD621A),
                    size: 50,
                  ),
                  Text(
                    '      Commuter Student Parking',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 20,
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 60,
                    child: VerticalDivider(
                      thickness: 1,
                      color: FlutterFlowTheme.of(context).accent4,
                    ),
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: Color(0xFFFBA90C),
                    size: 50,
                  ),
                  Text(
                    '      Reserved Parking',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 20,
                        ),
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
