import 'package:flutter/material.dart';

class HeightSliderInternal extends StatelessWidget {
  final int height;
  final String unit;
  final Color primaryColor;
  final Color accentColor;
  final Color currentHeightTextColor;
  final Color sliderCircleColor;

  const HeightSliderInternal(
      {Key? key,
      required this.height,
      required this.unit,
      required this.primaryColor,
      required this.accentColor,
      required this.currentHeightTextColor,
      required this.sliderCircleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SliderLabel(
            height: this.height,
            unit: this.unit,
            currentHeightTextColor: this.currentHeightTextColor,
          ),
          Row(
            children: <Widget>[
              SliderCircle(sliderCircleColor: this.sliderCircleColor),
              Expanded(child: SliderLine(primaryColor: this.primaryColor)),
            ],
          ),
        ],
      ),
    );
  }
}

class SliderLabel extends StatelessWidget {
  final int height;
  final String unit;
  final Color currentHeightTextColor;

  const SliderLabel(
      {Key? key,
      required this.height,
      required this.unit,
      required this.currentHeightTextColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "$height $unit",
        style: TextStyle(
          fontSize: 16.0,
          color: this.currentHeightTextColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class SliderLine extends StatelessWidget {
  final Color primaryColor;

  const SliderLine({Key? key, required this.primaryColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: List.generate(
          40,
          (i) => Expanded(
                child: Container(
                  height: 2.0,
                  decoration: BoxDecoration(
                      color: i.isEven ? this.primaryColor : Colors.white),
                ),
              )),
    );
  }
}

class SliderCircle extends StatelessWidget {
  final Color sliderCircleColor;

  const SliderCircle({Key? key, required this.sliderCircleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32.0,
      height: 32.0,
      decoration: BoxDecoration(
        color: this.sliderCircleColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.unfold_more,
        color: Colors.white,
        size: 0.6 * 32.0,
      ),
    );
  }
}
