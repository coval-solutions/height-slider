<h1 align="center">Height Slider Widget for Flutter</h1>
<p align="center">
  <img src="https://api.codemagic.io/apps/5e355cd6cb1395826e888d78/5e355cd6cb1395826e888d77/status_badge.svg" />
  <a href="https://pub.dev/packages/height_slider">
    <img alt="Pub Version" src="https://img.shields.io/pub/v/height_slider">
  </a>
  <a href="https://raw.githubusercontent.com/coval-solutions/weight-slider/master/LICENSE">
    <img alt="License: MIT" src="https://img.shields.io/badge/license-MIT-yellow.svg" target="_blank" />
  </a>
</p>

## ✨ Demo
<p align="center"><img width="20%" src="https://raw.githubusercontent.com/coval-solutions/height-slider/master/images/1.gif" alt="height slider"/></p>

## 🚀 Usage
```dart
class _MyHomePageState extends State<MyHomePage> {
  int height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: HeightSlider(
          height: height,
          onChange: (val) => setState(() => height = val),
        ),
      ),
    );
  }
}
```

You can also use your own person SVG, by passing the path through the parameter `personImagePath`.

## 📝 License
This project is [MIT](https://raw.githubusercontent.com/coval-solutions/height-slider/master/LICENSE) licensed.