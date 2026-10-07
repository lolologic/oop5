/// Represents a measurement system and its conversion factor to millimeters.
enum MeasurementSystem {
  /// Millimeters.
  mm(1),

  /// Centimeters.
  cm(10),

  /// Decimeters.
  dm(100),

  /// Meters.
  m(1000),

  /// Inches.
  inch(25.4),

  /// Feet.
  feet(304.8);

  /// The number of millimeters represented by one unit.
  final num factor;

  /// Creates a measurement system with the provided conversion [factor].
  const MeasurementSystem(this.factor);
}

/// Represents a triangle with height and width stored internally in millimeters.
class Triangle {
  double _heightInMm;
  double _widthInMm;

  /// The measurement system used for calculations such as [area].
  MeasurementSystem measurementSystem;

  //////////////////
  // Constructors //
  //////////////////

  Triangle._internal(this._heightInMm, this._widthInMm, this.measurementSystem);

  /// Creates a triangle with [height] and [width] measured in millimeters.
  factory Triangle.mm(double height, double width) => Triangle._internal(
    height * MeasurementSystem.mm.factor,
    width * MeasurementSystem.mm.factor,
    MeasurementSystem.mm,
  );

  /// Creates a triangle with [height] and [width] measured in centimeters.
  factory Triangle.cm(double height, double width) => Triangle._internal(
    height * MeasurementSystem.cm.factor,
    width * MeasurementSystem.cm.factor,
    MeasurementSystem.cm,
  );

  /// Creates a triangle with [height] and [width] measured in decimeters.
  factory Triangle.dm(double height, double width) => Triangle._internal(
    height * MeasurementSystem.dm.factor,
    width * MeasurementSystem.dm.factor,
    MeasurementSystem.dm,
  );

  /// Creates a triangle with [height] and [width] measured in meters.
  factory Triangle.m(double height, double width) => Triangle._internal(
    height * MeasurementSystem.m.factor,
    width * MeasurementSystem.m.factor,
    MeasurementSystem.m,
  );

  /// Creates a triangle with [height] and [width] measured in inches.
  factory Triangle.inch(double height, double width) => Triangle._internal(
    height * MeasurementSystem.inch.factor,
    width * MeasurementSystem.inch.factor,
    MeasurementSystem.inch,
  );

  /// Creates a triangle with [height] and [width] measured in feet.
  factory Triangle.feet(double height, double width) => Triangle._internal(
    height * MeasurementSystem.feet.factor,
    width * MeasurementSystem.feet.factor,
    MeasurementSystem.feet,
  );

  /// Creates a triangle with [height] and [width] measured in
  /// [measurementSystem].
  factory Triangle(
    double height,
    double width,
    MeasurementSystem measurementSystem,
  ) => Triangle._internal(
    _convertToMm(height, measurementSystem),
    _convertToMm(width, measurementSystem),
    measurementSystem,
  );

  static double _convertToMm(
    double value,
    MeasurementSystem measurementSystem,
  ) {
    return value * measurementSystem.factor;
  }

  ////////////
  // Getter //
  ////////////

  /// The triangle's height in millimeters.
  double get heightInMm {
    return _heightInMm / MeasurementSystem.mm.factor;
  }

  /// The triangle's width in millimeters.
  double get widthInMm {
    return _widthInMm / MeasurementSystem.mm.factor;
  }

  /// The triangle's height in centimeters.
  double get heightInCm {
    return _heightInMm / MeasurementSystem.cm.factor;
  }

  /// The triangle's width in centimeters.
  double get widthInCm {
    return _widthInMm / MeasurementSystem.cm.factor;
  }

  /// The triangle's height in decimeters.
  double get heightInDm {
    return _heightInMm / MeasurementSystem.dm.factor;
  }

  /// The triangle's width in decimeters.
  double get widthInDm {
    return _widthInMm / MeasurementSystem.dm.factor;
  }

  /// The triangle's height in meters.
  double get heightInMeters {
    return _heightInMm / MeasurementSystem.m.factor;
  }

  /// The triangle's width in meters.
  double get widthInMeters {
    return _widthInMm / MeasurementSystem.m.factor;
  }

  /// The triangle's height in inches.
  double get heightInInch {
    return _heightInMm / MeasurementSystem.inch.factor;
  }

  /// The triangle's width in inches.
  double get widthInInch {
    return _widthInMm / MeasurementSystem.inch.factor;
  }

  /// The triangle's height in feet.
  double get heightInFeet {
    return _heightInMm / MeasurementSystem.feet.factor;
  }

  /// The triangle's width in feet.
  double get widthInFeet {
    return _widthInMm / MeasurementSystem.feet.factor;
  }

  /// The triangle's area in square units of the current [measurementSystem].
  double get area {
    return (_heightInMm / measurementSystem.factor) *
        (_widthInMm / measurementSystem.factor) /
        2;
  }

  ////////////
  // Setter //
  ////////////

  /// Sets the height in millimeters if [height] is greater than zero.
  set heightInMm(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.mm.factor;
    }
  }

  /// Sets the width in millimeters if [width] is greater than zero.
  set widthInMm(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.mm.factor;
    }
  }

  /// Sets the height in centimeters if [height] is greater than zero.
  set heightInCm(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.cm.factor;
    }
  }

  /// Sets the width in centimeters if [width] is greater than zero.
  set widthInCm(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.cm.factor;
    }
  }

  /// Sets the height in decimeters if [height] is greater than zero.
  set heightInDm(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.dm.factor;
    }
  }

  /// Sets the width in decimeters if [width] is greater than zero.
  set widthInDm(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.dm.factor;
    }
  }

  /// Sets the height in meters if [height] is greater than zero.
  set heightInMeters(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.m.factor;
    }
  }

  /// Sets the width in meters if [width] is greater than zero.
  set widthInMeters(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.m.factor;
    }
  }

  /// Sets the height in inches if [height] is greater than zero.
  set heightInInch(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.inch.factor;
    }
  }

  /// Sets the width in inches if [width] is greater than zero.
  set widthInInch(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.inch.factor;
    }
  }

  /// Sets the height in feet if [height] is greater than zero.
  set heightInFeet(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.feet.factor;
    }
  }

  /// Sets the width in feet if [width] is greater than zero.
  set widthInFeet(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.feet.factor;
    }
  }

  /////////////
  // Methods //
  /////////////

  /// Returns the height converted to [ms].
  double getHeight(MeasurementSystem ms) {
    return _heightInMm / ms.factor;
  }

  /// Sets the height to [value] measured in [ms] if [value] is greater than zero.
  void setHeight(MeasurementSystem ms, int value) {
    if (value > 0) {
      _heightInMm = (value * ms.factor).toDouble();
    }
  }
}
