#!/usr/bin/env sh

BASEDIR="$(dirname "$0")"
NAME="com.fdooch.QLColorCodeThemer.plist"

# if you see "xcode-select: error: tool 'xcodebuild' requires Xcode"
# then you need to run:
# $ xcode-select -switch /Applications/Xcode.app
xcodebuild -scheme QLColorCodeThemer build -archivePath ./build

cp "${BASEDIR}/build/Release/QLColorCodeThemer" /Applications
cp "${BASEDIR}/${NAME}" "${HOME}/Library/LaunchAgents/${NAME}"

launchctl unload "${HOME}/Library/LaunchAgents/${NAME}" || true
launchctl load "${HOME}/Library/LaunchAgents/${NAME}"
