import 'package:json_annotation/json_annotation.dart'; 

part 'home_data.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class HomeData {
  @JsonKey(name: 'code')
  String? code;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'data')
  Data? data;

  HomeData({this.code, this.message, this.data});

   factory HomeData.fromJson(Map<String, dynamic> json) => _$HomeDataFromJson(json);

   Map<String, dynamic> toJson() => _$HomeDataToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Data {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'contact_number')
  String? contactNumber;
  @JsonKey(name: 'whatsapp_number')
  String? whatsappNumber;
  @JsonKey(name: 'instagram_url')
  String? instagramUrl;
  @JsonKey(name: 'linkedin_url')
  String? linkedinUrl;
  @JsonKey(name: 'url')
  String? url;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'category')
  String? category;
  @JsonKey(name: 'location')
  String? location;
  @JsonKey(name: 'no_of_push')
  String? noOfPush;
  @JsonKey(name: 'bank_name')
  String? bankName;
  @JsonKey(name: 'account_number')
  String? accountNumber;
  @JsonKey(name: 'account_holder_name')
  String? accountHolderName;
  @JsonKey(name: 'IFSC_code')
  String? IFSCCode;
  @JsonKey(name: 'pan_no')
  String? panNo;
  @JsonKey(name: 'profile_image')
  String? profileImage;
  @JsonKey(name: 'cover_image')
  String? coverImage;
  @JsonKey(name: 'id_image')
  String? idImage;
  @JsonKey(name: 'company_ids')
  String? companyIds;
  @JsonKey(name: 'celebrity_ids')
  String? celebrityIds;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'is_verify')
  String? isVerify;
  @JsonKey(name: 'insertdate')
  String? insertdate;
  @JsonKey(name: 'updatetime')
  String? updatetime;
  @JsonKey(name: 'volunteer_request')
  String? volunteerRequest;
  @JsonKey(name: 'fcra_doc')
  String? fcraDoc;
  @JsonKey(name: 'total_rating')
  int? totalRating;
  @JsonKey(name: 'ac_certificate')
  String? acCertificate;
  @JsonKey(name: 'csr_certificate')
  String? csrCertificate;
  @JsonKey(name: 'facebook_url')
  String? facebookUrl;
  @JsonKey(name: 'twitter_url')
  String? twitterUrl;
  @JsonKey(name: 'spent_amount')
  String? spentAmount;
  @JsonKey(name: 'budget')
  String? budget;
  @JsonKey(name: 'fcra_verify_flag')
  String? fcraVerifyFlag;
  @JsonKey(name: 'csr_verify_flag')
  String? csrVerifyFlag;
  @JsonKey(name: 'city')
  String? city;
  @JsonKey(name: 'state')
  String? state;
  @JsonKey(name: 'country')
  String? country;
  @JsonKey(name: 'volunteer_certificate_duration')
  int? volunteerCertificateDuration;
  @JsonKey(name: 'urn_number')
  String? urnNumber;
  @JsonKey(name: 'fcra_number')
  String? fcraNumber;
  @JsonKey(name: 'pan_number')
  String? panNumber;
  @JsonKey(name: 'category_name')
  String? categoryName;
  @JsonKey(name: 'raised_amount')
  int? raisedAmount;
  @JsonKey(name: 'social_id_image')
  String? socialIdImage;
  @JsonKey(name: 'user_rating')
  int? userRating;
  @JsonKey(name: 'csr_request_flag')
  bool? csrRequestFlag;
  @JsonKey(name: 'social_follow')
  bool? socialFollow;
  @JsonKey(name: 'social_commit')
  bool? socialCommit;
  @JsonKey(name: 'total_followers')
  int? totalFollowers;
  @JsonKey(name: 'total_committed')
  int? totalCommitted;
  @JsonKey(name: 'celebrity')
  List<Celebrity>? celebrity;
  @JsonKey(name: 'agency')
  String? agency;
  @JsonKey(name: 'company')
  String? company;
  @JsonKey(name: 'top_volunteer')
  String? topVolunteer;
  @JsonKey(name: 'tie_up_data')
  List<TieUpData>? tieUpData;
  @JsonKey(name: 'tie_up_by_csr_data')
  String? tieUpByCsrData;
  @JsonKey(name: 'top_donor')
  String? topDonor;
  @JsonKey(name: 'normal_campaign_data')
  NormalCampaignData? normalCampaignData;
  @JsonKey(name: 'sos_campaign_data')
  SosCampaignData? sosCampaignData;
  @JsonKey(name: 'social_csr_campaign')
  String? socialCsrCampaign;
  @JsonKey(name: 'mutual_friend')
  String? mutualFriend;
  @JsonKey(name: 'volunteer_flag')
  bool? volunteerFlag;

  Data({this.id, this.userId, this.name, this.email, this.contactNumber, this.whatsappNumber, this.instagramUrl, this.linkedinUrl, this.url, this.description, this.category, this.location, this.noOfPush, this.bankName, this.accountNumber, this.accountHolderName, this.IFSCCode, this.panNo, this.profileImage, this.coverImage, this.idImage, this.companyIds, this.celebrityIds, this.status, this.isVerify, this.insertdate, this.updatetime, this.volunteerRequest, this.fcraDoc, this.totalRating, this.acCertificate, this.csrCertificate, this.facebookUrl, this.twitterUrl, this.spentAmount, this.budget, this.fcraVerifyFlag, this.csrVerifyFlag, this.city, this.state, this.country, this.volunteerCertificateDuration, this.urnNumber, this.fcraNumber, this.panNumber, this.categoryName, this.raisedAmount, this.socialIdImage, this.userRating, this.csrRequestFlag, this.socialFollow, this.socialCommit, this.totalFollowers, this.totalCommitted, this.celebrity, this.agency, this.company, this.topVolunteer, this.tieUpData, this.tieUpByCsrData, this.topDonor, this.normalCampaignData, this.sosCampaignData, this.socialCsrCampaign, this.mutualFriend, this.volunteerFlag});

   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

   Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Celebrity {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'profile_image')
  String? profileImage;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'insertdate')
  String? insertdate;
  @JsonKey(name: 'updatetime')
  String? updatetime;
  @JsonKey(name: 'social_partner_id')
  String? socialPartnerId;
  @JsonKey(name: 'user_type')
  String? userType;

  Celebrity({this.id, this.userId, this.type, this.name, this.profileImage, this.status, this.insertdate, this.updatetime, this.socialPartnerId, this.userType});

   factory Celebrity.fromJson(Map<String, dynamic> json) => _$CelebrityFromJson(json);

   Map<String, dynamic> toJson() => _$CelebrityToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class TieUpData {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'csr_partner_id')
  int? csrPartnerId;
  @JsonKey(name: 'social_partner_id')
  int? socialPartnerId;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'tie_up_type')
  String? tieUpType;
  @JsonKey(name: 'insertdate')
  String? insertdate;
  @JsonKey(name: 'updatetime')
  String? updatetime;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'profile_image')
  String? profileImage;

  TieUpData({this.id, this.userId, this.csrPartnerId, this.socialPartnerId, this.status, this.tieUpType, this.insertdate, this.updatetime, this.name, this.profileImage});

   factory TieUpData.fromJson(Map<String, dynamic> json) => _$TieUpDataFromJson(json);

   Map<String, dynamic> toJson() => _$TieUpDataToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class NormalCampaignData {
  @JsonKey(name: 'donatedAmount')
  int? donatedAmount;
  @JsonKey(name: 'donationPercentage')
  String? donationPercentage;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'social_partner_id')
  int? socialPartnerId;
  @JsonKey(name: 'campaign_media')
  String? campaignMedia;
  @JsonKey(name: 'campaign_name')
  String? campaignName;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'city')
  String? city;
  @JsonKey(name: 'state')
  String? state;
  @JsonKey(name: 'country')
  String? country;
  @JsonKey(name: 'discription')
  String? discription;
  @JsonKey(name: 'start_date')
  String? startDate;
  @JsonKey(name: 'start_time')
  String? startTime;
  @JsonKey(name: 'end_date')
  String? endDate;
  @JsonKey(name: 'end_time')
  String? endTime;
  @JsonKey(name: 'campaign_media_type')
  String? campaignMediaType;
  @JsonKey(name: 'campaign_type')
  String? campaignType;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'total_budget')
  int? totalBudget;
  @JsonKey(name: 'need_amount_raised')
  int? needAmountRaised;
  @JsonKey(name: 'donated_volunteer_id')
  String? donatedVolunteerId;
  @JsonKey(name: 'intrested')
  int? intrested;
  @JsonKey(name: 'participated')
  int? participated;
  @JsonKey(name: 'campaign_number')
  int? campaignNumber;
  @JsonKey(name: 'is_verify')
  String? isVerify;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'campaign_link')
  String? campaignLink;
  @JsonKey(name: 'spent_amount')
  String? spentAmount;
  @JsonKey(name: 'tagged_users_ids')
  String? taggedUsersIds;
  @JsonKey(name: 'total_participated')
  int? totalParticipated;
  @JsonKey(name: 'campaign_media_url')
  String? campaignMediaUrl;
  @JsonKey(name: 's_time')
  String? sTime;
  @JsonKey(name: 'e_time')
  String? eTime;
  @JsonKey(name: 'fcra_verify_flag')
  String? fcraVerifyFlag;
  @JsonKey(name: 'csr_verify_flag')
  String? csrVerifyFlag;
  @JsonKey(name: 'campaign_media_list')
  List<CampaignMediaList>? campaignMediaList;

  NormalCampaignData({this.donatedAmount, this.donationPercentage, this.id, this.socialPartnerId, this.campaignMedia, this.campaignName, this.address, this.city, this.state, this.country, this.discription, this.startDate, this.startTime, this.endDate, this.endTime, this.campaignMediaType, this.campaignType, this.type, this.totalBudget, this.needAmountRaised, this.donatedVolunteerId, this.intrested, this.participated, this.campaignNumber, this.isVerify, this.status, this.createdAt, this.updatedAt, this.campaignLink, this.spentAmount, this.taggedUsersIds, this.totalParticipated, this.campaignMediaUrl, this.sTime, this.eTime, this.fcraVerifyFlag, this.csrVerifyFlag, this.campaignMediaList});

   factory NormalCampaignData.fromJson(Map<String, dynamic> json) => _$NormalCampaignDataFromJson(json);

   Map<String, dynamic> toJson() => _$NormalCampaignDataToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class CampaignMediaList {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'campaign_id')
  int? campaignId;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'insertdate')
  String? insertdate;
  @JsonKey(name: 'updatetime')
  String? updatetime;
  @JsonKey(name: 'post_image')
  String? postImage;

  CampaignMediaList({this.id, this.campaignId, this.image, this.status, this.insertdate, this.updatetime, this.postImage});

   factory CampaignMediaList.fromJson(Map<String, dynamic> json) => _$CampaignMediaListFromJson(json);

   Map<String, dynamic> toJson() => _$CampaignMediaListToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class SosCampaignData {
  @JsonKey(name: 'donatedAmount')
  int? donatedAmount;
  @JsonKey(name: 'donationPercentage')
  int? donationPercentage;
  @JsonKey(name: 'daysLeft')
  String? daysLeft;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'social_partner_id')
  int? socialPartnerId;
  @JsonKey(name: 'campaign_media')
  String? campaignMedia;
  @JsonKey(name: 'campaign_name')
  String? campaignName;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'city')
  String? city;
  @JsonKey(name: 'state')
  String? state;
  @JsonKey(name: 'country')
  String? country;
  @JsonKey(name: 'discription')
  String? discription;
  @JsonKey(name: 'start_date')
  String? startDate;
  @JsonKey(name: 'start_time')
  String? startTime;
  @JsonKey(name: 'end_date')
  String? endDate;
  @JsonKey(name: 'end_time')
  String? endTime;
  @JsonKey(name: 'campaign_media_type')
  String? campaignMediaType;
  @JsonKey(name: 'campaign_type')
  String? campaignType;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'total_budget')
  int? totalBudget;
  @JsonKey(name: 'need_amount_raised')
  int? needAmountRaised;
  @JsonKey(name: 'donated_volunteer_id')
  String? donatedVolunteerId;
  @JsonKey(name: 'intrested')
  int? intrested;
  @JsonKey(name: 'participated')
  int? participated;
  @JsonKey(name: 'campaign_number')
  int? campaignNumber;
  @JsonKey(name: 'is_verify')
  String? isVerify;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'campaign_link')
  String? campaignLink;
  @JsonKey(name: 'spent_amount')
  String? spentAmount;
  @JsonKey(name: 'tagged_users_ids')
  String? taggedUsersIds;
  @JsonKey(name: 'total_participated')
  int? totalParticipated;
  @JsonKey(name: 'social_partner_name')
  String? socialPartnerName;
  @JsonKey(name: 'social_partner_media_url')
  String? socialPartnerMediaUrl;
  @JsonKey(name: 'sp_id')
  int? spId;
  @JsonKey(name: 'campaign_media_url')
  String? campaignMediaUrl;
  @JsonKey(name: 's_time')
  String? sTime;
  @JsonKey(name: 'e_time')
  String? eTime;
  @JsonKey(name: 'campaign_media_list')
  List<CampaignMediaList>? campaignMediaList;

  SosCampaignData({this.donatedAmount, this.donationPercentage, this.daysLeft, this.id, this.socialPartnerId, this.campaignMedia, this.campaignName, this.address, this.city, this.state, this.country, this.discription, this.startDate, this.startTime, this.endDate, this.endTime, this.campaignMediaType, this.campaignType, this.type, this.totalBudget, this.needAmountRaised, this.donatedVolunteerId, this.intrested, this.participated, this.campaignNumber, this.isVerify, this.status, this.createdAt, this.updatedAt, this.campaignLink, this.spentAmount, this.taggedUsersIds, this.totalParticipated, this.socialPartnerName, this.socialPartnerMediaUrl, this.spId, this.campaignMediaUrl, this.sTime, this.eTime, this.campaignMediaList});

   factory SosCampaignData.fromJson(Map<String, dynamic> json) => _$SosCampaignDataFromJson(json);

   Map<String, dynamic> toJson() => _$SosCampaignDataToJson(this);

}

