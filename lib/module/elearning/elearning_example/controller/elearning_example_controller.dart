
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/elearning_example_view.dart';

class ElearningExampleController extends State<ElearningExampleView> {
    static late ElearningExampleController instance;
    late ElearningExampleView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    