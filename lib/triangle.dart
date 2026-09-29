enum MeasurementSystem {
  mm(1), 
  cm(10), 
  dm(100), 
  m(1000), 
  inch(25.4), 
  feet(304.8);
  
  final num factor;
  const MeasurementSystem(this.factor);
  }

class Triangle {
  double _heightInMm;
  double _widthInMm;
  MeasurementSystem measurementSystem;

  //////////////////
  ///Constructors///
  //////////////////

  Triangle._internal(this._heightInMm, this._widthInMm, this.measurementSystem);

  factory Triangle.mm(double height, double width) =>
    Triangle._internal(
      height * MeasurementSystem.mm.factor, 
      width * MeasurementSystem.mm.factor, 
      MeasurementSystem.mm,
    );

  factory Triangle.cm(double height, double width) =>
    Triangle._internal(
      height * MeasurementSystem.cm.factor, 
      width * MeasurementSystem.cm.factor, 
      MeasurementSystem.cm,
    );

  factory Triangle.dm(double height, double width) =>
    Triangle._internal(
      height * MeasurementSystem.dm.factor, 
      width * MeasurementSystem.dm.factor, 
      MeasurementSystem.dm,
    );

  factory Triangle.m(double height, double width) =>
    Triangle._internal(
      height * MeasurementSystem.m.factor, 
      width * MeasurementSystem.m.factor, 
      MeasurementSystem.m,
    );

  factory Triangle.inch(double height, double width) =>
    Triangle._internal(
      height * MeasurementSystem.inch.factor, 
      width* MeasurementSystem.inch.factor, 
      MeasurementSystem.inch,
    );

  factory Triangle.feet(double height, double width) =>
    Triangle._internal(
      height * MeasurementSystem.feet.factor, 
      width * MeasurementSystem.feet.factor, 
      MeasurementSystem.feet,
    );

  factory Triangle(double height, double width, MeasurementSystem measurementSystem) =>
      Triangle._internal(
          _convertToMm(height, measurementSystem),
          _convertToMm(width, measurementSystem),
          measurementSystem,
        );

  static double _convertToMm(double value, MeasurementSystem measurementSystem) {
    return value * measurementSystem.factor;
  }

  ////////////
  ///Getter///
  ////////////

  double get heightInMm {
    return _heightInMm / MeasurementSystem.mm.factor;
  }
  double get widthInMm {
    return _widthInMm / MeasurementSystem.mm.factor;
  }

  double get heightInCm {
    return _heightInMm / MeasurementSystem.cm.factor;
  }
  double get widthInCm {
    return _widthInMm / MeasurementSystem.cm.factor;
  }

  double get heightInDm {
    return _heightInMm / MeasurementSystem.dm.factor; 
  }
  double get widthInDm {
    return _widthInMm / MeasurementSystem.dm.factor;
  }

  double get heightInMeters {
    return _heightInMm / MeasurementSystem.m.factor;
  }
  double get widthInMeters {
    return _widthInMm / MeasurementSystem.m.factor;
  }

  double get heightInInch {
    return _heightInMm / MeasurementSystem.inch.factor;
  }
  double get widthInInch {
    return _widthInMm / MeasurementSystem.inch.factor;
  }

  double get heightInFeet {
    return _heightInMm / MeasurementSystem.feet.factor;
  }
  double get widthInFeet {
    return _widthInMm / MeasurementSystem.feet.factor;
  }

  double get area {
    return (_heightInMm / measurementSystem.factor) * (_widthInMm / measurementSystem.factor) / 2;
  }

  ////////////
  ///Setter///
  ////////////
  
  set heightInMm(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.mm.factor;
    }
  }
  set widthInMm(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.mm.factor;
    }
  }

  set heightInCm(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.cm.factor;
    }
  }
  set widthInCm(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.cm.factor;
    }
  }
  
  set heightInDm(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.dm.factor;
    }
  }
  set widthInDm(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.dm.factor;
    }
  }

  set heightInMeters(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.m.factor;
    }
  }
  set widthInMeters(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.m.factor;
    }
  }

  set heightInInch(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.inch.factor;
    }
  }
  set widthInInch(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.inch.factor;
    }
  }

  set heightInFeet(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.feet.factor;
    }
  }
  set widthInFeet(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.feet.factor;
    }
  }

  /////////////
  ///Methods///
  /////////////

  double getHeight(MeasurementSystem ms) {
    return _heightInMm / ms.factor;
  }

  void setHeight(MeasurementSystem ms, int value) {
    if (value > 0) {
      _heightInMm = (value * ms.factor).toDouble();
    }
  }
}
