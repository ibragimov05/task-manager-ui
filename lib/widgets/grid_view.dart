import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:task_manager/widgets/grid_view_container_creator.dart';

/// widget to create grid view using containers
class GriwViewCreator extends StatelessWidget {
  List<GridViewContainer> containers = [
    /// green container
    GridViewContainer(
      cWidth: 162.0,
      cHeight: 150.0,
      number: '22',
      status: 'Done',
      linearGreadiantColor: [
        const Color(0xFFA9FFEA),
        const Color(0xFF00B288),
      ],
    ),

    /// orange container
    GridViewContainer(
      cWidth: 161.0,
      cHeight: 105.0,
      number: '7',
      status: 'In progress',
      linearGreadiantColor: [
        const Color(0xFFFFD29D),
        const Color(0xFFFF9E2D),
      ],
    ),

    /// blue container
    GridViewContainer(
      cWidth: 162.0,
      cHeight: 150.0,
      number: '14',
      status: 'Waiting For Review',
      linearGreadiantColor: [
        const Color(0xFFB1EEFF),
        const Color(0xFF29BAE2),
      ],
    ),

    /// pink container
    GridViewContainer(
      cWidth: 162.0,
      cHeight: 105.0,
      number: '14',
      status: 'Ongoing',
      linearGreadiantColor: [
        const Color(0xFFFFA0BC),
        const Color(0xFFFF1B5E),
      ],
    ),
  ];

  /// griw view creator
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: 4,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(5),
        child: containers[index],
      ),
    );
  }
}
