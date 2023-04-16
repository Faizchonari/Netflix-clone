//this file deel with main api calls

import 'package:dartz/dartz.dart';
import 'package:netfliex_clone/domain/downloads/model/downloads.dart';
import 'package:netfliex_clone/domain/failures/main_failures.dart';

abstract class IdownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getdownloadsImages();
}
