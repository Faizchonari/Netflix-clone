import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:netfliex_clone/domain/api_endpoints.dart';
import 'package:netfliex_clone/domain/downloads/downloads_repo.dart';
import 'package:netfliex_clone/domain/failures/main_failures.dart';
import 'package:netfliex_clone/domain/downloads/model/downloads.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IdownloadsRepo)
//when ever we call idowloadsrepo the the DownladsRepositary will run
class DownladsRepositary implements IdownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getdownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.trendingmovies);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();

        //returning  data(image) as a list using for loop

        print(downloadsList);

        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (_) {
      return const Left(MainFailure.clinetfailure());
    }
  }
}
