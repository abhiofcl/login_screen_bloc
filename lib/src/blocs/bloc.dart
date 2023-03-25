import 'dart:async';
import 'validator.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  Stream<String> get email => _email.stream.transform(emailValidator);
  Stream<String> get password => _password.stream.transform(passwordValidator);
  Stream<bool> get submitValid =>
      Rx.combineLatest2(email, password, (e, p) => true);
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
  submit() {
    final validEmail = _email.value;
    final validPassword = _password.value;

    print("Email is $validEmail");
    print("Password is $validPassword");
  }

  dispose() {
    _email.close();
    _password.close();
  }
}
