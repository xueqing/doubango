QT -= core gui

TARGET = tinyWRAP
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

INCLUDEPATH += \
    $$PWD/../ \
    $$PWD/include \
    $$PWD/../tinySAK/src \
    $$PWD/../tinyNET/src \
    $$PWD/../tinyHTTP/include \
    $$PWD/../tinyXCAP/include \
    $$PWD/../tinySMS/include \
    $$PWD/../tinySDP/include \
    $$PWD/../tinyMEDIA/include \
    $$PWD/../tinyMSRP/include \
    $$PWD/../tinyDAV/include \
    $$PWD/../tinySIP/include

HEADERS += \
    _common/ActionConfig.h \
    _common/AudioResampler.h \
#    _common/Common.h \
    _common/DDebug.h \
    _common/MediaContent.h \
    _common/MediaSessionMgr.h \
    _common/Msrp.h \
    _common/ProxyConsumer.h \
    _common/ProxyPluginMgr.h \
    _common/ProxyProducer.h \
    _common/SafeObject.h \
    _common/SipCallback.h \
    _common/SipEvent.h \
    _common/SipMessage.h \
    _common/SipSession.h \
    _common/SipStack.h \
    _common/SipUri.h \
    _common/SMSEncoder.h \
#    _common/tinyWRAP_config.h \
    _common/Xcap.h

SOURCES += \
    _common/ActionConfig.cxx \
    _common/AudioResampler.cxx \
    _common/DDebug.cxx \
    _common/MediaContent.cxx \
    _common/MediaSessionMgr.cxx \
    _common/Msrp.cxx \
    _common/ProxyConsumer.cxx \
    _common/ProxyPluginMgr.cxx \
    _common/ProxyProducer.cxx \
    _common/SafeObject.cxx \
    _common/SipCallback.cxx \
    _common/SipEvent.cxx \
    _common/SipMessage.cxx \
    _common/SipSession.cxx \
    _common/SipStack.cxx \
    _common/SipUri.cxx \
    _common/SMSEncoder.cxx \
    _common/Xcap.cxx
