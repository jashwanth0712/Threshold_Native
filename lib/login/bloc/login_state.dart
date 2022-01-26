part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.status = FormzStatus.pure,
    this.username = const Username.pure(),
    this.password = const Password.pure(),
    this.mobile = const Mobile.pure(),
    this.role = Roles.student,
  });

  final FormzStatus status;
  final Username username;
  final Password password;
  final Mobile mobile;
  final Roles role;

  LoginState copyWith({
    FormzStatus? status,
    Username? username,
    Password? password,
    Mobile? mobile,
    Roles? role,
  }) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
      mobile: mobile ?? this.mobile,
      role: role ?? this.role,
    );
  }

  @override
  List<Object> get props => [
        status,
        username,
        password,
        mobile,
      ];
}
