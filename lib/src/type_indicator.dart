class IndicatorModel {
  final double _width;
  final double _widthAnimation;
  final double _height;
  final double _heightAnimation;
  final double _padding;
  final double _paddingAnimation;

  const IndicatorModel({
    required double width,
    required double height,
    required double spaceBetween,
  })   : _height = height,
        _width = width,
        _widthAnimation = width,
        _heightAnimation = height,
        _paddingAnimation = spaceBetween,
        _padding = spaceBetween;

  const IndicatorModel.animation({
    required double width,
    double? widthAnimation,
    required double height,
    double? heightAnimation,
    required double spaceBetween,
    double? spaceBetweenAnimation,
  })  : _height = height,
        _width = width,
        _widthAnimation = widthAnimation ?? width + 20,
        _heightAnimation = heightAnimation ?? height,
        _paddingAnimation = spaceBetweenAnimation ?? spaceBetween + 3,
        _padding = spaceBetween;

  double get width => _width;
  double get widthExpanded => _widthAnimation;
  double get height => _height;
  double get heightExpanded => _heightAnimation;
  double get padding => _padding;
  double get paddingExpanded => _paddingAnimation;
}
