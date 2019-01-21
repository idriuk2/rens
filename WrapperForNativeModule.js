// WrapperForNativeModule.js
import React, { Component } from "react";
import {View, Button, StyleSheet} from "react-native";

import rensNativeModule from './RensNativeModule';

export default class WrapperForNativeModule extends Component {

  componentDidMount() {
    // console.log('initial count', rensNativeModule.initialCount)
    // rensNativeModule.addListener(
    //   "onIncrement",
    //   res => console.log("event onIncrement", res)
    // )
    // rensNativeModule.getCount(value => {
    //   console.log("count is " + value)
    // })
    // rensNativeModule.increment()
    // rensNativeModule.decrement()
    // rensNativeModule.decrement()

    rensNativeModule.logMessage('hello world')

  }

  render() {
    return (
      <View style={styles.container}>
        <Button
          style={styles.button} 
          onPress={() => { rensNativeModule.showSpinner() }}
          title="Show loader"
          color="#841584"
        />
        <Button
          style={styles.button}
          onPress={() => { rensNativeModule.hideSpinner() }}
          title="Hide loader"
          color="#841584"
        />
        <Button
          style={styles.button}
          onPress={() => { rensNativeModule.showMessage() }}
          title="Show Message"
          color="#841584"
        />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flexDirection: 'row',
    justifyContent: 'space-around'
  },
  button: {
    backgroundColor: 'green',
    width: '40%',
    height: 40
  }
});