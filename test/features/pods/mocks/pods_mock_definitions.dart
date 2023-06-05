import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:picnic_app/features/pods/domain/model/get_pods_tags_failure.dart';
import 'package:picnic_app/features/pods/domain/model/get_saved_pods_failure.dart';
import 'package:picnic_app/features/pods/domain/model/save_pod_failure.dart';
import 'package:picnic_app/features/pods/domain/use_cases/get_pods_tags_use_case.dart';
import 'package:picnic_app/features/pods/domain/use_cases/get_saved_pods_use_case.dart';
import 'package:picnic_app/features/pods/domain/use_cases/save_pod_use_case.dart';
import 'package:picnic_app/features/pods/pod_bottom_sheet_initial_params.dart';
import 'package:picnic_app/features/pods/pod_bottom_sheet_navigator.dart';
import 'package:picnic_app/features/pods/pod_bottom_sheet_presentation_model.dart';
import 'package:picnic_app/features/pods/pod_bottom_sheet_presenter.dart';
import 'package:picnic_app/features/pods/pods_categories_initial_params.dart';
import 'package:picnic_app/features/pods/pods_categories_navigator.dart';
import 'package:picnic_app/features/pods/pods_categories_presentation_model.dart';
import 'package:picnic_app/features/pods/pods_categories_presenter.dart';

//DO-NOT-REMOVE IMPORTS_MOCK_DEFINITIONS

// MVP

class MockPodsCategoriesPresenter extends MockCubit<PodsCategoriesViewModel> implements PodsCategoriesPresenter {}

class MockPodsCategoriesPresentationModel extends Mock implements PodsCategoriesPresentationModel {}

class MockPodsCategoriesInitialParams extends Mock implements PodsCategoriesInitialParams {}

class MockPodsCategoriesNavigator extends Mock implements PodsCategoriesNavigator {}

class MockPodBottomSheetPresenter extends MockCubit<PodBottomSheetViewModel> implements PodBottomSheetPresenter {}

class MockPodBottomSheetPresentationModel extends Mock implements PodBottomSheetPresentationModel {}

class MockPodBottomSheetInitialParams extends Mock implements PodBottomSheetInitialParams {}

class MockPodBottomSheetNavigator extends Mock implements PodBottomSheetNavigator {}

//DO-NOT-REMOVE MVP_MOCK_DEFINITION

// USE CASES
class MockGetPodsTagsFailure extends Mock implements GetPodsTagsFailure {}

class MockGetPodsTagsUseCase extends Mock implements GetPodsTagsUseCase {}

class MockSavePodFailure extends Mock implements SavePodFailure {}

class MockSavePodUseCase extends Mock implements SavePodUseCase {}

class MockGetSavedPodsFailure extends Mock implements GetSavedPodsFailure {}

class MockGetSavedPodsUseCase extends Mock implements GetSavedPodsUseCase {}

//DO-NOT-REMOVE USE_CASE_MOCK_DEFINITION

// STORES
//DO-NOT-REMOVE STORES_MOCK_DEFINITION
