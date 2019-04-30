QT -= core gui

TARGET = tinySIP
TEMPLATE = lib

QMAKE_CFLAGS += \
    -O3 \
    -DHAVE_CONFIG_H \
    -DHAVE_OPENSSL=1

QMAKE_CXXFLAGS += \
    -O3 \
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
    $$PWD/../tinyIPSec/src \
    $$PWD/../tinySIGCOMP/src \
    $$PWD/../tinySDP/include \
    $$PWD/../tinyMEDIA/include

HEADERS += \
#    include/tinysip.h \
#    include/tinysip_config.h \
    include/tsip.h \
    include/tinysip/tsip_action.h \
    include/tinysip/tsip_event.h \
    include/tinysip/tsip_message.h \
#    include/tinysip/tsip_message_common.h \
    include/tinysip/tsip_ssession.h \
    include/tinysip/tsip_timers.h \
    include/tinysip/tsip_uri.h \
    include/tinysip/api/tsip_api_common.h \
    include/tinysip/api/tsip_api_info.h \
    include/tinysip/api/tsip_api_invite.h \
    include/tinysip/api/tsip_api_message.h \
    include/tinysip/api/tsip_api_options.h \
    include/tinysip/api/tsip_api_publish.h \
    include/tinysip/api/tsip_api_register.h \
    include/tinysip/api/tsip_api_subscribe.h \
    include/tinysip/authentication/tsip_challenge.h \
    include/tinysip/authentication/tsip_milenage.h \
    include/tinysip/authentication/tsip_rijndael.h \
    include/tinysip/dialogs/tsip_dialog.h \
    include/tinysip/dialogs/tsip_dialog_info.h \
    include/tinysip/dialogs/tsip_dialog_invite.h \
#    include/tinysip/dialogs/tsip_dialog_invite.common.h \
    include/tinysip/dialogs/tsip_dialog_layer.h \
    include/tinysip/dialogs/tsip_dialog_message.h \
    include/tinysip/dialogs/tsip_dialog_options.h \
    include/tinysip/dialogs/tsip_dialog_publish.h \
    include/tinysip/dialogs/tsip_dialog_register.h \
#    include/tinysip/dialogs/tsip_dialog_register.common.h \
    include/tinysip/dialogs/tsip_dialog_subscribe.h \
    include/tinysip/headers/tsip_header.h \
