class DiseaseResult {
  String? timestamp;
  String? statusCode;
  String? statusMessage;
  ResponseBody? responseBody;

  DiseaseResult(
      {this.timestamp, this.statusCode, this.statusMessage, this.responseBody});

  DiseaseResult.fromJson(Map<String, dynamic> json) {
    timestamp = json['timestamp'];
    statusCode = json['statusCode'];
    statusMessage = json['statusMessage'];
    responseBody = json['responseBody'] != null
        ? new ResponseBody.fromJson(json['responseBody'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['timestamp'] = this.timestamp;
    data['statusCode'] = this.statusCode;
    data['statusMessage'] = this.statusMessage;
    if (this.responseBody != null) {
      data['responseBody'] = this.responseBody!.toJson();
    }
    return data;
  }
}

class ResponseBody {
  String? disease;
  List<Solution>? solution;
  int? currentPage;
  int? totalItems;
  int? totalPages;
  String? diseaseDescription;

  ResponseBody(
      {this.disease,
      this.solution,
      this.currentPage,
      this.totalItems,
      this.totalPages,
      this.diseaseDescription});

  ResponseBody.fromJson(Map<String, dynamic> json) {
    disease = json['disease'];
    if (json['solution'] != null) {
      solution = <Solution>[];
      json['solution'].forEach((v) {
        solution!.add(new Solution.fromJson(v));
      });
    }
    currentPage = json['currentPage'];
    totalItems = json['totalItems'];
    totalPages = json['totalPages'];
    diseaseDescription = json['diseaseDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['disease'] = this.disease;
    if (this.solution != null) {
      data['solution'] = this.solution!.map((v) => v.toJson()).toList();
    }
    data['currentPage'] = this.currentPage;
    data['totalItems'] = this.totalItems;
    data['totalPages'] = this.totalPages;
    data['diseaseDescription'] = this.diseaseDescription;
    return data;
  }
}

class Solution {
  int? solutionId;
  String? solutionCode;
  String? solution;
  String? solutionDescription;
  int? rateScore;
  String? solutionType;

  Solution(
      {this.solutionId,
      this.solutionCode,
      this.solution,
      this.solutionDescription,
      this.rateScore,
      this.solutionType});

  Solution.fromJson(Map<String, dynamic> json) {
    solutionId = json['solution_id'];
    solutionCode = json['solution_code'];
    solution = json['solution'];
    solutionDescription = json['solution_description'];
    rateScore = json['rate_score'];
    solutionType = json['solution_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['solution_id'] = this.solutionId;
    data['solution_code'] = this.solutionCode;
    data['solution'] = this.solution;
    data['solution_description'] = this.solutionDescription;
    data['rate_score'] = this.rateScore;
    data['solution_type'] = this.solutionType;
    return data;
  }
}
