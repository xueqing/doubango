QT -= core gui

TARGET = tinyMSRP
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
    $$PWD/../tinyHTTP/include \
    $$PWD/../tinySDP/include \
    $$PWD/../thirdparties/common/include

HEADERS += \
    include/tmsrp.h \
#    include/tinymsrp.h \
#    include/tinymsrp_config.h \
    include/tinymsrp/tmsrp_event.h \
    include/tinymsrp/tmsrp_message.h \
    include/tinymsrp/tmsrp_uri.h \
    include/tinymsrp/headers/tmsrp_header.h \
    include/tinymsrp/headers/tmsrp_header_Authentication-Info.h \
    include/tinymsrp/headers/tmsrp_header_Authorization.h \
    include/tinymsrp/headers/tmsrp_header_Byte-Range.h \
    include/tinymsrp/headers/tmsrp_header_Content-Type.h \
    include/tinymsrp/headers/tmsrp_header_Dummy.h \
    include/tinymsrp/headers/tmsrp_header_Expires.h \
    include/tinymsrp/headers/tmsrp_header_Failure-Report.h \
    include/tinymsrp/headers/tmsrp_header_From-Path.h \
    include/tinymsrp/headers/tmsrp_header_Max-Expires.h \
    include/tinymsrp/headers/tmsrp_header_Message-ID.h \
    include/tinymsrp/headers/tmsrp_header_Min-Expires.h \
    include/tinymsrp/headers/tmsrp_header_Status.h \
    include/tinymsrp/headers/tmsrp_header_Success-Report.h \
    include/tinymsrp/headers/tmsrp_header_To-Path.h \
    include/tinymsrp/headers/tmsrp_header_Use-Path.h \
    include/tinymsrp/headers/tmsrp_header_WWW-Authenticate.h \
#    include/tinymsrp/parsers/tmsrp_parser_header.h \
    include/tinymsrp/parsers/tmsrp_parser_message.h \
    include/tinymsrp/parsers/tmsrp_parser_uri.h \
    include/tinymsrp/session/tmsrp_config.h \
    include/tinymsrp/session/tmsrp_data.h \
    include/tinymsrp/session/tmsrp_receiver.h \
    include/tinymsrp/session/tmsrp_sender.h

SOURCES += \
    src/tmsrp.c \
    src/tmsrp_event.c \
    src/tmsrp_message.c \
    src/tmsrp_uri.c \
    src/headers/tmsrp_header.c \
    src/headers/tmsrp_header_Authentication-Info.c \
    src/headers/tmsrp_header_Authorization.c \
    src/headers/tmsrp_header_Byte-Range.c \
    src/headers/tmsrp_header_Content-Type.c \
    src/headers/tmsrp_header_Dummy.c \
    src/headers/tmsrp_header_Expires.c \
    src/headers/tmsrp_header_Failure-Report.c \
    src/headers/tmsrp_header_From-Path.c \
    src/headers/tmsrp_header_Max-Expires.c \
    src/headers/tmsrp_header_Message-ID.c \
    src/headers/tmsrp_header_Min-Expires.c \
    src/headers/tmsrp_header_Status.c \
    src/headers/tmsrp_header_Success-Report.c \
    src/headers/tmsrp_header_To-Path.c \
    src/headers/tmsrp_header_Use-Path.c \
    src/headers/tmsrp_header_WWW-Authenticate.c \
    src/parsers/tmsrp_parser_message.c \
    src/parsers/tmsrp_parser_uri.c \
    src/session/tmsrp_config.c \
    src/session/tmsrp_data.c \
    src/session/tmsrp_receiver.c \
    src/session/tmsrp_sender.c