#    include/tinysip/headers/tsip_headers.h \
    include/tinysip/headers/tsip_header_accept.h \
    include/tinysip/headers/tsip_header_Accept_Contact.h \
    include/tinysip/headers/tsip_header_Accept_Encoding.h \
    include/tinysip/headers/tsip_header_Accept_Language.h \
    include/tinysip/headers/tsip_header_Accept_Resource_Priority.h \
    include/tinysip/headers/tsip_header_Alert_Info.h \
    include/tinysip/headers/tsip_header_Allow.h \
    include/tinysip/headers/tsip_header_Allow_Events.h \
    include/tinysip/headers/tsip_header_Authentication_Info.h \
    include/tinysip/headers/tsip_header_Authorization.h \
    include/tinysip/headers/tsip_header_Call_ID.h \
    include/tinysip/headers/tsip_header_Call_Info.h \
    include/tinysip/headers/tsip_header_Contact.h \
    include/tinysip/headers/tsip_header_Content_Disposition.h \
    include/tinysip/headers/tsip_header_Content_Encoding.h \
    include/tinysip/headers/tsip_header_Content_Language.h \
    include/tinysip/headers/tsip_header_Content_Length.h \
    include/tinysip/headers/tsip_header_Content_Type.h \
    include/tinysip/headers/tsip_header_CSeq.h \
    include/tinysip/headers/tsip_header_Date.h \
    include/tinysip/headers/tsip_header_Dummy.h \
    include/tinysip/headers/tsip_header_Error_Info.h \
    include/tinysip/headers/tsip_header_Event.h \
    include/tinysip/headers/tsip_header_Expires.h \
    include/tinysip/headers/tsip_header_From.h \
    include/tinysip/headers/tsip_header_History_Info.h \
    include/tinysip/headers/tsip_header_Identity.h \
    include/tinysip/headers/tsip_header_Identity_Info.h \
    include/tinysip/headers/tsip_header_In_Reply_To.h \
    include/tinysip/headers/tsip_header_Join.h \
    include/tinysip/headers/tsip_header_Max_Forwards.h \
    include/tinysip/headers/tsip_header_MIME_Version.h \
    include/tinysip/headers/tsip_header_Min_Expires.h \
    include/tinysip/headers/tsip_header_Min_SE.h \
    include/tinysip/headers/tsip_header_Organization.h \
    include/tinysip/headers/tsip_header_Path.h \
    include/tinysip/headers/tsip_header_Priority.h \
    include/tinysip/headers/tsip_header_Privacy.h \
    include/tinysip/headers/tsip_header_Proxy_Authenticate.h \
    include/tinysip/headers/tsip_header_Proxy_Authorization.h \
    include/tinysip/headers/tsip_header_Proxy_Require.h \
    include/tinysip/headers/tsip_header_P_Access_Network_Info.h \
    include/tinysip/headers/tsip_header_P_Answer_State.h \
    include/tinysip/headers/tsip_header_P_Asserted_Identity.h \
    include/tinysip/headers/tsip_header_P_Associated_URI.h \
    include/tinysip/headers/tsip_header_P_Called_Party_ID.h \
    include/tinysip/headers/tsip_header_P_Charging_Function_Addresses.h \
    include/tinysip/headers/tsip_header_P_Charging_Vector.h \
    include/tinysip/headers/tsip_header_P_DCS_Billing_Info.h \
    include/tinysip/headers/tsip_header_P_DCS_LAES.h \
    include/tinysip/headers/tsip_header_P_DCS_OSPS.h \
    include/tinysip/headers/tsip_header_P_DCS_Redirect.h \
    include/tinysip/headers/tsip_header_P_DCS_Trace_Party_ID.h \
    include/tinysip/headers/tsip_header_P_Early_Media.h \
    include/tinysip/headers/tsip_header_P_Media_Authorization.h \
    include/tinysip/headers/tsip_header_P_Preferred_Identity.h \
    include/tinysip/headers/tsip_header_P_Profile_Key.h \
    include/tinysip/headers/tsip_header_P_User_Database.h \
    include/tinysip/headers/tsip_header_P_Visited_Network_ID.h \
    include/tinysip/headers/tsip_header_RAck.h \
    include/tinysip/headers/tsip_header_Reason.h \
    include/tinysip/headers/tsip_header_Record_Route.h \
    include/tinysip/headers/tsip_header_Referred_By.h \
    include/tinysip/headers/tsip_header_Refer_Sub.h \
    include/tinysip/headers/tsip_header_Refer_To.h \
    include/tinysip/headers/tsip_header_Reject_Contact.h \
    include/tinysip/headers/tsip_header_Replaces.h \
    include/tinysip/headers/tsip_header_Reply_To.h \
    include/tinysip/headers/tsip_header_Request_Disposition.h \
    include/tinysip/headers/tsip_header_Require.h \
    include/tinysip/headers/tsip_header_Resource_Priority.h \
    include/tinysip/headers/tsip_header_Retry_After.h \
    include/tinysip/headers/tsip_header_Route.h \
    include/tinysip/headers/tsip_header_RSeq.h \
    include/tinysip/headers/tsip_header_Security_Client.h \
    include/tinysip/headers/tsip_header_Security_Server.h \
    include/tinysip/headers/tsip_header_Security_Verify.h \
    include/tinysip/headers/tsip_header_Server.h \
    include/tinysip/headers/tsip_header_Service_Route.h \
    include/tinysip/headers/tsip_header_Session_Expires.h \
    include/tinysip/headers/tsip_header_SIP_ETag.h \
    include/tinysip/headers/tsip_header_SIP_If_Match.h \
    include/tinysip/headers/tsip_header_Subject.h \
    include/tinysip/headers/tsip_header_Subscription_State.h \
    include/tinysip/headers/tsip_header_Supported.h \
    include/tinysip/headers/tsip_header_Target_Dialog.h \
    include/tinysip/headers/tsip_header_Timestamp.h \
    include/tinysip/headers/tsip_header_To.h \
    include/tinysip/headers/tsip_header_Unsupported.h \
    include/tinysip/headers/tsip_header_User_Agent.h \
    include/tinysip/headers/tsip_header_Via.h \
    include/tinysip/headers/tsip_header_Warning.h \
    include/tinysip/headers/tsip_header_WWW_Authenticate.h \
    include/tinysip/parsers/tsip_parser_header.h \
    include/tinysip/parsers/tsip_parser_message.h \
    include/tinysip/parsers/tsip_parser_uri.h \
    include/tinysip/sigcomp/tsip_sigcomp.h \
    include/tinysip/transactions/tsip_transac.h \
    include/tinysip/transactions/tsip_transac_ict.h \
    include/tinysip/transactions/tsip_transac_ist.h \
    include/tinysip/transactions/tsip_transac_layer.h \
    include/tinysip/transactions/tsip_transac_nict.h \
    include/tinysip/transactions/tsip_transac_nist.h \
    include/tinysip/transports/tsip_transport.h \
    include/tinysip/transports/tsip_transport_ipsec.h \
    include/tinysip/transports/tsip_transport_layer.h \
    include/tinysip/transports/tsip_transport_tls.c

