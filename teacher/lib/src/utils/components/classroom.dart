import 'package:flutter/material.dart';

typedef TeacherBuilder =
    Widget Function({
      Widget? child,
      required Size size,
      required BuildContext context,
    });

class Classroom extends StatefulWidget {
  final TeacherBuilder teacherBuilder;
  const Classroom({super.key, required this.teacherBuilder});

  @override
  State<Classroom> createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Material(child: widget.teacherBuilder(context: context, child: ));
  }
}
