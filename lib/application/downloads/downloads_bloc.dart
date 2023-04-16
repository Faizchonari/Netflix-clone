import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/downloads/downloads_repo.dart';
import '../../domain/downloads/model/downloads.dart';
import '../../domain/failures/main_failures.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvents, DownloadsState> {
  final IdownloadsRepo _idownloadsRepo;
  DownloadsBloc(this._idownloadsRepo) : super(DownloadsState.inital()) {
    on<_GetdownloadsImages>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadFailure: none(),
        ),
      );
      final Either<MainFailure, List<Downloads>> downloadoptions =
          await _idownloadsRepo.getdownloadsImages();
      print(downloadoptions.toString());
      emit(
        downloadoptions.fold(
          (faliure) => state.copyWith(
              isLoading: false, downloadFailure: some(Left(faliure))),
          (sucuss) => state.copyWith(
            isLoading: false,
            downloads: sucuss,
            downloadFailure: some(
              Right(sucuss),
            ),
          ),
        ),
      );
    });
  }
}
