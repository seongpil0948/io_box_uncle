# https://flutter-ko.dev/docs/deployment/android#signing-the-app
# https://developer.android.com/studio/publish/upload-bundle
# https://developer.android.com/studio/publish/app-signing#enroll
# flutter clean
flutter build appbundle
# print certificate
# keytool -printcert -jarfile  ../../campy/build/app/outputs/bundle/release/app-release.aab