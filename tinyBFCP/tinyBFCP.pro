QT -= core gui

TARGET = tinyBFCP
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
    $$PWD/include \
    $$PWD/../tinySAK/src \
    $$PWD/../tinyNET/src

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
