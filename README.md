# React Native Guided Access Control (RNGAC)

RNGAC is an easy-to-use library built for React Native applications. It enables developers to control iOS Guided Access mode programmatically, offering a seamless way to manage settings and status directly within your app.

**Note:** This library is iOS specific and will not work for Android.  
**Note:** This library will only function as intended if the iOS device is enrolled in Apple's Mobile Device Management (MDM) program, and the app itself must be enabled for this mode by MDM. [More Info](https://developer.apple.com/documentation/uikit/uiaccessibility/1615186-requestguidedaccesssession)

## 🚀 Getting Started

## Requirements

- React Native >= 0.60.0
- iOS >= 9.0

## Installation

Using npm:

```bash
npm install react-native-guided-access-control
```

Using yarn:

```bash
yarn add react-native-guided-access-control
```

## USAGE

Here's a quick example of how to use RNGAC in your application:

```bash
import RNGAC from 'react-native-guided-access-control';

// Enable Guided Access
RNGAC.activateGuidedAccess();

// Disable Guided Access
RNGAC.deactivateGuidedAccess();

// Check if Guided Access is currently active
RNGAC.isGuidedAccessActive()
  .then(isActive => console.log(isActive))
  .catch(err => console.error(err));
```

## Contributing
New features, bug fixes and improvements are welcome! For questions and suggestions use the [issues](https://github.com/rruana/react-native-guided-access-control/issues).

## License
RNGAC is licensed under the MIT License. 

## Disclaimer
While RNGAC allows you to control Guided Access programmatically, its usage might be subject to Apple's review guidelines. Always ensure that your application complies with all relevant rules and guidelines when implementing such functionality.