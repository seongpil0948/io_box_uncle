# flutter clean \
    # && rm ios/Podfile.lock pubspec.lock \
    # && rm -rf ios/Pods ios/Runner.xcworkspace \

flutter build ipa  

open -a Xcode /Users/sp/Codes/Camps/campi/build/ios/archive/Runner.xcarchive