SOURCES += \
    src/tsip.c \
    src/tsip_action.c \
    src/tsip_event.c \
    src/tsip_message.c \
    src/tsip_ssession.c \
    src/tsip_timers.c \
    src/tsip_uri.c \
    src/api/tsip_api_common.c \
    src/api/tsip_api_info.c \
    src/api/tsip_api_invite.c \
    src/api/tsip_api_message.c \
    src/api/tsip_api_options.c \
    src/api/tsip_api_publish.c \
    src/api/tsip_api_register.c \
    src/api/tsip_api_subscribe.c \
    src/authentication/tsip_challenge.c \
    src/authentication/tsip_milenage.c \
    src/authentication/tsip_rijndael.c \
    src/dialogs/tsip_dialog.c \
    src/dialogs/tsip_dialog_info.c \
    src/dialogs/tsip_dialog_invite.c \
    src/dialogs/tsip_dialog_invite.cdiv.c \
    src/dialogs/tsip_dialog_invite.client.c \
    src/dialogs/tsip_dialog_invite.conf.c \
    src/dialogs/tsip_dialog_invite.ect.c \
    src/dialogs/tsip_dialog_invite.hold.c \
    src/dialogs/tsip_dialog_invite.ice.c \
    src/dialogs/tsip_dialog_invite.qos.c \
    src/dialogs/tsip_dialog_invite.server.c \
    src/dialogs/tsip_dialog_invite.timers.c \
    src/dialogs/tsip_dialog_layer.c \
    src/dialogs/tsip_dialog_message.c \
    src/dialogs/tsip_dialog_options.c \
    src/dialogs/tsip_dialog_publish.client.c \
    src/dialogs/tsip_dialog_register.c \
    src/dialogs/tsip_dialog_register.client.c \
    src/dialogs/tsip_dialog_register.server.c \
    src/dialogs/tsip_dialog_subscribe.client.c \
    src/dialogs/tsip_dialog_subscribe.server.c \
    src/headers/tsip_header.c \
    src/headers/tsip_header_accept.c \
    src/headers/tsip_header_Accept_Contact.c \
    src/headers/tsip_header_Accept_Encoding.c \
    src/headers/tsip_header_Accept_Language.c \
    src/headers/tsip_header_Accept_Resource_Priority.c \
    src/headers/tsip_header_Alert_Info.c \
    src/headers/tsip_header_Allow.c \
    src/headers/tsip_header_Allow_Events.c \
    src/headers/tsip_header_Authentication_Info.c \
    src/headers/tsip_header_Authorization.c \
    src/headers/tsip_header_Call_ID.c \
    src/headers/tsip_header_Call_Info.c \
    src/headers/tsip_header_Contact.c \
    src/headers/tsip_header_Content_Disposition.c \
    src/headers/tsip_header_Content_Encoding.c \
    src/headers/tsip_header_Content_Language.c \
    src/headers/tsip_header_Content_Length.c \
    src/headers/tsip_header_Content_Type.c \
    src/headers/tsip_header_CSeq.c \
    src/headers/tsip_header_Date.c \
    src/headers/tsip_header_Dummy.c \
    src/headers/tsip_header_Error_Info.c \
    src/headers/tsip_header_Event.c \
    src/headers/tsip_header_Expires.c \
    src/headers/tsip_header_From.c \
    src/headers/tsip_header_History_Info.c \
    src/headers/tsip_header_Identity.c \
    src/headers/tsip_header_Identity_Info.c \
    src/headers/tsip_header_In_Reply_To.c \
    src/headers/tsip_header_Join.c \
    src/headers/tsip_header_Max_Forwards.c \
    src/headers/tsip_header_MIME_Version.c \
    src/headers/tsip_header_Min_Expires.c \
    src/headers/tsip_header_Min_SE.c \
    src/headers/tsip_header_Organization.c \
    src/headers/tsip_header_Path.c \
    src/headers/tsip_header_Priority.c \
    src/headers/tsip_header_Privacy.c \
    src/headers/tsip_header_Proxy_Authenticate.c \
    src/headers/tsip_header_Proxy_Authorization.c \
    src/headers/tsip_header_Proxy_Require.c \
    src/headers/tsip_header_P_Access_Network_Info.c \
    src/headers/tsip_header_P_Answer_State.c \
    src/headers/tsip_header_P_Asserted_Identity.c \
    src/headers/tsip_header_P_Associated_URI.c \
    src/headers/tsip_header_P_Called_Party_ID.c \
    src/headers/tsip_header_P_Charging_Function_Addresses.c \
    src/headers/tsip_header_P_Charging_Vector.c \
    src/headers/tsip_header_P_DCS_Billing_Info.c \
    src/headers/tsip_header_P_DCS_LAES.c \
    src/headers/tsip_header_P_DCS_OSPS.c \
    src/headers/tsip_header_P_DCS_Redirect.c \
    src/headers/tsip_header_P_DCS_Trace_Party_ID.c \
    src/headers/tsip_header_P_Early_Media.c \
    src/headers/tsip_header_P_Media_Authorization.c \
    src/headers/tsip_header_P_Preferred_Identity.c \
    src/headers/tsip_header_P_Profile_Key.c \
    src/headers/tsip_header_P_User_Database.c \
    src/headers/tsip_header_P_Visited_Network_ID.c \
    src/headers/tsip_header_RAck.c \
    src/headers/tsip_header_Reason.c \
    src/headers/tsip_header_Record_Route.c \
    src/headers/tsip_header_Referred_By.c \
    src/headers/tsip_header_Refer_Sub.c \
    src/headers/tsip_header_Refer_To.c \
    src/headers/tsip_header_Reject_Contact.c \
    src/headers/tsip_header_Replaces.c \
    src/headers/tsip_header_Reply_To.c \
    src/headers/tsip_header_Request_Disposition.c \
    src/headers/tsip_header_Require.c \
    src/headers/tsip_header_Resource_Priority.c \
    src/headers/tsip_header_Retry_After.c \
    src/headers/tsip_header_Route.c \
    src/headers/tsip_header_RSeq.c \
    src/headers/tsip_header_Security_Client.c \
    src/headers/tsip_header_Security_Server.c \
    src/headers/tsip_header_Security_Verify.c \
    src/headers/tsip_header_Server.c \
    src/headers/tsip_header_Service_Route.c \
    src/headers/tsip_header_Session_Expires.c \
    src/headers/tsip_header_SIP_ETag.c \
    src/headers/tsip_header_SIP_If_Match.c \
    src/headers/tsip_header_Subject.c \
    src/headers/tsip_header_Subscription_State.c \
    src/headers/tsip_header_Supported.c \
    src/headers/tsip_header_Target_Dialog.c \
    src/headers/tsip_header_Timestamp.c \
    src/headers/tsip_header_To.c \
    src/headers/tsip_header_Unsupported.c \
    src/headers/tsip_header_User_Agent.c \
    src/headers/tsip_header_Via.c \
    src/headers/tsip_header_Warning.c \
    src/headers/tsip_header_WWW_Authenticate.c \
    src/parsers/tsip_parser_header.c \
    src/parsers/tsip_parser_message.c \
    src/parsers/tsip_parser_uri.c \
    src/sigcomp/tsip_sigcomp.c \
    src/transactions/tsip_transac.c \
    src/transactions/tsip_transac_ict.c \
    src/transactions/tsip_transac_ist.c \
    src/transactions/tsip_transac_layer.c \
    src/transactions/tsip_transac_nict.c \
    src/transactions/tsip_transac_nist.c \
    src/transports/tsip_transport.c \
    src/transports/tsip_transport_ipsec.c \
    src/transports/tsip_transport_layer.c \
    src/transports/tsip_transport_tls.c
