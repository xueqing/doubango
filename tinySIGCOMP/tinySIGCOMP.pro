QT -= core gui

TARGET = tinySIGCOMP
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
    src/deflate.h \
    src/tcomp.h \
    src/tcomp_buffer.h \
    src/tcomp_compartment.h \
    src/tcomp_compressordata.h \
    src/tcomp_compressordisp.h \
    src/tcomp_compressor.h \
    src/tcomp_compressor_deflate.h \
    src/tcomp_compressor_dummy.h \
    src/tcomp_decompressordisp.h \
    src/tcomp_deflatedata.h \
    src/tcomp_dicts.h \
#    src/tcomp_headers_index.h \
#    src/tcomp_instructions.h \
    src/tcomp_manager.h \
    src/tcomp_message.h \
#    src/tcomp_nack_codes.h \
    src/tcomp_nackinfo.h \
#    src/tcomp_operands.h  \
    src/tcomp_params.h \
    src/tcomp_reqfeed.h \
    src/tcomp_result.h \
    src/tcomp_state.h \
    src/tcomp_statehandler.h \
#    src/tcomp_types.h \
    src/tcomp_udvm.h \
#    src/tinysigcomp_config.h \
    src/trees.h \
#    src/zconf.h \
#    src/zlib.h \
    src/zutil.h

SOURCES += \
    src/adler32.c \
    src/compress.c \
    src/deflate.c \
    src/tcomp.c \
    src/tcomp_buffer.c \
    src/tcomp_compartment.c \
    src/tcomp_compressordata.c \
    src/tcomp_compressordisp.c \
    src/tcomp_compressor_deflate.c \
    src/tcomp_compressor_dummy.c \
    src/tcomp_decompressordisp.c \
    src/tcomp_deflatedata.c \
    src/tcomp_deflatedata.ghost.c \
    src/tcomp_deflatedata.zlib.c \
    src/tcomp_dicts.c \
    src/tcomp_manager.c \
    src/tcomp_message.c \
    src/tcomp_nackinfo.c \
    src/tcomp_params.c \
    src/tcomp_reqfeed.c \
    src/tcomp_result.c \
    src/tcomp_state.c \
    src/tcomp_statehandler.c \
    src/tcomp_udvm.bytecopy.c \
    src/tcomp_udvm.c \
    src/tcomp_udvm.instructions.c \
    src/tcomp_udvm.nack.c \
    src/tcomp_udvm.operands.c \
    src/tcomp_udvm.statemanagment.c \
    src/trees.c \
    src/zutil.c
