QT -= core gui

TARGET = tinySAK
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
    $$PWD/../

HEADERS += \
    src/tinysak_config.h \
    src/tsk.h \
    src/tsk_base64.h \
    src/tsk_binaryutils.h \
    src/tsk_buffer.h \
    src/tsk_common.h \
    src/tsk_condwait.h \
    src/tsk_debug.h \
    src/tsk_errno.h \
    src/tsk_fsm.h \
    src/tsk_hmac.h \
    src/tsk_list.h \
    src/tsk_md5.h \
    src/tsk_memory.h \
    src/tsk_mutex.h \
    src/tsk_object.h \
    src/tsk_options.h \
    src/tsk_params.h \
    src/tsk_plugin.h \
    src/tsk_ppfcs16.h \
    src/tsk_ppfcs32.h \
    src/tsk_ragel_state.h \
    src/tsk_runnable.h \
    src/tsk_safeobj.h \
    src/tsk_semaphore.h \
    src/tsk_sha1.h \
    src/tsk_string.h \
    src/tsk_thread.h \
    src/tsk_time.h \
    src/tsk_timer.h \
    src/tsk_url.h \
    src/tsk_uuid.h \
    src/tsk_xml.h

SOURCES += \
    src/tsk.c \
    src/tsk_base64.c \
    src/tsk_binaryutils.c \
    src/tsk_buffer.c \
    src/tsk_condwait.c \
    src/tsk_debug.c \
    src/tsk_fsm.c \
    src/tsk_hmac.c \
    src/tsk_list.c \
    src/tsk_md5.c \
    src/tsk_memory.c \
    src/tsk_mutex.c \
    src/tsk_object.c \
    src/tsk_options.c \
    src/tsk_params.c \
    src/tsk_plugin.c \
    src/tsk_ppfcs16.c \
    src/tsk_ppfcs32.c \
    src/tsk_ragel_state.c \
    src/tsk_runnable.c \
    src/tsk_safeobj.c \
    src/tsk_semaphore.c \
    src/tsk_sha1.c \
    src/tsk_string.c \
    src/tsk_thread.c \
    src/tsk_time.c \
    src/tsk_timer.c \
    src/tsk_url.c \
    src/tsk_uuid.c \
    src/tsk_xml.c
