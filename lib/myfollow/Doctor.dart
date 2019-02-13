class Doctor {
  String avatar;
  String begoodat;
  String departmentName;
  int doctorId;
  bool follow;
  String hospitalName;
  String introduction;
  String name;
  String titleAdministrative;
  String titleEducationalName;
  String titleMedicalName;
  String shareUrl;

  Doctor.fromJson(Map<String, dynamic> data) {
    avatar = data['avatar'];
    begoodat = data['begoodat'];
    departmentName = data['departmentName'];
    doctorId = data['doctorId'];
    follow = data['follow'];
    hospitalName = data['hospitalName'];
    introduction = data['introduction'];
    name = data['name'];
    titleAdministrative = data['titleAdministrative'];
    titleEducationalName = data['titleEducationalName'];
    titleMedicalName = data['titleMedicalName'];
    shareUrl = data['shareUrl'];
  }
}
