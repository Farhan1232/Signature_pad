// ignore_for_file: unused_field



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:signature/signature.dart';

class signaturepad extends StatefulWidget {
  const signaturepad({super.key});

  @override
  State<signaturepad> createState() => _signaturepadState();
}

class _signaturepadState extends State<signaturepad> {
  final SignatureController _controller = SignatureController(
    penColor: Colors.black,
    strokeCap: StrokeCap.round,
  );


  late final height = MediaQuery.of(context).size.height * 1;

  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Signature pad'),
          ),
        ),
        backgroundColor:Color.fromARGB(255, 224, 208, 208),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Signature(
                  controller: _controller,
                  height: height * 0.6,
                  backgroundColor: Colors.white,
                     
                ),
              ),
              
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                        child: Icon(Icons.undo),
                        onPressed: () {
                          _controller.undo();
                        }),
                    SizedBox(
                      width: 20.w,
                    ),
                    FloatingActionButton(
                        child: Icon(Icons.clear),
                        onPressed: () {
                          _controller.clear();
                        }),
                    SizedBox(
                      width: 20.w,
                    ),
                    FloatingActionButton(
                        child: Icon(Icons.redo),
                        onPressed: () {
                          _controller.redo();
                        }),
                    SizedBox(
                      width: 20.w,
                    ),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
  }

