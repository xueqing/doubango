QT -= core gui

TARGET = tinyDAV
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
    $$PWD/../tinySAK/src \
    $$PWD/../tinyNET/src \
    $$PWD/../tinyIPSec/src \
    $$PWD/../tinySDP/include \
    $$PWD/../tinyBFCP/include \
    $$PWD/../tinyRTP/include \
    $$PWD/../tinyMEDIA/include \
    $$PWD/../tinyMSRP/include

HEADERS += \
#    include/tinydav.h \
#    include/tinydav_config.h \
    include/tinydav/tdav.h \
    include/tinydav/tdav_session_av.h \
    include/tinydav/audio/tdav_consumer_audio.h \
    include/tinydav/audio/tdav_jitterbuffer.h \
    include/tinydav/audio/tdav_producer_audio.h \
    include/tinydav/audio/tdav_session_audio.h \
    include/tinydav/audio/tdav_speakup_jitterbuffer.h \
    include/tinydav/audio/tdav_speex_denoise.h \
    include/tinydav/audio/tdav_speex_jitterbuffer.h \
    include/tinydav/audio/tdav_speex_resampler.h \
    include/tinydav/audio/tdav_webrtc_denoise.h \
    include/tinydav/audio/alsa/tdav_common_alsa.h \
    include/tinydav/audio/alsa/tdav_consumer_alsa.h \
    include/tinydav/audio/alsa/tdav_producer_alsa.h \
    include/tinydav/audio/oss/tdav_consumer_oss.h \
    include/tinydav/audio/oss/tdav_producer_oss.h \
    include/tinydav/video/tdav_consumer_video.h \
    include/tinydav/video/tdav_converter_video.h \
    include/tinydav/video/tdav_runnable_video.h \
    include/tinydav/video/tdav_session_video.h \
    include/tinydav/video/jb/tdav_video_frame.h \
    include/tinydav/video/jb/tdav_video_jb.h \
    include/tinydav/video/v4linux/tdav_producer_video_v4l2.h \
    include/tinydav/bfcp/tdav_session_bfcp.h \
    include/tinydav/t140/tdav_consumer_t140.h \
    include/tinydav/t140/tdav_producer_t140.h \
    include/tinydav/t140/tdav_session_t140.h \
    include/tinydav/msrp/tdav_consumer_msrp.h \
    include/tinydav/msrp/tdav_producer_msrp.h \
    include/tinydav/msrp/tdav_session_msrp.h \
    include/tinydav/codecs/amr/tdav_codec_amr.h \
    include/tinydav/codecs/bfcp/tdav_codec_bfcp.h \
    include/tinydav/codecs/opus/tdav_codec_opus.h \
    include/tinydav/codecs/g711/g711.h \
    include/tinydav/codecs/g711/tdav_codec_g711.h \
    include/tinydav/codecs/g722/g722_enc_dec.h \
    include/tinydav/codecs/g722/tdav_codec_g722.h \
    include/tinydav/codecs/g729/tdav_codec_g729.h \
    include/tinydav/codecs/gsm/tdav_codec_gsm.h \
    include/tinydav/codecs/bv/tdav_codec_bv16.h \
    include/tinydav/codecs/bv/tdav_codec_bv32.h \
    include/tinydav/codecs/ilbc/tdav_codec_ilbc.h \
    include/tinydav/codecs/speex/tdav_codec_speex.h \
    include/tinydav/codecs/dtmf/tdav_codec_dtmf.h \
    include/tinydav/codecs/fec/tdav_codec_red.h \
    include/tinydav/codecs/fec/tdav_codec_ulpfec.h \
    include/tinydav/codecs/h261/tdav_codec_h261.h \
    include/tinydav/codecs/h263/tdav_codec_h263.h \
    include/tinydav/codecs/h264/tdav_codec_h264.h \
    include/tinydav/codecs/h264/tdav_codec_h264_cisco.h \
