import 'package:equatable/equatable.dart';

class Parameters extends Equatable {
  final List<dynamic> parameterList;

  const Parameters({required this.parameterList});

  @override
  List<Object?> get props => [parameterList];
}
