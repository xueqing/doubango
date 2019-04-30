QT -= core gui

TARGET = tinyXCAP
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
    $$PWD/include/ \
    $$PWD/../tinySAK/src \
    $$PWD/../tinyNET/src \
    $$PWD/../tinyHTTP/include/

HEADERS += \
    include/tinyxcap.h \
    include/tinyxcap_config.h \
    include/txcap.h \
    include/tinyxcap/txcap_action.h \
    include/tinyxcap/txcap_auid.h \
    include/tinyxcap/txcap_document.h \
    include/tinyxcap/txcap_node.h \
    include/tinyxcap/txcap_selector.h

SOURCES += \
    src/txcap.c \
    src/txcap_action.c \
    src/txcap_auid.c \
    src/txcap_document.c \
    src/txcap_node.c \
    src/txcap_selector.c
