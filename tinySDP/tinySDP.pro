QT -= core gui

TARGET = tinySDP
TEMPLATE = lib

CONFIG += c++11

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

INCLUDEPATH += \
    $$PWD/../ \
    $$PWD/include \
    $$PWD/../tinySAK/src

HEADERS += \
#    include/tinysdp_config.h \
#    include/tinysdp.h \
    include/tsdp.h \
    include/headers/tsdp_message.h \
    include/tinysdp/headers/tsdp_header.h \
    include/tinysdp/headers/tsdp_header_A.h \
    include/tinysdp/headers/tsdp_header_B.h \
    include/tinysdp/headers/tsdp_header_C.h \
    include/tinysdp/headers/tsdp_header_Dummy.h \
    include/tinysdp/headers/tsdp_header_E.h \
    include/tinysdp/headers/tsdp_header_I.h \
    include/tinysdp/headers/tsdp_header_K.h \
    include/tinysdp/headers/tsdp_header_M.h \
    include/tinysdp/headers/tsdp_header_O.h \
    include/tinysdp/headers/tsdp_header_P.h \
    include/tinysdp/headers/tsdp_header_R.h \
    include/tinysdp/headers/tsdp_header_S.h \
    include/tinysdp/headers/tsdp_header_T.h \
    include/tinysdp/headers/tsdp_header_U.h \
    include/tinysdp/headers/tsdp_header_V.h \
    include/tinysdp/headers/tsdp_header_Z.h \
#    include/tinysdp/parsers/tsdp_parser_header.h \
    include/tinysdp/parsers/tsdp_parser_message.h

SOURCES += \
    src/tsdp.c \
    src/tsdp_message.c \
    src/headers/tsdp_header.c \
    src/headers/tsdp_header_A.c \
    src/headers/tsdp_header_B.c \
    src/headers/tsdp_header_C.c \
    src/headers/tsdp_header_Dummy.c \
    src/headers/tsdp_header_E.c \
    src/headers/tsdp_header_I.c \
    src/headers/tsdp_header_K.c \
    src/headers/tsdp_header_M.c \
    src/headers/tsdp_header_O.c \
    src/headers/tsdp_header_P.c \
    src/headers/tsdp_header_R.c \
    src/headers/tsdp_header_S.c \
    src/headers/tsdp_header_T.c \
    src/headers/tsdp_header_U.c \
    src/headers/tsdp_header_V.c \
    src/headers/tsdp_header_Z.c \
    src/parsers/tsdp_parser_message.c
