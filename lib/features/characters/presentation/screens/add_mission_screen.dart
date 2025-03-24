import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marvel_mission_manager/core/constants/strings.dart';
import 'package:marvel_mission_manager/core/enums/mission_priority.dart';
import 'package:marvel_mission_manager/core/locator/locator.dart';
import 'package:marvel_mission_manager/core/utils/validators.dart';
import 'package:marvel_mission_manager/core/widgets/app_button.dart';
import 'package:marvel_mission_manager/core/widgets/back_button.dart';
import 'package:marvel_mission_manager/core/widgets/custom_app_bar.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/character.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/mission.dart';
import 'package:marvel_mission_manager/features/characters/domain/usecases/add_mission.dart';
import 'package:marvel_mission_manager/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:marvel_mission_manager/features/characters/presentation/widgets/mission_priority_picker.dart';
import 'package:uuid/uuid.dart';

class AddMissionScreen extends StatefulWidget {
  const AddMissionScreen({super.key, required this.character});
  final Character character;

  @override
  State<AddMissionScreen> createState() => _AddMissionScreenState();
}

class _AddMissionScreenState extends State<AddMissionScreen> {
  final _missionNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var _selectedPriority = MissionPriority.low;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leading: AppBackButton()),
      body: Center(
        child: SizedBox(
          width: 0.95.sw.clamp(0, 500), // 95% of screen width, max 500
          height: 0.5.sh.clamp(0, 650), // 40% of screen height, max 650
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(15).r,
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    TextFormField(
                      controller: _missionNameController,
                      validator: Validators.isEmpty,
                      decoration: InputDecoration(
                        hintText: Strings.missionName,
                      ),
                    ),
                    const Spacer(flex: 2),
                    Row(
                      children: [
                        Spacer(),
                        Flexible(
                          flex: 3,
                          child: MissionPriorityPicker(
                            onChanged:
                                (priority) => _selectedPriority = priority,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    const Spacer(flex: 2),
                    AppButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          getIt<CharactersBloc>().add(
                            CharactersAddMissionEvent(
                              AddMissionParams(
                                characterId: widget.character.id,
                                mission: Mission(
                                  Uuid().v4(),
                                  _missionNameController.text,
                                  false,
                                  _selectedPriority,
                                ),
                              ),
                            ),
                          );

                          context.pop(
                            _isFatigueOverLimit(widget.character.missions, 100),
                          );
                        }
                      },
                      title: Strings.create,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  int _sumUncompletedMissionsFatigue(List<Mission> missions) {
    return missions
        .where((mission) => !mission.isCompleted)
        .fold(0, (sum, mission) => sum + mission.priority.getRequiredFatigue());
  }

  bool _isFatigueOverLimit(List<Mission> missions, int limit) {
    return _sumUncompletedMissionsFatigue(missions) > limit;
  }
}
