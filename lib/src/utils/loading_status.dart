abstract class LoadingStatus {
  const LoadingStatus();
}

class IdleStatus extends LoadingStatus {
  const IdleStatus();
}

class InProgressStatus extends LoadingStatus {
  const InProgressStatus();
}

class SuccessStatus extends LoadingStatus {
  const SuccessStatus();
}

class FailedStatus extends LoadingStatus {
  final dynamic error;

  const FailedStatus({this.error});
}
