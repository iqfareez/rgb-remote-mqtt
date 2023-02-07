import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _brokerUrlController = TextEditingController();
  final TextEditingController _brokerPortController = TextEditingController();

  bool _isConnected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _brokerUrlController,
                            decoration: const InputDecoration(
                              labelText: 'MQTT Broker URL',
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: _brokerPortController,
                            decoration: const InputDecoration(
                              labelText: 'MQTT Port (1883)',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    ElevatedButton(
                        onPressed: _isConnected
                            ? () {
                                // disconnect from broker
                              }
                            : () {
                                var broker = _brokerUrlController.text.trim();
                                var port =
                                    int.tryParse(_brokerPortController.text) ??
                                        1883;

                                if (broker.isEmpty) return;

                                FocusScope.of(context).unfocus();

                                setState(() {
                                  _isConnected = true;
                                });

                                print(broker);
                                print(port);
                              },
                        child: Text(_isConnected ? 'Disconnect' : 'Connect')),
                    const SizedBox(height: 5),
                    Text(
                        'Status: ${_isConnected ? "Connected" : "Disconnected"}'),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ColorPicker(
              pickerColor: Colors.blue,
              onColorChanged: (color) => print(color),
              labelTypes: const [ColorLabelType.rgb],
              colorPickerWidth: 233,
              pickerAreaHeightPercent: 1,
              paletteType: PaletteType.hueWheel,
              enableAlpha: false,
            ),
          ),
        ],
      ),
    );
  }
}
