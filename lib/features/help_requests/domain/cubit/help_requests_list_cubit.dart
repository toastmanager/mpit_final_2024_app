import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mpit_final_2024_app/features/help_requests/domain/repositories/help_requests_repository.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.models.swagger.dart';

part 'help_requests_list_state.dart';
part 'help_requests_list_cubit.freezed.dart';

@Injectable()
class HelpRequestsListCubit extends Cubit<HelpRequestsListState> {
  final HelpRequestsRepository helpRequestsRepository;

  HelpRequestsListCubit({required this.helpRequestsRepository})
    : super(HelpRequestsListState.initial(helpRequests: []));

  Future<void> findAll() async {
    final requests = await helpRequestsRepository.findAll();
    emit(HelpRequestsListState.initial(helpRequests: requests));
  }
}
