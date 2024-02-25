import '../../../../core/constant/color.dart';
import '../../../../core/constant/imgaeasset.dart';
import '../../../model/home/catecories_model.dart';
import '../../../model/home/home_banner_model.dart';


class  HomeStaticDataSources {
  


static List<HomeBannerModel> homeBannerList = [
  HomeBannerModel(
      title:"نحن معكم ",
      body:
        "اطلب مرافق في اي وقت وكن\n مطمن",
      image: AppImageAsset.bannerIage),
  HomeBannerModel(
      title:"نحن معكم ",
      body:
        "اطلب مرافق في اي وقت وكن\n مطمن",
      image: AppImageAsset.bannerIage),
  HomeBannerModel(
      title:"نحن معكم ",
      body:
        "اطلب مرافق في اي وقت وكن\n مطمن",
      image: AppImageAsset.bannerIage),
  HomeBannerModel(
      title:"نحن معكم ",
      body:
        "اطلب مرافق في اي وقت وكن\n مطمن",
      image: AppImageAsset.bannerIage),
];



static List<CategoryModel> categoriesList = [
  CategoryModel(catName: "صحي",
   color: AppColor.catOne
    ),
      CategoryModel(catName: "ترفيهي",
   color: AppColor.catTwo
    ),
      CategoryModel(catName: "اخري",
   color: AppColor.catThree
    )
  
];
}