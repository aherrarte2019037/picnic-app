import 'package:picnic_app/dependency_injection/app_component.dart';
import 'package:picnic_app/features/reports/data/graphql_reports_repository.dart';
import 'package:picnic_app/features/reports/domain/repositories/reports_repository.dart';
import 'package:picnic_app/features/reports/domain/use_cases/create_circle_report_use_case.dart';
import 'package:picnic_app/features/reports/domain/use_cases/create_global_report_use_case.dart';
import 'package:picnic_app/features/reports/domain/use_cases/get_circle_report_reasons_use_case.dart';
import 'package:picnic_app/features/reports/domain/use_cases/get_global_report_reasons_use_case.dart';
import 'package:picnic_app/features/reports/report_form/report_form_initial_params.dart';
import 'package:picnic_app/features/reports/report_form/report_form_navigator.dart';
import 'package:picnic_app/features/reports/report_form/report_form_page.dart';
import 'package:picnic_app/features/reports/report_form/report_form_presentation_model.dart';
import 'package:picnic_app/features/reports/report_form/report_form_presenter.dart';
import 'package:picnic_app/features/reports/report_reasons/report_reasons_initial_params.dart';
import 'package:picnic_app/features/reports/report_reasons/report_reasons_navigator.dart';
import 'package:picnic_app/features/reports/report_reasons/report_reasons_page.dart';
import 'package:picnic_app/features/reports/report_reasons/report_reasons_presentation_model.dart';
import 'package:picnic_app/features/reports/report_reasons/report_reasons_presenter.dart';
//DO-NOT-REMOVE APP_COMPONENT_IMPORTS

/// registers all the dependencies in dependency graph in get_it package
void configureDependencies() {
  _configureGeneralDependencies();
  _configureRepositories();
  _configureStores();
  _configureUseCases();
  _configureMvp();
}

//ignore: long-method
void _configureGeneralDependencies() {
  // ignore: unnecessary_statements
  getIt
      //DO-NOT-REMOVE GENERAL_DEPS_GET_IT_CONFIG
      ;
}

//ignore: long-method
void _configureRepositories() {
  // ignore: unnecessary_statements
  getIt
        ..registerFactory<ReportsRepository>(
          () => GraphqlReportsRepository(
            getIt(),
          ),
        )
      //DO-NOT-REMOVE REPOSITORIES_GET_IT_CONFIG

      ;
}

//ignore: long-method
void _configureStores() {
  // ignore: unnecessary_statements
  getIt
      //DO-NOT-REMOVE STORES_GET_IT_CONFIG
      ;
}

//ignore: long-method
void _configureUseCases() {
  getIt
        ..registerFactory<GetGlobalReportReasonsUseCase>(
          () => GetGlobalReportReasonsUseCase(
            getIt(),
          ),
        )
        ..registerFactory<GetCircleReportReasonsUseCase>(
          () => GetCircleReportReasonsUseCase(),
        )
        ..registerFactory<CreateGlobalReportUseCase>(
          () => CreateGlobalReportUseCase(
            getIt(),
          ),
        )
        ..registerFactory<CreateCircleReportUseCase>(
          () => CreateCircleReportUseCase(
            getIt(),
          ),
        )
      //DO-NOT-REMOVE USE_CASES_GET_IT_CONFIG

      ;
}

//ignore: long-method
void _configureMvp() {
  // ignore: unnecessary_statements
  getIt
        ..registerFactory<ReportFormNavigator>(
          () => ReportFormNavigator(getIt()),
        )
        ..registerFactoryParam<ReportFormViewModel, ReportFormInitialParams, dynamic>(
          (params, _) => ReportFormPresentationModel.initial(params),
        )
        ..registerFactoryParam<ReportFormPresenter, ReportFormInitialParams, dynamic>(
          (initialParams, _) => ReportFormPresenter(
            getIt(param1: initialParams),
            getIt(),
            getIt(),
            getIt(),
            getIt(),
            getIt(),
          ),
        )
        ..registerFactoryParam<ReportFormPage, ReportFormInitialParams, dynamic>(
          (initialParams, _) => ReportFormPage(
            presenter: getIt(param1: initialParams),
          ),
        )
        ..registerFactory<ReportReasonsNavigator>(
          () => ReportReasonsNavigator(getIt()),
        )
        ..registerFactoryParam<ReportReasonsViewModel, ReportReasonsInitialParams, dynamic>(
          (params, _) => ReportReasonsPresentationModel.initial(params),
        )
        ..registerFactoryParam<ReportReasonsPresenter, ReportReasonsInitialParams, dynamic>(
          (initialParams, _) => ReportReasonsPresenter(
            getIt(param1: initialParams),
            getIt(),
          ),
        )
        ..registerFactoryParam<ReportReasonsPage, ReportReasonsInitialParams, dynamic>(
          (initialParams, _) => ReportReasonsPage(
            presenter: getIt(param1: initialParams),
          ),
        )
      //DO-NOT-REMOVE MVP_GET_IT_CONFIG
      ;
}
