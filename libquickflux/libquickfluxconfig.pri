
android: {
    ANDROID_MIN_SDK_VERSION=28
    ANDROID_API_VERSION=$$ANDROID_MIN_SDK_VERSION
}

macx: {
    greaterThan(QMAKE_HOST.version, 19) {
        QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.15
        CONFIG+=sdk_no_version_check
    }
    message($${TARGET} "Selected SDK v"$${QMAKE_MACOSX_DEPLOYMENT_TARGET})
}

win32: {
    CONFIG += c++20
    QMAKE_CXXFLAGS += /std:c++20
}
unix: {
    CONFIG += c++2a
    QMAKE_CXXFLAGS += -std=c++2a -std=gnu++2a
    QMAKE_CXXFLAGS_WARN_ON += -Wno-unknown-pragmas -Wno-attributes
}


