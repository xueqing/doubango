QT -= core gui

TARGET = tinyBFCP
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
    $$PWD/include \
    $$PWD/../tinySAK/src \
    $$PWD/../tinyNET/src \
    $$PWD/../thirdparties/common/include

HEADERS += \
#    include/tinybfcp.h \
#    include/tinybfcp_config.h \
    include/tinybfcp/tbfcp_attr.h \
    include/tinybfcp/tbfcp_pkt.h \
    include/tinybfcp/tbfcp_session.h \
    include/tinybfcp/tbfcp_types.h \
    include/tinybfcp/tbfcp_utils.h

SOURCES += \
    src/tbfcp_attr.c \
    src/tbfcp_pkt.c \
    src/tbfcp_session.c \
    src/tbfcp_utils.c
