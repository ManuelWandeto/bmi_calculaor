Map<String, String> diagnose(double bmi) {
  var data = <String, String>{
    "bmi": bmi.toStringAsPrecision(3),
  };
  if (bmi >= 30) {
    return {
      ...data,
      "label": 'OBESE',
      "message": 'Your body mass index indicates you may be obese',
    };
  } else if (bmi > 25.0) {
    return {
      ...data,
      "label": 'OVERWEIGHT',
      "message": 'your body mass index indicates you may be overweight',
    };
  } else if (bmi > 18.5) {
    return {
      ...data,
      "label": 'HEALTHY',
      "message": "You have a normal body weight, must be nice",
    };
  } else {
    return {
      ...data,
      "label": 'UNDERWEIGHT',
      "message": "Your body mass index indicates you may be underweight",
    };
  }
}
