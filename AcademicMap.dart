import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'acedemic_map_model.dart';
export 'acedemic_map_model.dart';

class AcedemicMapWidget extends StatefulWidget {
  const AcedemicMapWidget({Key? key}) : super(key: key);

  @override
  _AcedemicMapWidgetState createState() => _AcedemicMapWidgetState();
}

class _AcedemicMapWidgetState extends State<AcedemicMapWidget> {
  late AcedemicMapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AcedemicMapModel());
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
            'Academic Campus Map',
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
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/better-campus-mwh8h4/assets/hqrlupcdg5on/campusmap.png',
                  width: 403,
                  height: 213,
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 17,
                color: Color(0xCC4860F0),
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
                            'Adams Hall\nAdams Playhouse\nAxinn Library\nBarnard Hall\nBerliner Hall\nBernon Hall Admission Center\nBreslin Hall\nBrower Hall\nCalkins Hall\nCV Starr Hall\nDavison Hall\nDunkin\' on the Quad\nEmily & Jerry Spiegel Theater\nEmily Lowe Hall\nGallon Wing\nGittleson Hall\nGuthart Cultural Center Theater\nGuthart Hall for Innovation & Discovery\nHagedorn Hall\nHauser Hall\nHeger Hall\nHofstra Hall\nHofstra Law Library\nLaw School\nLawerence Herbert School of Communications\nMargiotta Hall\nMason Hall\nMcEwen Hall\nMemorial Hall\nMonroe Lecture Center\nPhillips Hall\nRoosevelt Hall\nScience & Innovation Center\nShapiro Family Hall\nWeed Hall\nWeller Hall',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Text(
                        '          25\n12\n3\n10\n61\n27\n23\n11\n14\n60\n8\n15\n13\n9\n5\n63\n3\n79\n55\n2\n4\n7\n22\n21\n20\n57\n5\n17\n1\n62\n6\n19\n81\n73\n26\n16',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium,
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
