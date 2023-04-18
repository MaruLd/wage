import 'package:equatable/equatable.dart';

class FilterParameters extends Equatable {
  final List<dynamic> parameterList;

  const FilterParameters({required this.parameterList});

  @override
  List<Object?> get props => [parameterList];
}
