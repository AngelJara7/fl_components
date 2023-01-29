import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider and Checks"),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled ? (value) {
              _sliderValue = value;
              setState(() {});
            }
            : null
          ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text("Habilitar Slider"),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() {_sliderEnabled = value ?? true;})
          ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text("Habilitar Slider"),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() {_sliderEnabled = value;})
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const AssetImage("assets/Imagen 1.png"),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      )
    );
  }
}
