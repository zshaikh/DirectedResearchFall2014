package com.facebook.internal;

import java.util.*;
import com.facebook.*;

public final class ServerProtocol
{
    public static final String BATCHED_REST_METHOD_URL_BASE = "method/";
    private static final String DIALOG_AUTHORITY_FORMAT = "m.%s";
    public static final String DIALOG_PARAM_ACCESS_TOKEN = "access_token";
    public static final String DIALOG_PARAM_APP_ID = "app_id";
    public static final String DIALOG_PARAM_CLIENT_ID = "client_id";
    public static final String DIALOG_PARAM_DISPLAY = "display";
    public static final String DIALOG_PARAM_E2E = "e2e";
    public static final String DIALOG_PARAM_REDIRECT_URI = "redirect_uri";
    public static final String DIALOG_PARAM_SCOPE = "scope";
    public static final String DIALOG_PARAM_TYPE = "type";
    public static final String DIALOG_PATH = "dialog/";
    private static final String GRAPH_URL_FORMAT = "https://graph.%s";
    private static final String GRAPH_VIDEO_URL_FORMAT = "https://graph-video.%s";
    private static final String REST_URL_FORMAT = "https://api.%s/method";
    public static final Collection<String> errorsProxyAuthDisabled;
    public static final Collection<String> errorsUserCanceled;
    
    static {
        errorsProxyAuthDisabled = Utility.unmodifiableCollection("service_disabled", "AndroidAuthKillSwitchException");
        errorsUserCanceled = Utility.unmodifiableCollection("access_denied", "OAuthAccessDeniedException");
    }
    
    public static final String getDialogAuthority() {
        return String.format("m.%s", Settings.getFacebookDomain());
    }
    
    public static final String getGraphUrlBase() {
        return String.format("https://graph.%s", Settings.getFacebookDomain());
    }
    
    public static final String getGraphVideoUrlBase() {
        return String.format("https://graph-video.%s", Settings.getFacebookDomain());
    }
    
    public static final String getRestUrlBase() {
        return String.format("https://api.%s/method", Settings.getFacebookDomain());
    }
}
