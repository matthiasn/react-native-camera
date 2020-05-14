#!/usr/bin/env sh

# https://medium.com/@igniz87/react-native-unknown-argument-type-attribute-in-method-rctappstate-5daf904b2367
echo '### FIX Unknown argument type __attribute__'
sed -i '' 's/RCTReadString(input, "__attribute__((unused))");/RCTReadString(input, "__attribute__((unused))") || RCTReadString(input, "__attribute__((__unused__))");/g' node_modules/react-native/React/Base/RCTModuleMethod.mm
