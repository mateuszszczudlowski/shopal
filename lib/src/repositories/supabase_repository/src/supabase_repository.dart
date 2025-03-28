part of '../supabase_repository.dart';

abstract class SupabaseAuthException implements Exception {
  const SupabaseAuthException(this.error);
  final Object error;
}

class SupabaseRequestFailure extends SupabaseAuthException {
  const SupabaseRequestFailure(super.error);
}

class SupabaseRepository implements ISupabaseRepository {
  String mainUrl =
      'https://moxeubbwcknxpiyoncow.supabase.co/storage/v1/object/public/';
  @override
  Future<void> registerUser(
      {required String email,
      required String password,
      required String name}) async {
    try {
      await client.supabaseClient.auth
          .signUp(email: email, password: password, data: {
        'user_name': name,
      });
    } catch (error, stackTrace) {
      log('ERROR: $error');
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    }
  }

  @override
  Future<AuthResponse> loginUser(
      {required String email, required String password}) async {
    try {
      final res = await client.supabaseClient.auth.signInWithPassword(
        email: email,
        password: password,
      );
      return res;
    } on AuthException catch (exception, stackTrace) {
      Error.throwWithStackTrace(SupabaseRequestFailure(exception), stackTrace);
    } catch (exception, stackTrace) {
      Error.throwWithStackTrace(SupabaseRequestFailure(exception), stackTrace);
    }
  }

  @override
  Future<void> loginUserWithGoogle() async {
    try {
      // await client.supabaseClient.auth.signInWithOAuth(Provider.google);
    } on AuthException catch (exception, stackTrace) {
      Error.throwWithStackTrace(SupabaseRequestFailure(exception), stackTrace);
    } catch (exception, stackTrace) {
      Error.throwWithStackTrace(SupabaseRequestFailure(exception), stackTrace);
    }
  }

  @override
  Future<void> resetPasswordByEmail({required String email}) async {
    try {
      await client.supabaseClient.auth.resetPasswordForEmail(email);
    } on AuthException catch (exception, stackTrace) {
      log(exception.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(exception), stackTrace);
    } catch (exception, stackTrace) {
      Error.throwWithStackTrace(SupabaseRequestFailure(exception), stackTrace);
    }
  }

  @override
  Future<void> loginUserWithFacebook() async {
    try {
      // await client.supabaseClient.auth.signInWithOAuth(Provider.facebook);
    } on AuthException catch (exception, stackTrace) {
      Error.throwWithStackTrace(SupabaseRequestFailure(exception), stackTrace);
    } catch (exception, stackTrace) {
      Error.throwWithStackTrace(SupabaseRequestFailure(exception), stackTrace);
    }
  }

  @override
  Future<void> logoutUser() async {
    try {
      await client.supabaseClient.auth.signOut();
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    }
  }

  @override
  Stream<dynamic> getProfile() async* {
    try {
      final userId = client.supabaseClient.auth.currentUser!.id;

      final res = client.supabaseClient
          .from('profile')
          .select()
          .eq('id', userId)
          .single()
          .asStream();

      yield res;
    } on PostgrestException catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    } catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    }
  }

  @override
  Future<void> updateUserData(
      {required String? name, required String? email}) async {
    try {
      final userId = client.supabaseClient.auth.currentUser!.id;
      if (name != null && name != '') {
        await client.supabaseClient
            .from('profile')
            .update({'user_name': name}).match({'id': userId}).select();

        await client.supabaseClient.auth.updateUser(
          UserAttributes(data: {'user_name': name}),
        );
      }

      if (email != null && email != '') {
        await client.supabaseClient.auth.updateUser(
          UserAttributes(email: email),
        );
      }
    } on PostgrestException catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    } catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    }
  }

  @override
  Stream<dynamic> getSpecialistList() {
    try {
      final res = client.supabaseClient.from('specialist').select().asStream();

      return res;
    } on PostgrestException catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    } catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    }
  }

  @override
  Future<String> getSpecialistAvatar() async {
    try {
      final res = await client.supabaseClient.storage
          .from('specialist_avatar')
          .list(
              path: 'a6a3a2d1-c2ea-41aa-b262-3d607a7201b9/',
              searchOptions: const SearchOptions(limit: 3));

      String imgUrl =
          '$mainUrl/specialist_avatar/a6a3a2d1-c2ea-41aa-b262-3d607a7201b9/${res[1].name}';

      return imgUrl;
    } on PostgrestException catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    } catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    }
  }

  @override
  Stream<dynamic> getOpinions(String id) {
    try {
      final res = client.supabaseClient
          .from('specialist')
          .select(
            '*, opinions(*), opinions_responses(*), opening_hours(*), social_media_links(*), services(*), portfolio(*)',
          )
          .eq('id', id)
          .asStream();

      return res;
    } on PostgrestException catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    } catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    }
  }

  @override
  Stream<dynamic> getOpinionResponse(String id) {
    try {
      final res = client.supabaseClient
          .from('opinions')
          .select(
            '*, opinions_responses(*)',
          )
          .eq('id', id)
          .asStream();

      return res;
    } on PostgrestException catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    } catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    }
  }

  @override
  Stream<dynamic> searchSpecialist(String searchTerm) {
    try {
      final res = client.supabaseClient
          .from('specialist')
          .select()
          .ilike('name', '%$searchTerm%')
          .asStream();

      return res;
    } on PostgrestException catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    } catch (error, stackTrace) {
      log(error.toString());
      Error.throwWithStackTrace(SupabaseRequestFailure(error), stackTrace);
    }
  }
}
