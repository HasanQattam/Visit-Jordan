import 'dart:convert';

import 'package:visit_jordan/models/activityApi_model.dart';
import 'package:http/http.dart' as http;
import 'package:visit_jordan/utilities/Utilities.dart';

class ActivityApi {
  Future<List<ActivityApiM>> activity() async {
    var response = await http.get("${Utilities.baseUrl}Activity.php");

    var jsonData = jsonDecode(response.body);
    print(jsonData['activity'][0]);
    List<ActivityApiM> activities=List<ActivityApiM>();
    for (var item in jsonData['activity']) {
      ActivityApiM activityApiM = ActivityApiM();
      activityApiM.activityId = item['activity_id'];
      activityApiM.activityId = item['State'];
      activityApiM.activityId = item['Type'];
      activityApiM.activityId = item['Title'];
      activityApiM.activityId = item['Image'];
      activityApiM.activityId = item['Desc'];
      activityApiM.activityId = item['start_time'];
      activityApiM.activityId = item['end_time'];
      activityApiM.activityId = item['price'];

      activities.add(activityApiM);
    }
    return activities;
  }
}
