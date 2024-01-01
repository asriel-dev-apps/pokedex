/// Repository Interface
abstract class IPokedexRepository<T> {
  Future<T> get();
}
