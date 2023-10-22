import 'package:flutter_riverpod/flutter_riverpod.dart';

// PokedexListRepositoryのプロバイダー
/// アプリ起動時 or テスト時に本プロバイダーを override して使用してください
final pokedexListRepositoryProvider = Provider<RepositoryInterface>(
  // 初期値を RepositoryInterface Impl にしてしまうと、
  // ドメイン層がインフラ層に依存してしまうことになるので、
  // どの層にも依存させないために未実装エラーを返却するようにしておく
  (_) => throw UnimplementedError(),
);

abstract class RepositoryInterface<T> {
  Future<T> fetch();
}
