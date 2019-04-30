QT -= core gui

TARGET = tinyMEDIA
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
    $$PWD/../tinySDP/include

HEADERS += \
    include/tmedia.h \
#    include/tinymedia_config.h \
    include/tinymedia/tmedia_codec.h \
    include/tinymedia/tmedia_codec_dummy.h \
    include/tinymedia/tmedia_common.h \
    include/tinymedia/tmedia_consumer.h \
    include/tinymedia/tmedia_converter_video.h \
    include/tinymedia/tmedia_defaults.h \
    include/tinymedia/tmedia_denoise.h \
    include/tinymedia/tmedia_imageattr.h \
    include/tinymedia/tmedia_jitterbuffer.h \
    include/tinymedia/tmedia_params.h \
    include/tinymedia/tmedia_producer.h \
    include/tinymedia/tmedia_qos.h \
    include/tinymedia/tmedia_resampler.h \
    include/tinymedia/tmedia_session.h \
    include/tinymedia/tmedia_session_dummy.h \
    include/tinymedia/tmedia_session_ghost.h \
    include/tinymedia/content/tmedia_content.h \
    include/tinymedia/content/tmedia_content_cpim.h \
    include/tinymedia/content/tmedia_content_multipart.h \
    include/tinymedia/content/tmedia_content_sip_frag.h

SOURCES += \
    src/tmedia.c \
    src/tmedia_codec.c \
    src/tmedia_codec_dummy.c \
    src/tmedia_common.c \
    src/tmedia_consumer.c \
    src/tmedia_converter_video.c \
    src/tmedia_defaults.c \
    src/tmedia_denoise.c \
    src/tmedia_imageattr.c \
    src/tmedia_jitterbuffer.c \
    src/tmedia_params.c \
    src/tmedia_producer.c \
    src/tmedia_qos.c \
    src/tmedia_resampler.c \
    src/tmedia_session.c \
    src/tmedia_session_dummy.c \
    src/tmedia_session_ghost.c \
    src/content/tmedia_content.c \
    src/content/tmedia_content_cpim.c \
    src/content/tmedia_content_multipart.c \
    src/content/tmedia_content_sip_frag.c
