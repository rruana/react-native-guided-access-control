// index.js

import { NativeModules } from 'react-native';

const { RNGAC } = NativeModules;

const activateGuidedAccess = RNGAC.activateGuidedAccess;
const deactivateGuidedAccess = RNGAC.deactivateGuidedAccess;
const isGuidedAccessActive = RNGAC.isGuidedAccessActive;

export default {
   activateGuidedAccess,
   deactivateGuidedAccess,
   isGuidedAccessActive
};