#    include/tinydav/codecs/h264/tdav_codec_h264_common.h \
    include/tinydav/codecs/h264/tdav_codec_h264_cuda.h \
#    include/tinydav/codecs/h264/tdav_codec_h264_intel.h \
    include/tinydav/codecs/h264/tdav_codec_h264_rtp.h \
    include/tinydav/codecs/theora/tdav_codec_theora.h \
    include/tinydav/codecs/vpx/tdav_codec_vp8.h \
    include/tinydav/codecs/mp4ves/tdav_codec_mp4ves.h \
    include/tinydav/codecs/msrp/tdav_codec_msrp.h \
    include/tinydav/codecs/t140/tdav_codec_t140.h

SOURCES += \
    src/tdav.c \
    src/tdav_session_av.c \
    src/audio/tdav_consumer_audio.c \
    src/audio/tdav_jitterbuffer.c \
    src/audio/tdav_producer_audio.c \
    src/audio/tdav_session_audio.c \
    src/audio/tdav_speakup_jitterbuffer.c \
    src/audio/tdav_speex_denoise.c \
    src/audio/tdav_speex_jitterbuffer.c \
    src/audio/tdav_speex_resampler.c \
    src/audio/tdav_webrtc_denoise.c \
    src/audio/alsa/tdav_common_alsa.c \
    src/audio/alsa/tdav_consumer_alsa.c \
    src/audio/alsa/tdav_producer_alsa.c \
    src/audio/oss/tdav_consumer_oss.c \
    src/audio/oss/tdav_producer_oss.c \
    src/video/tdav_consumer_video.c \
    src/video/tdav_converter_video.cxx \
    src/video/tdav_runnable_video.c \
    src/video/tdav_session_video.c \
    src/video/jb/tdav_video_frame.c \
    src/video/jb/tdav_video_jb.c \
    src/video/v4linux/tdav_producer_video_v4l2.c \
    src/bfcp/tdav_session_bfcp.c \
    src/t140/tdav_consumer_t140.c \
    src/t140/tdav_producer_t140.c \
    src/t140/tdav_session_t140.c \
    src/msrp/tdav_consumer_msrp.c \
    src/msrp/tdav_producer_msrp.c \
    src/msrp/tdav_session_msrp.c \
    src/codecs/amr/tdav_codec_amr.c \
    src/codecs/bfcp/tdav_codec_bfcp.c \
    src/codecs/opus/tdav_codec_opus.c \
    src/codecs/g711/g711.c \
    src/codecs/g711/tdav_codec_g711.c \
    src/codecs/g722/g722_decode.c \
    src/codecs/g722/g722_encode.c \
    src/codecs/g722/tdav_codec_g722.c \
    src/codecs/g729/tdav_codec_g729.c \
    src/codecs/gsm/tdav_codec_gsm.c \
    src/codecs/bv/tdav_codec_bv16.c \
    src/codecs/bv/tdav_codec_bv32.c \
    src/codecs/ilbc/tdav_codec_ilbc.c \
    src/codecs/speex/tdav_codec_speex.c \
    src/codecs/dtmf/tdav_codec_dtmf.c \
    src/codecs/fec/tdav_codec_red.c \
    src/codecs/fec/tdav_codec_ulpfec.c \
    src/codecs/h261/tdav_codec_h261.c \
    src/codecs/h263/tdav_codec_h263.c \
    src/codecs/h264/tdav_codec_h264.c \
    src/codecs/h264/tdav_codec_h264_cisco.cxx \
    src/codecs/h264/tdav_codec_h264_cuda.cxx \
    src/codecs/h264/tdav_codec_h264_rtp.c \
    src/codecs/theora/tdav_codec_theora.c \
    src/codecs/vpx/tdav_codec_vp8.c \
    src/codecs/mp4ves/tdav_codec_mp4ves.c \
    src/codecs/msrp/tdav_codec_msrp.c \
    src/codecs/t140/tdav_codec_t140.c
