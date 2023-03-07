import 'package:equatable/equatable.dart';

abstract class Failurs extends Equatable {
  final String message;

  const Failurs(this.message);
  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failurs {
  const ServerFailure(super.message);
}

class LocalFailure extends Failurs {
  const LocalFailure(super.message);
}
