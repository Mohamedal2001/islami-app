import 'package:flutter/material.dart';
import 'package:islami_app/modules/radio/model/Radio.dart';
import 'package:provider/provider.dart';
import 'RadioProvider/RadioProvider.dart'; // Import your RadioProvider

class Radiopage extends StatelessWidget {
  const Radiopage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RdioProvider>(context, listen: false);
    provider.fetchRadio();
    return Scaffold(
      body: Consumer<RdioProvider>(
        builder: (context, provider, child) {
          List<RadioModel>? radios = provider.radios;
          if (provider.isLoading) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.black,
            )); // Show loading indicator
          } else if (provider.radios == null || provider.radios!.isEmpty) {
            return const Center(
                child: Text(
                    'لايوجد بيانات')); // Show message if no data is available
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 20,
              children: [
                Center(
                  child: Image.asset('assets/image/radio_image.png'),
                ),
                Center(
                  child: Text(
                    "${radios![provider.index].name}" ?? 'لايوجد',
                    // Show the first radio name
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {
                          if (provider.index == 0) {
                          } else {
                       provider.left();
                     //       provider.change(provider.index);
                          }
                        },
                        icon: const Icon(
                          Icons.arrow_left_sharp,
                          size: 120,
                        )),
                    IconButton(
                        onPressed: () {
                          provider.isplay?
                          provider.play(provider.index):
                          provider.pause();
                        },
                        icon: provider.isplay
                            ? const Icon(
                                Icons.play_arrow,
                                size: 90,
                              )
                            : const Icon(
                                Icons.pause,
                                size: 90,
                              )),
                    IconButton(
                        onPressed: () {
                          if (provider.index == radios.length - 1) {}
                          provider.right();
                      //    provider.change(provider.index);
                        },
                        icon: const Icon(
                          Icons.arrow_right_sharp,
                          size: 120,
                        )),
                  ],
                )
              ],
            );
          }
        },
      ),
    );
  }
}
