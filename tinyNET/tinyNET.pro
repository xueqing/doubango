QT -= core gui

TARGET = tinyNET
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
    $$PWD/src/ \
    $$PWD/../tinySAK/src

HEADERS += \
    src/tinynet_config.h \
    src/tinynet.h \
    src/tnet.h \
    src/tnet_auth.h \
    src/tnet_endianness.h \
    src/tnet_hardwares.h \
    src/tnet_nat.h \
    src/tnet_poll.h \
    src/tnet_proto.h \
    src/tnet_proxy_node_socks_plugin.h \
    src/tnet_proxy_plugin.h \
    src/tnet_proxydetect.h \
    src/tnet_socket.h \
    src/tnet_transport.h \
    src/tnet_types.h \
    src/tnet_utils.h \
    src/dhcp/tnet_dhcp.h \
    src/dhcp/tnet_dhcp_message.h \
    src/dhcp/tnet_dhcp_option.h \
    src/dhcp/tnet_dhcp_option_sip.h \
    src/dhcp6/tnet_dhcp6.h \
    src/dhcp6/tnet_dhcp6_duid.h \
    src/dhcp6/tnet_dhcp6_message.h \
    src/dhcp6/tnet_dhcp6_option.h \
    src/dns/tnet_dns.h \
    src/dns/tnet_dns_a.h \
    src/dns/tnet_dns_aaaa.h \
    src/dns/tnet_dns_cname.h \
    src/dns/tnet_dns_message.h \
    src/dns/tnet_dns_mx.h \
    src/dns/tnet_dns_naptr.h \
    src/dns/tnet_dns_ns.h \
    src/dns/tnet_dns_opt.h \
    src/dns/tnet_dns_ptr.h \
    src/dns/tnet_dns_regexp.h \
    src/dns/tnet_dns_resolvconf.h \
    src/dns/tnet_dns_rr.h \
    src/dns/tnet_dns_soa.h \
    src/dns/tnet_dns_srv.h \
    src/dns/tnet_dns_txt.h \
#    src/ice/tnet_ice.h \
    src/ice/tnet_ice_candidate.h \
    src/ice/tnet_ice_ctx.h \
    src/ice/tnet_ice_event.h \
    src/ice/tnet_ice_pair.h \
    src/ice/tnet_ice_utils.h \
    src/stun/tnet_stun.h \
    src/stun/tnet_stun_attr.h \
    src/stun/tnet_stun_attribute.h \
    src/stun/tnet_stun_binding.h \
    src/stun/tnet_stun_message.h \
    src/stun/tnet_stun_pkt.h \
    src/stun/tnet_stun_types.h \
    src/stun/tnet_stun_utils.h \
    src/tls/tnet_tls.h \
    src/tls/tnet_dtls.h \
    src/turn/tnet_turn.h \
#    src/turn/tnet_turn_attr.c \
    src/turn/tnet_turn_attribute.h \
    src/turn/tnet_turn_message.h \
    src/turn/tnet_turn_session.h

SOURCES += \
    src/tnet.c \
    src/tnet_auth.c \
    src/tnet_endianness.c \
    src/tnet_nat.c \
    src/tnet_poll.c \
    src/tnet_proxy_node_socks_plugin.c \
    src/tnet_proxy_plugin.c \
    src/tnet_proxydetect.c \
    src/tnet_socket.c \
    src/tnet_transport.c \
    src/tnet_transport_poll.c \
    src/tnet_utils.c \
    src/dhcp/tnet_dhcp.c \
    src/dhcp/tnet_dhcp_message.c \
    src/dhcp/tnet_dhcp_option.c \
    src/dhcp/tnet_dhcp_option_sip.c \
    src/dhcp6/tnet_dhcp6.c \
    src/dhcp6/tnet_dhcp6_duid.c \
    src/dhcp6/tnet_dhcp6_message.c \
    src/dhcp6/tnet_dhcp6_option.c \
    src/dns/tnet_dns.c \
    src/dns/tnet_dns_a.c \
    src/dns/tnet_dns_aaaa.c \
    src/dns/tnet_dns_cname.c \
    src/dns/tnet_dns_message.c \
    src/dns/tnet_dns_mx.c \
    src/dns/tnet_dns_naptr.c \
    src/dns/tnet_dns_ns.c \
    src/dns/tnet_dns_opt.c \
    src/dns/tnet_dns_ptr.c \
    src/dns/tnet_dns_regexp.c \
    src/dns/tnet_dns_resolvconf.c \
    src/dns/tnet_dns_rr.c \
    src/dns/tnet_dns_soa.c \
    src/dns/tnet_dns_srv.c \
    src/dns/tnet_dns_txt.c \
#    src/ice/tnet_ice.c \
    src/ice/tnet_ice_candidate.c \
    src/ice/tnet_ice_ctx.c \
    src/ice/tnet_ice_event.c \
    src/ice/tnet_ice_pair.c \
    src/ice/tnet_ice_utils.c \
    src/stun/tnet_stun.c \
    src/stun/tnet_stun_attr.c \
    src/stun/tnet_stun_attribute.c \
    src/stun/tnet_stun_binding.c \
    src/stun/tnet_stun_message.c \
    src/stun/tnet_stun_pkt.c \
    src/stun/tnet_stun_utils.c \
    src/tls/tnet_tls.c \
    src/tls/tnet_dtls.c \
    src/turn/tnet_turn.c \
#    src/turn/tnet_turn_attr.c \
    src/turn/tnet_turn_attribute.c \
    src/turn/tnet_turn_message.c \
    src/turn/tnet_turn_session.c
