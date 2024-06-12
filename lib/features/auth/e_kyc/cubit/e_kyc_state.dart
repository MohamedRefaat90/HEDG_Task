part of 'e_kyc_cubit.dart';

@immutable
sealed class EKycState {}

final class EKycInitial extends EKycState {}

final class RefreshRegestrationStepper extends EKycState {}
