import 'dart:convert';

HomePosts homePostsFromJson(String str) => HomePosts.fromJson(json.decode(str));

class HomePosts {
  final bool status;
  final String message;
  final List<Post> posts;

  HomePosts({
    required this.status,
    required this.message,
    required this.posts,
  });

  factory HomePosts.fromJson(Map<String, dynamic> json) => HomePosts(
        status: json["status"],
        message: json["message"],
        posts: List<Post>.from(json["posts"].map((x) => Post.fromJson(x))),
      );
}

class Post {
  final int? postId;
  final int? userId;
  final int? typeId;
  final int? payType;
  final int? price;
  final dynamic currency;
  final int? status;
  final String? website;
  final int? isPromote;
  final int? promotDuration;
  final dynamic campaignType;
  final String? campDate;
  final String? campTime;
  final String? description;
  final String? postVideo;
  final String? hashtags;
  final String? hashtagTitles;
  final dynamic postType;
  final String? profileImage;
  final String? name;
  final int? countryId;
  final String? country;
  final String? flag;
  final String? currencyFlag;
  final int? laqtaCoins;
  final String? postTitle;
  final int? displaySaltaries;
  final dynamic content;
  final List<Image> images;
  final int? likes;
  final int? shares;
  final int? comments;
  final int? offers;
  final String? type;
  final dynamic survey;

  Post({
    required this.postId,
    required this.userId,
    required this.typeId,
    required this.payType,
    required this.price,
    required this.currency,
    required this.status,
    required this.website,
    required this.isPromote,
    required this.promotDuration,
    required this.campaignType,
    required this.campDate,
    required this.campTime,
    required this.description,
    required this.postVideo,
    required this.hashtags,
    required this.hashtagTitles,
    required this.postType,
    required this.profileImage,
    required this.name,
    required this.countryId,
    required this.country,
    required this.flag,
    required this.currencyFlag,
    required this.laqtaCoins,
    required this.postTitle,
    required this.displaySaltaries,
    required this.content,
    required this.images,
    required this.likes,
    required this.shares,
    required this.comments,
    required this.offers,
    required this.type,
    required this.survey,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        postId: json["post_id"],
        userId: json["user_id"],
        typeId: json["type_id"],
        payType: json["pay_type"],
        price: json["price"],
        currency: json["currency"],
        status: json["status"],
        website: json["website"],
        isPromote: json["is_promote"],
        promotDuration: json["promot_duration"],
        campaignType: json["campaign_type"],
        campDate: json["camp_date"],
        campTime: json["camp_time"],
        description: json["description"],
        postVideo: json["post_video"],
        hashtags: json["hashtags"],
        hashtagTitles: json["hashtag_titles"],
        postType: json["post_type"],
        profileImage: json["profile_image"],
        name: json["name"],
        countryId: json["country_id"],
        country: json["country"] ?? '',
        flag: json["flag"],
        currencyFlag: json["currency_flag"],
        laqtaCoins: json["laqta_coins"],
        postTitle: json["post_title"],
        displaySaltaries: json["display_saltaries"],
        content: json["content"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        likes: json["likes"],
        shares: json["shares"],
        comments: json["comments"],
        offers: json["offers"],
        type: json["type"],
        survey: json["survey"],
      );
}

class Image {
  final String image;
  final int isFirstPic;

  Image({
    required this.image,
    required this.isFirstPic,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        image: json["image"],
        isFirstPic: json["is_first_pic"],
      );
}

class SurveyClass {
  final int id;
  final int advertisementId;
  final String question;
  final String option1;
  final String option2;
  final String option3;
  final String option4;

  SurveyClass({
    required this.id,
    required this.advertisementId,
    required this.question,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
  });

  factory SurveyClass.fromJson(Map<String, dynamic> json) => SurveyClass(
        id: json["id"],
        advertisementId: json["advertisement_id"],
        question: json["question"],
        option1: json["option_1"],
        option2: json["option_2"],
        option3: json["option_3"],
        option4: json["option_4"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "advertisement_id": advertisementId,
        "question": question,
        "option_1": option1,
        "option_2": option2,
        "option_3": option3,
        "option_4": option4,
      };
}
