import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'residence_map_model.dart';
export 'residence_map_model.dart';

class ResidenceMapWidget extends StatefulWidget {
  const ResidenceMapWidget({Key? key}) : super(key: key);

  @override
  _ResidenceMapWidgetState createState() => _ResidenceMapWidgetState();
}

class _ResidenceMapWidgetState extends State<ResidenceMapWidget> {
  late ResidenceMapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResidenceMapModel());
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
            'Residential Campus Map',
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
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/better-campus-mwh8h4/assets/wlkqt0zufmpl/residenceMap.png',
                  width: 395,
                  height: 262,
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 17,
                color: Color(0xCC4860F0),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Residential Buildings',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 16,
                        ),
                  ),
                ],
              ),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Alliance Hall\nBill of Rights Hall\nColonial Square\nConstitution Hall\nEnterprise Hall\nEstabrook Hall\nGraduate Residence Hall\nNassau Hall\nThe Netherlands\nStuyvesant Hall\nSuffolk Hall\nVander Poel Hall',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [],
                      ),
                      Text(
                        '   34\n35\n46\n36\n39\n37\n74\n44\n33\n32\n45\n38',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                thickness: 10,
                color: Color(0xCC4860F0),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Non-Residential Buildings',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 16,
                        ),
                  ),
                ],
              ),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Bill Edwards Stadium\nField Hockey Stadium\nFitness Center\nHofstra Dome\nHofstra University Club/ David S. Mack Hall\nHofstra USA\nHuman Resources Center\nOak Street Center\nPedestrian Bridges\nPhysical Education Center/ Swim Center\nPride Park\nPublic Safety & Information Center\nSkodnek Business Development Center\nSoccer Stadium\nSports and Exhibition Complex\nStudent Center\nUniversity Field\nWellness & Campus Living Center\nZucker School of Medicine',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '75\n77\n47\n48\n53\n40\n52\n43\n30, 69, 70\n49\n80\n54\n43\n71\n51\n31\n72\n42\n50',
                            textAlign: TextAlign.end,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                    ],
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
