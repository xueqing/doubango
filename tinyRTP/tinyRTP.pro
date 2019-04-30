QT -= core gui

TARGET = tinyRTP
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
    $$PWD/../tinyNET/src \
    $$PWD/../tinyMEDIA/include

HEADERS += \
#    include/tinyrtp.h \
#    include/tinyrtp_config.h \
    include/tinyrtp/trtp.h \
    include/tinyrtp/trtp_manager.h \
    include/tinyrtp/trtp_srtp.h \
    include/tinyrtp/rtcp/trtp_rtcp_header.h \
    include/tinyrtp/rtcp/trtp_rtcp_packet.h \
    include/tinyrtp/rtcp/trtp_rtcp_rblock.h \
    include/tinyrtp/rtcp/trtp_rtcp_report.h \
    include/tinyrtp/rtcp/trtp_rtcp_report_bye.h \
    include/tinyrtp/rtcp/trtp_rtcp_report_fb.h \
    include/tinyrtp/rtcp/trtp_rtcp_report_rr.h \
    include/tinyrtp/rtcp/trtp_rtcp_report_sdes.h \
    include/tinyrtp/rtcp/trtp_rtcp_report_sr.h \
    include/tinyrtp/rtcp/trtp_rtcp_report_xr.h \
    include/tinyrtp/rtcp/trtp_rtcp_sdes_chunck.h \
    include/tinyrtp/rtcp/trtp_rtcp_sdes_item.h \
    include/tinyrtp/rtcp/trtp_rtcp_session.h \
    include/tinyrtp/rtp/trtp_rtp_header.h \
    include/tinyrtp/rtp/trtp_rtp_packet.h \
    include/tinyrtp/rtp/trtp_rtp_session.h

SOURCES += \
    src/trtp.c \
    src/trtp_manager.c \
    src/trtp_srtp.c \
    src/rtcp/trtp_rtcp_header.c \
    src/rtcp/trtp_rtcp_packet.c \
    src/rtcp/trtp_rtcp_rblock.c \
    src/rtcp/trtp_rtcp_report.c \
    src/rtcp/trtp_rtcp_report_bye.c \
    src/rtcp/trtp_rtcp_report_fb.c \
    src/rtcp/trtp_rtcp_report_rr.c \
    src/rtcp/trtp_rtcp_report_sdes.c \
    src/rtcp/trtp_rtcp_report_sr.c \
    src/rtcp/trtp_rtcp_report_xr.c \
    src/rtcp/trtp_rtcp_sdes_chunck.c \
    src/rtcp/trtp_rtcp_sdes_item.c \
    src/rtcp/trtp_rtcp_session.c \
    src/rtp/trtp_rtp_header.c \
    src/rtp/trtp_rtp_packet.c \
    src/rtp/trtp_rtp_session.c
