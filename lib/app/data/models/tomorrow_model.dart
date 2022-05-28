class Tomorrow {
  Data? data;

  Tomorrow({this.data});

  Tomorrow.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data?.fromJson(json['data']) : null;
  }
}

class Data {
  List<Timelines>? timelines;

  Data({this.timelines});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['timelines'] != null) {
      timelines = <Timelines>[];
      json['timelines'].forEach((v) {
        timelines?.add(Timelines.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (timelines != null) {
      data['timelines'] = timelines?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Timelines {
  String? timestep;
  String? endTime;
  String? startTime;
  List<Intervals>? intervals;

  Timelines({this.timestep, this.endTime, this.startTime, this.intervals});

  Timelines.fromJson(Map<String, dynamic> json) {
    timestep = json['timestep'];
    endTime = json['endTime'];
    startTime = json['startTime'];
    if (json['intervals'] != null) {
      intervals = <Intervals>[];
      json['intervals'].forEach((v) {
        intervals?.add(Intervals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['timestep'] = timestep;
    data['endTime'] = endTime;
    data['startTime'] = startTime;
    if (intervals != null) {
      data['intervals'] = intervals?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Intervals {
  String? startTime;
  Values? values;

  Intervals({this.startTime, this.values});

  Intervals.fromJson(Map<String, dynamic> json) {
    startTime = json['startTime'];
    values = json['values'] != null ? Values?.fromJson(json['values']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['startTime'] = startTime;
    if (values != null) {
      data['values'] = values?.toJson();
    }
    return data;
  }
}

class Values {
  dynamic temperature;

  Values({this.temperature});

  Values.fromJson(Map<String, dynamic> json) {
    temperature = json['temperature'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['temperature'] = temperature;
    return data;
  }
}
