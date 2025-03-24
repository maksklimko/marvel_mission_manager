import 'package:flutter/material.dart';
import 'package:marvel_mission_manager/core/enums/mission_priority.dart';
import 'package:marvel_mission_manager/core/theme/theme.dart';

class MissionPriorityPicker extends StatefulWidget {
  const MissionPriorityPicker({super.key, this.onChanged});
  final Function(MissionPriority)? onChanged;

  @override
  State<MissionPriorityPicker> createState() => _MissionPriorityPickerState();
}

class _MissionPriorityPickerState extends State<MissionPriorityPicker> {
  var _selectedPriority = MissionPriority.low;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Container(
              width: constraints.maxWidth,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color:
                    context.appTheme.missionPriorityPickerTheme.backgroundColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children:
                    MissionPriority.values.map((e) {
                      return GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          setState(() {
                            _selectedPriority = e;
                            widget.onChanged?.call(e);
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          height: 50,
                          child: Text(
                            e.toString(),
                            style: context
                                .appTheme
                                .missionPriorityPickerTheme
                                .textStyle
                                .copyWith(color: e.getColor()),
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeInOut,
              top: _selectedPriority.index * 50 + 10,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: constraints.maxWidth - 20,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 2,
                      color:
                          context
                              .appTheme
                              .missionPriorityPickerTheme
                              .selectionColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
