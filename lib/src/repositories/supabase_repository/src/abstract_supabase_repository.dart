part of '../supabase_repository.dart';

abstract class ISupabaseRepository {
  Future<void> registerUser(
      {required String email, required String password, required String name});

  Future<AuthResponse> loginUser(
      {required String email, required String password});

  Future<void> loginUserWithGoogle();

  Future<void> loginUserWithFacebook();

  Future<void> logoutUser();

  Future<void> resetPasswordByEmail({required String email});

  Future<void> updateUserData({required String name, required String email});

  Stream<dynamic> getProfile();
}
