// RensNativeModule.js

import { NativeModules, NativeEventEmitter } from 'react-native'
class RensNativeModule extends NativeEventEmitter {
  constructor(nativeModule) {
    super(nativeModule)
    // explicitly set our custom methods and properties
    this.initialCount = nativeModule.initialCount
    this.getCount = nativeModule.getCount
    this.increment = nativeModule.increment
    this.decrement = async function() {
      try {
        const res = await nativeModule.decrement()
        console.log(res)
      } catch(e) {
        console.log(e.message, e.code)
      }
    }

    this.showSpinner = nativeModule.showSpinner
    this.hideSpinner = nativeModule.hideSpinner
    this.showMessage = nativeModule.showMessage

    this.logMessage = nativeModule.logMessage

  }
}
export default new RensNativeModule(NativeModules.RensNativeModule)