import 'package:dio/dio.dart';
import 'package:news_app_clean_architecture/core/constants/constants.dart';
import 'package:news_app_clean_architecture/features/daily_news/data/models/article.dart';
import 'package:retrofit/retrofit.dart';
part 'news_api_services.g.dart';

@RestApi(baseUrl: newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;
  
  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query('apiKey') String ? apiKey,
    @Query('country') String ? country,
    @Query('category') String ? category,
  });

}