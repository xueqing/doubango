QT -= core gui

TARGET = tinyIPSec
TEMPLATE = lib

CONFIG += c++11

unix {
    CONFIG(debug, debug|release) {
        DESTDIR = $$PWD/../build/debug
    } else {
        DESTDIR = $$PWD/../build/release
    }
}

unix {
    target.path = /usr/lib
    INSTALLS += target
}

INCLUDEPATH += \
    $$PWD/../tinySAK/src

HEADERS += \
    src/tipsec.h

SOURCES += \
    src/tipsec.c
