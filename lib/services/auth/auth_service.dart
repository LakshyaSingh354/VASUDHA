import 'auth_provider.dart';
import 'auth_user.dart';
import 'firebase_auth_provider.dart';

class AuthService implements AuthProvider {
  final AuthProvider provider;
  AuthService(this.provider);

  factory AuthService.firebase() => AuthService(FirebaseAuthProvider(),);
  
  @override
  Future<AuthUser> createUser({
    required String email, 
    required String password,}) {
    return provider.createUser(
      email: email, 
      password: password);
  }
  
  @override
  AuthUser? get currentUser {
    return provider.currentUser;
  }
  
  @override
  Future<AuthUser> logIn({
    required String email, 
    required String password}) {
    return provider.logIn(
      email: email, 
      password: password);
  }
  
  @override
  Future<void> logOut() {
    return provider.logOut();
  }
  
  @override
  Future<void> sendEmailVerifiation() {
    return provider.sendEmailVerifiation();
  }
  
  @override
  Future<void> initialize() {
    return provider.initialize();
  }
}