class UserData {
  UserData({
    required this.otp,
    required this.userDetail,
  });
  late final String otp;
  late final UserDetail userDetail;

  UserData.fromJson(Map<String, dynamic> json) {
    otp = json['otp'];
    userDetail = UserDetail.fromJson(json['user_detail']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['otp'] = otp;
    _data['user_detail'] = userDetail.toJson();
    return _data;
  }
}

class UserDetail {
  UserDetail({
    required this.id,
    required this.name,
    required this.email,
    required this.countryCode,
    required this.phone,
    required this.type,
    required this.dob,
    required this.gender,
    required this.description,
    required this.educationLevel,
    required this.school,
    required this.college,
    required this.jobTitle,
    this.country,
    this.state,
    required this.city,
    this.address,
    this.organizationCountryCode,
    this.organizationPhone,
    required this.profileImage,
    required this.coverImage,
    required this.socialPartnerIds,
    required this.volunteerReference,
    required this.preferenceIds,
    required this.panNo,
    required this.numberOfPush,
    this.latitude,
    this.longitude,
    this.otp,
    required this.status,
    required this.notificationCount,
    required this.notificationOnFlag,
    required this.referralCode,
    required this.insertdate,
    required this.updatetime,
    required this.influencerFlag,
    required this.donorFlag,
    this.sector,
    this.familyMember,
    required this.token,
    this.webToken,
    required this.language,
    required this.deviceId,
    required this.deviceType,
    this.socialSubUserResponse,
    this.advertiserSubUserResponse,
    this.csrSubUserResponse,
    this.advertiserDetails,
    this.socialPartnerDetails,
    this.csrPartnerDetails,
  });
  late final int id;
  late final String name;
  late final String email;
  late final String countryCode;
  late final String phone;
  late final String type;
  late final String dob;
  late final String gender;
  late final String description;
  late final String educationLevel;
  late final String school;
  late final String college;
  late final String jobTitle;
  late final Null country;
  late final Null state;
  late final String city;
  late final Null address;
  late final Null organizationCountryCode;
  late final Null organizationPhone;
  late final String profileImage;
  late final String coverImage;
  late final String socialPartnerIds;
  late final int volunteerReference;
  late final String preferenceIds;
  late final String panNo;
  late final String numberOfPush;
  late final Null latitude;
  late final Null longitude;
  late final Null otp;
  late final String status;
  late final int notificationCount;
  late final int notificationOnFlag;
  late final String referralCode;
  late final String insertdate;
  late final String updatetime;
  late final String influencerFlag;
  late final String donorFlag;
  late final Null sector;
  late final Null familyMember;
  late final String token;
  late final Null webToken;
  late final String language;
  late final String deviceId;
  late final String deviceType;
  late final Null socialSubUserResponse;
  late final Null advertiserSubUserResponse;
  late final Null csrSubUserResponse;
  late final Null advertiserDetails;
  late final Null socialPartnerDetails;
  late final Null csrPartnerDetails;

  UserDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    countryCode = json['country_code'];
    phone = json['phone'];
    type = json['type'];
    dob = json['dob'];
    gender = json['gender'];
    description = json['description'];
    educationLevel = json['education_level'];
    school = json['school'];
    college = json['college'];
    jobTitle = json['job_title'];
    country = null;
    state = null;
    city = json['city'];
    address = null;
    organizationCountryCode = null;
    organizationPhone = null;
    profileImage = json['profile_image'];
    coverImage = json['cover_image'];
    socialPartnerIds = json['social_partner_ids'];
    volunteerReference = json['volunteer_reference'];
    preferenceIds = json['preference_ids'];
    panNo = json['pan_no'];
    numberOfPush = json['number_of_push'];
    latitude = null;
    longitude = null;
    otp = null;
    status = json['status'];
    notificationCount = json['notification_count'];
    notificationOnFlag = json['notification_on_flag'];
    referralCode = json['referral_code'];
    insertdate = json['insertdate'];
    updatetime = json['updatetime'];
    influencerFlag = json['influencer_flag'];
    donorFlag = json['donor_flag'];
    sector = null;
    familyMember = null;
    token = json['token'];
    webToken = null;
    language = json['language'];
    deviceId = json['device_id'];
    deviceType = json['device_type'];
    socialSubUserResponse = null;
    advertiserSubUserResponse = null;
    csrSubUserResponse = null;
    advertiserDetails = null;
    socialPartnerDetails = null;
    csrPartnerDetails = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['country_code'] = countryCode;
    _data['phone'] = phone;
    _data['type'] = type;
    _data['dob'] = dob;
    _data['gender'] = gender;
    _data['description'] = description;
    _data['education_level'] = educationLevel;
    _data['school'] = school;
    _data['college'] = college;
    _data['job_title'] = jobTitle;
    _data['country'] = country;
    _data['state'] = state;
    _data['city'] = city;
    _data['address'] = address;
    _data['organization_country_code'] = organizationCountryCode;
    _data['organization_phone'] = organizationPhone;
    _data['profile_image'] = profileImage;
    _data['cover_image'] = coverImage;
    _data['social_partner_ids'] = socialPartnerIds;
    _data['volunteer_reference'] = volunteerReference;
    _data['preference_ids'] = preferenceIds;
    _data['pan_no'] = panNo;
    _data['number_of_push'] = numberOfPush;
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    _data['otp'] = otp;
    _data['status'] = status;
    _data['notification_count'] = notificationCount;
    _data['notification_on_flag'] = notificationOnFlag;
    _data['referral_code'] = referralCode;
    _data['insertdate'] = insertdate;
    _data['updatetime'] = updatetime;
    _data['influencer_flag'] = influencerFlag;
    _data['donor_flag'] = donorFlag;
    _data['sector'] = sector;
    _data['family_member'] = familyMember;
    _data['token'] = token;
    _data['web_token'] = webToken;
    _data['language'] = language;
    _data['device_id'] = deviceId;
    _data['device_type'] = deviceType;
    _data['social_sub_user_response'] = socialSubUserResponse;
    _data['advertiser_sub_user_response'] = advertiserSubUserResponse;
    _data['csr_sub_user_response'] = csrSubUserResponse;
    _data['advertiser_details'] = advertiserDetails;
    _data['social_partner_details'] = socialPartnerDetails;
    _data['csr_partner_details'] = csrPartnerDetails;
    return _data;
  }
}