QT -= core gui

TARGET = tinyHTTP
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
    $$PWD/include/ \
    $$PWD/../tinySAK/src \
    $$PWD/../tinyNET/src

HEADERS += \
    include/thttp.h \
    include/tinyhttp.h \
    include/tinyhttp_config.h \
    include/tinyhttp/thttp_action.h \
    include/tinyhttp/thttp_dialog.h \
    include/tinyhttp/thttp_event.h \
    include/tinyhttp/thttp_message.h \
    include/tinyhttp/thttp_proxy_node_plugin.h \
    include/tinyhttp/thttp_session.h \
    include/tinyhttp/thttp_url.h \
    include/tinyhttp/auth/thttp_auth.h \
    include/tinyhttp/auth/thttp_challenge.h \
    include/tinyhttp/headers/thttp_header.h \
    include/tinyhttp/headers/thttp_header.h \
    include/tinyhttp/headers/thttp_header_Authorization.h \
    include/tinyhttp/headers/thttp_header_Content_Length.h \
    include/tinyhttp/headers/thttp_header_Content_Type.h \
    include/tinyhttp/headers/thttp_header_Dummy.h \
    include/tinyhttp/headers/thttp_header_ETag.h \
    include/tinyhttp/headers/thttp_header_Sec_WebSocket_Accept.h \
    include/tinyhttp/headers/thttp_header_Sec_WebSocket_Key.h \
    include/tinyhttp/headers/thttp_header_Sec_WebSocket_Protocol.h \
    include/tinyhttp/headers/thttp_header_Sec_WebSocket_Version.h \
    include/tinyhttp/headers/thttp_header_Transfer_Encoding.h \
    include/tinyhttp/headers/thttp_header_WWW_Authenticate.h \
    include/tinyhttp/parsers/thttp_parser_header.h \
    include/tinyhttp/parsers/thttp_parser_message.h \
    include/tinyhttp/parsers/thttp_parser_url.h

SOURCES += \
    src/thttp.c \
    src/thttp_action.c \
    src/thttp_dialog.c \
    src/thttp_event.c \
    src/thttp_message.c \
    src/thttp_proxy_node_plugin.c \
    src/thttp_session.c \
    src/thttp_url.c \
    src/auth/thttp_auth.c \
    src/auth/thttp_challenge.c \
    src/headers/thttp_header.c \
    src/headers/thttp_header_Authorization.c \
    src/headers/thttp_header_Content_Length.c \
    src/headers/thttp_header_Content_Type.c \
    src/headers/thttp_header_Dummy.c \
    src/headers/thttp_header_ETag.c \
    src/headers/thttp_header_Sec_WebSocket_Accept.c \
    src/headers/thttp_header_Sec_WebSocket_Key.c \
    src/headers/thttp_header_Sec_WebSocket_Protocol.c \
    src/headers/thttp_header_Sec_WebSocket_Version.c \
    src/headers/thttp_header_Transfer_Encoding.c \
    src/headers/thttp_header_WWW_Authenticate.c \
    src/parsers/thttp_parser_header.c \
    src/parsers/thttp_parser_message.c \
    src/parsers/thttp_parser_url.c
