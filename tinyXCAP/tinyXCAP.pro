QT -= core gui

TARGET = tinyXCAP
TEMPLATE = lib

QMAKE_CFLAGS += \
    -DHAVE_CONFIG_H \
    -DHAVE_OPENSSL=1

QMAKE_CXXFLAGS += \
    -DHAVE_CONFIG_H \
    -DHAVE_OPENSSL=1

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

CI-TEST{
    target.path = $$(INSTALL_PATH)/ci-test/doubangolib
    INSTALLS = target
}

INCLUDEPATH += \
    $$PWD/../ \
    $$PWD/include/ \
    $$PWD/../tinySAK/src \
    $$PWD/../tinyNET/src \
    $$PWD/../tinyHTTP/include/ \
    $$PWD/../thirdparties/common/include

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
