class ApiRoutes {
  static const Biker = '/biker';
  static const Tcontroller = '/cterrain';

  static const CATEGORY = '/category';
  static const LOCATION_USER = '/user/location';
  static const USER = '/user/get';
  static const LIVREUR = '/livreur/read/ville';
  static const LIVRAISON_POINT = '/point_localisations';

  static const LOGIN = '/auth/user';

  static const SEND_CODE = '/auth/send-code';
  static const VERIFY_CODE = '/auth/verify-code';
  static const REST_PASSWORD = '/auth/new-password';
  static const SIGNUP = '/auth/create-user';

  static const UPDATE_USER = '/auth/user-update';
  static const InfoBiker = '/info-biker';

  static const Refresh = '/api/token/refresh';
  static const SEARCH = '/search';
  static const MODEPAIEMENT = '/modepaiement/read';

  static const TRANSACTION_READ = '/transaction/read';
  static const TRANSACTION_RETRAIT = '/transaction/retrait';
  static const TRANSACTION_DEPOT = '/compte/credit';
  static const VERIFY_DEPOT = '/compte/credit/verify';

  static const TEST = '/test/scroll';
  static const LIST_FIEUL = '/user/fieul';
  static const LIST_USER_BY = '/user/find';
  static const USER_IMAGE_UPDATE = '/user/image/new';
  static const LIST_NOTIFICATIONS = '/notifications';
  static const READ_NOTIFICATIONS = '/notifications/read';
  static const READ_SHORT_FOR_BOUTIQUE = '/short/for/boutique/read';
  static const HOME = '/home';
  static const VILLE = '/villes';
  static const MEDICAMENT_SEARCH = '/medicament-search';
  static const LIVRAISON_MEDICAMENT = '/livraisons/medicament';
}