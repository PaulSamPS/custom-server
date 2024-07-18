const ExpoConfig = require('@expo/config');
const path = require('path');

const projectDir = path.join(__dirname, '..', '..', '/custom-server--client');

const { exp } = ExpoConfig.getConfig(projectDir, {
  skipSDKVersionRequirement: true,
  isPublicConfig: true,
});

console.log(JSON.stringify(exp));

