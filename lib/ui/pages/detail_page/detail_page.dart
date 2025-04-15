import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:pokedex/application/usecases/pokemon_provider.dart';
import 'package:pokedex/infrastructure/device/device_size_provider.dart';

class DetailPage extends ConsumerStatefulWidget {
  final int id;
  const DetailPage({super.key, required this.id});

  @override
  ConsumerState<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends ConsumerState<DetailPage> {
  late final AudioPlayer _player;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  Future<void> _playCry(String? cryUrl) async {
    if (cryUrl == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('鳴き声が存在しません')),
      );
      return;
    }

    try {
      await _player.setUrl(cryUrl);
      await _player.play();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('再生に失敗: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = ref.read(deviceSizeProvider(context));
    final height = size.height;
    final width = size.width;

    final pokemonInfoWidget = ref.watch(pokemonProvider(widget.id)).when(
          data: (pokemon) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                iconTheme: const IconThemeData(color: Colors.white),
                actions: [SizedBox(width: width / 5)],
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("No.${pokemon.id}",
                        style: const TextStyle(color: Colors.white)),
                    const SizedBox(width: 10),
                    Text(pokemon.name,
                        style: const TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              // backgroundColor: const Color.fromRGBO(246, 124, 86, 1),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: CachedNetworkImage(
                      imageUrl:
                          pokemon.sprites.other.officialArtwork.frontDefault,
                      height: height / 4,
                      width: width,
                      placeholder: (context, url) =>
                          Image.asset('assets/images/ditto_transparent.png'),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () => _playCry(pokemon.cries.latest),
                    icon: const Icon(Icons.volume_up),
                    label: const Text('鳴き声'),
                  ),
                  const SizedBox(height: 16),
                  _infoBlock(height, width, 'Height: ${pokemon.height}'),
                  _infoBlock(height, width, 'Weight: ${pokemon.weight}'),
                  _infoBlock(height, width,
                      'Types: ${pokemon.types.map((e) => e.type.name).join(', ')}'),
                ],
              ),
            );
          },
          error: (err, _) =>
              Scaffold(body: Center(child: Text(err.toString()))),
          loading: () =>
              const Scaffold(body: Center(child: CircularProgressIndicator())),
        );

    return pokemonInfoWidget;
  }

  Widget _infoBlock(double height, double width, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: const Color.fromARGB(255, 214, 214, 214),
        height: height / 15,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Center(child: Text(text)),
      ),
    );
  }
}
