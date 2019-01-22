# Rens

use native swift libraries with react-native

## Get Started 
```sh
git clone https://github.com/idriuk2/rens.git
cd rens
npm install
cd ios
pod install
open -a Xcode Rens.xcworkspace
```
choose Rens and run

## Requirements
- Xcode: 9.4.1
- swift: 3.3
- react-native-cli: 2.0.1
- react-native: 0.57.8

## Connect swift module to react-native example
- RensNativeModule.js
- Rens-Bridging-Header.h
- RensNativeModule.m
- RensNativeModule.swift

## Connect swift view component to react-native example
- RensNativeView.js
- Rens-Bridging-Header.h
- RensNativeViewManager.m
- RensNativeViewManager.swift
- RensNativeView.swift

## Connect native library manually
- create group with folder
- drag files (ProgressHUD -> ProgressHUD -> .bundle, .h, .m) to group folder, target Rens
- add ```#import "ProgressHUD.h"``` to Rens-Bridging-Header.h
- use ```ProgressHUD.showSuccess("Correct")``` in swift files

## Connect native library with pods
- ```pod 'SVProgressHUD'```
- ```pod install```
- ```import SVProgressHUD``` in swift files before use ```SVProgressHUD.show()``` 
- open project with workspace if using pods

## Currently visible functions
- increment after click digit button
- long press digit to set other digit equal to current
- show hide loader with SVProgressHUD
- show message with SwiftMessages

## References
- [Swift in React Native - The Ultimate Guide Part 1: Modules](https://teabreak.e-spres-oh.com/swift-in-react-native-the-ultimate-guide-part-1-modules-9bb8d054db03)
- [Swift in React Native - The Ultimate Guide Part 2: UI Components](https://teabreak.e-spres-oh.com/swift-in-react-native-the-ultimate-guide-part-2-ui-components-907767123d9e)
- [SVProgressHUD](https://github.com/SVProgressHUD/SVProgressHUD)
- [ProgressHUD](https://github.com/relatedcode/ProgressHUD)
- [SwiftMessages](https://github.com/SwiftKickMobile/SwiftMessages)
- [Swift 3 — Creating a custom view from a xib](https://medium.com/@brianclouser/swift-3-creating-a-custom-view-from-a-xib-ecdfe5b3a960)