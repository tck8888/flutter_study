class TrialList {
  bool follow;
  String registerNumber;
  String shareUrl;
  int trialId;
  int trialStages;
  int trialStatus;
  String trialStatusName;
  String trialTitlePopular;
  String trialTitleProfessional;

  TrialList.fromJson(Map<String, dynamic> data) {
    follow = data['follow'];
    registerNumber = data['registerNumber'];
    shareUrl = data['shareUrl'];
    trialId = data['trialId'];
    trialStages = data['trialStages'];
    trialStatus = data['trialStatus'];
    trialStatusName = data['trialStatusName'];
    trialTitlePopular = data['trialTitlePopular'];
    trialTitleProfessional = data['trialTitleProfessional'];
  }
}
