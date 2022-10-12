# Use command line to setup/build/run/test

## Find what package to use
* Google to find the package: in this example, we find that we need expression package.
* From pub.dev, we find expression 0.2.4 `https://pub.dev/packages/expressions`
* We add the information in the pubspec.yaml under the dependencies. 

## Process
mkdir calculator
cd calculator
dart create calculator
copy all the files in the lib/bin/test into the calculator directories accordingly
copy pubspec.yaml to replace calculator/pubspec.yaml
cd calculator
dart pub get
dart run
dart test