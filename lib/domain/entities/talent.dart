import 'package:equatable/equatable.dart';

class Talents extends Equatable {
  const Talents({
    required this.auto,
    required this.skill,
    required this.burst,
  });

  final int auto;
  final int skill;
  final int burst;

  @override
  List<Object?> get props => [auto, skill, burst];

  bool get isAutoMax => auto >= 10;
  bool get isSkillMax => skill >= 10;
  bool get isBurstMax => burst >= 10;
  bool get isMaxTalents => isAutoMax && isSkillMax && isBurstMax;

  double get talentProgress {
    const maxTotal = 30; // 10 + 10 + 10
    final currentTotal = auto + skill + burst;
    return currentTotal / maxTotal;
  }
}

