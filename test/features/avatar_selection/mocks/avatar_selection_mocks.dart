import 'package:mocktail/mocktail.dart';

import 'avatar_selection_mock_definitions.dart';
//DO-NOT-REMOVE IMPORTS_MOCKS

class AvatarSelectionMocks {
  // MVP

  static late MockAvatarSelectionPresenter avatarSelectionPresenter;
  static late MockAvatarSelectionPresentationModel avatarSelectionPresentationModel;
  static late MockAvatarSelectionInitialParams avatarSelectionInitialParams;
  static late MockAvatarSelectionNavigator avatarSelectionNavigator;
  //DO-NOT-REMOVE MVP_MOCKS_STATIC_FIELD

  // USE CASES

  //DO-NOT-REMOVE USE_CASE_MOCKS_STATIC_FIELD

  // REPOSITORIES
  //DO-NOT-REMOVE REPOSITORIES_MOCKS_STATIC_FIELD

  // STORES

  //DO-NOT-REMOVE STORES_MOCKS_STATIC_FIELD

  static void init() {
    _initMocks();
    _initFallbacks();
  }

  static void _initMocks() {
    //DO-NOT-REMOVE FEATURES_MOCKS
    // MVP
    avatarSelectionPresenter = MockAvatarSelectionPresenter();
    avatarSelectionPresentationModel = MockAvatarSelectionPresentationModel();
    avatarSelectionInitialParams = MockAvatarSelectionInitialParams();
    avatarSelectionNavigator = MockAvatarSelectionNavigator();
    //DO-NOT-REMOVE MVP_INIT_MOCKS

    // USE CASES
    //DO-NOT-REMOVE USE_CASE_INIT_MOCKS

    // REPOSITORIES
    //DO-NOT-REMOVE REPOSITORIES_INIT_MOCKS

    // STORES
    //DO-NOT-REMOVE STORES_INIT_MOCKS
  }

  static void _initFallbacks() {
    //DO-NOT-REMOVE FEATURES_FALLBACKS
    // MVP
    registerFallbackValue(MockAvatarSelectionPresenter());
    registerFallbackValue(MockAvatarSelectionPresentationModel());
    registerFallbackValue(MockAvatarSelectionInitialParams());
    registerFallbackValue(MockAvatarSelectionNavigator());
    //DO-NOT-REMOVE MVP_MOCK_FALLBACK_VALUE

    // USE CASES
    //DO-NOT-REMOVE USE_CASE_MOCK_FALLBACK_VALUE

    // REPOSITORIES
    //DO-NOT-REMOVE REPOSITORIES_MOCK_FALLBACK_VALUE

    // STORES
    //DO-NOT-REMOVE STORES_MOCK_FALLBACK_VALUE
  }
}
