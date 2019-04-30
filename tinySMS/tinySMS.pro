QT -= core gui

TARGET = tinySMS
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
    $$PWD/../tinySAK/src

HEADERS += \
    include/tinysms.h \
    include/tinysms_config.h \
    include/tinysms/tsms.h \
    include/tinysms/tsms_address.h \
    include/tinysms/tsms_common.h \
    include/tinysms/tsms_packing.h \
    include/tinysms/rpdu/tsms_rpdu.h \
    include/tinysms/tpdu/tsms_tpdu_command.h \
    include/tinysms/tpdu/tsms_tpdu_deliver.h \
    include/tinysms/tpdu/tsms_tpdu_report.h \
    include/tinysms/tpdu/tsms_tpdu_status_report.h \
    include/tinysms/tpdu/tsms_tpdu_submit.h

SOURCES += \
    src/tsms.c \
    src/tsms_address.c \
    src/tsms_common.c \
    src/tsms_packing.c \
    src/rpdu/tsms_rpdu.c \
    src/tpdu/tsms_tpdu_command.c \
    src/tpdu/tsms_tpdu_deliver.c \
    src/tpdu/tsms_tpdu_report.c \
    src/tpdu/tsms_tpdu_status_report.c \
    src/tpdu/tsms_tpdu_submit.c
