#!/bin/sh


IJKProjectPath="${PROJECT_DIR}/../../"

if [[ ! -d $IJKProjectPath/ios/build ]]; then
    cd $IJKProjectPath
    sh "init-ios.sh"

    cd $IJKProjectPath/ios
    sh "compile-ffmpeg.sh" clean
    sh "compile-ffmpeg.sh" all
fi
