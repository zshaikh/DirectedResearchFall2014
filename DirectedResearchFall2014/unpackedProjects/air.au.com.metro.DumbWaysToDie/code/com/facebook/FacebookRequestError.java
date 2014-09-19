package com.facebook;

import java.net.*;
import com.facebook.internal.*;
import org.json.*;

public final class FacebookRequestError
{
    private static final String BODY_KEY = "body";
    private static final String CODE_KEY = "code";
    private static final int EC_APP_NOT_INSTALLED = 458;
    private static final int EC_APP_TOO_MANY_CALLS = 4;
    private static final int EC_EXPIRED = 463;
    private static final int EC_INVALID_SESSION = 102;
    private static final int EC_INVALID_TOKEN = 190;
    private static final int EC_PASSWORD_CHANGED = 460;
    private static final int EC_PERMISSION_DENIED = 10;
    private static final FacebookRequestError$Range EC_RANGE_PERMISSION;
    private static final int EC_SERVICE_UNAVAILABLE = 2;
    private static final int EC_UNCONFIRMED_USER = 464;
    private static final int EC_UNKNOWN_ERROR = 1;
    private static final int EC_USER_CHECKPOINTED = 459;
    private static final int EC_USER_TOO_MANY_CALLS = 17;
    private static final String ERROR_CODE_FIELD_KEY = "code";
    private static final String ERROR_CODE_KEY = "error_code";
    private static final String ERROR_KEY = "error";
    private static final String ERROR_MESSAGE_FIELD_KEY = "message";
    private static final String ERROR_MSG_KEY = "error_msg";
    private static final String ERROR_REASON_KEY = "error_reason";
    private static final String ERROR_SUB_CODE_KEY = "error_subcode";
    private static final String ERROR_TYPE_FIELD_KEY = "type";
    private static final FacebookRequestError$Range HTTP_RANGE_CLIENT_ERROR;
    private static final FacebookRequestError$Range HTTP_RANGE_SERVER_ERROR;
    private static final FacebookRequestError$Range HTTP_RANGE_SUCCESS;
    public static final int INVALID_ERROR_CODE = -1;
    public static final int INVALID_HTTP_STATUS_CODE = -1;
    private static final int INVALID_MESSAGE_ID;
    private final Object batchRequestResult;
    private final FacebookRequestError$Category category;
    private final HttpURLConnection connection;
    private final int errorCode;
    private final String errorMessage;
    private final String errorType;
    private final FacebookException exception;
    public final String gvUserActionMessageIdString;
    private final JSONObject requestResult;
    private final JSONObject requestResultBody;
    private final int requestStatusCode;
    private final boolean shouldNotifyUser;
    private final int subErrorCode;
    private final int userActionMessageId;
    
    static {
        EC_RANGE_PERMISSION = new FacebookRequestError$Range(200, 299, null);
        HTTP_RANGE_SUCCESS = new FacebookRequestError$Range(200, 299, null);
        HTTP_RANGE_CLIENT_ERROR = new FacebookRequestError$Range(400, 499, null);
        HTTP_RANGE_SERVER_ERROR = new FacebookRequestError$Range(500, 599, null);
    }
    
    private FacebookRequestError(final int n, final int n2, final int n3, final String s, final String s2, final JSONObject jsonObject, final JSONObject jsonObject2, final Object o, final HttpURLConnection httpURLConnection) {
        this(n, n2, n3, s, s2, jsonObject, jsonObject2, o, httpURLConnection, null);
    }
    
    private FacebookRequestError(final int requestStatusCode, final int errorCode, final int subErrorCode, final String errorType, final String errorMessage, final JSONObject requestResultBody, final JSONObject requestResult, final Object batchRequestResult, final HttpURLConnection connection, final FacebookException exception) {
        super();
        this.requestStatusCode = requestStatusCode;
        this.errorCode = errorCode;
        this.subErrorCode = subErrorCode;
        this.errorType = errorType;
        this.errorMessage = errorMessage;
        this.requestResultBody = requestResultBody;
        this.requestResult = requestResult;
        this.batchRequestResult = batchRequestResult;
        this.connection = connection;
        int n;
        if (exception != null) {
            this.exception = exception;
            n = 1;
        }
        else {
            this.exception = new FacebookServiceException(this, errorMessage);
            n = 0;
        }
        String gvUserActionMessageIdString;
        FacebookRequestError$Category category;
        boolean shouldNotifyUser;
        if (n != 0) {
            final FacebookRequestError$Category client = FacebookRequestError$Category.CLIENT;
            gvUserActionMessageIdString = "";
            category = client;
            shouldNotifyUser = false;
        }
        else {
            if (errorCode == 1 || errorCode == 2) {
                final FacebookRequestError$Category server = FacebookRequestError$Category.SERVER;
                gvUserActionMessageIdString = "";
                category = server;
                shouldNotifyUser = false;
            }
            else if (errorCode == 4 || errorCode == 17) {
                final FacebookRequestError$Category throttling = FacebookRequestError$Category.THROTTLING;
                gvUserActionMessageIdString = "";
                category = throttling;
                shouldNotifyUser = false;
            }
            else if (errorCode == 10 || FacebookRequestError.EC_RANGE_PERMISSION.contains(errorCode)) {
                final FacebookRequestError$Category permission = FacebookRequestError$Category.PERMISSION;
                gvUserActionMessageIdString = "string.com_facebook_requesterror_permissions";
                category = permission;
                shouldNotifyUser = false;
            }
            else if (errorCode == 102 || errorCode == 190) {
                if (subErrorCode == 459 || subErrorCode == 464) {
                    final FacebookRequestError$Category authentication_RETRY = FacebookRequestError$Category.AUTHENTICATION_RETRY;
                    gvUserActionMessageIdString = "string.com_facebook_requesterror_web_login";
                    category = authentication_RETRY;
                    shouldNotifyUser = true;
                }
                else {
                    final FacebookRequestError$Category authentication_REOPEN_SESSION = FacebookRequestError$Category.AUTHENTICATION_REOPEN_SESSION;
                    if (subErrorCode == 458 || subErrorCode == 463) {
                        gvUserActionMessageIdString = "string.com_facebook_requesterror_relogin";
                        category = authentication_REOPEN_SESSION;
                        shouldNotifyUser = false;
                    }
                    else if (subErrorCode == 460) {
                        gvUserActionMessageIdString = "string.com_facebook_requesterror_password_changed";
                        category = authentication_REOPEN_SESSION;
                        shouldNotifyUser = false;
                    }
                    else {
                        gvUserActionMessageIdString = "string.com_facebook_requesterror_reconnect";
                        category = authentication_REOPEN_SESSION;
                        shouldNotifyUser = true;
                    }
                }
            }
            else {
                gvUserActionMessageIdString = "";
                shouldNotifyUser = false;
                category = null;
            }
            if (category == null) {
                if (FacebookRequestError.HTTP_RANGE_CLIENT_ERROR.contains(requestStatusCode)) {
                    category = FacebookRequestError$Category.BAD_REQUEST;
                }
                else if (FacebookRequestError.HTTP_RANGE_SERVER_ERROR.contains(requestStatusCode)) {
                    category = FacebookRequestError$Category.SERVER;
                }
                else {
                    category = FacebookRequestError$Category.OTHER;
                }
            }
        }
        this.category = category;
        this.userActionMessageId = 0;
        this.shouldNotifyUser = shouldNotifyUser;
        this.gvUserActionMessageIdString = gvUserActionMessageIdString;
    }
    
    public FacebookRequestError(final int n, final String s, final String s2) {
        this(-1, n, -1, s, s2, null, null, null, null, null);
    }
    
    FacebookRequestError(final HttpURLConnection httpURLConnection, final Exception ex) {
        FacebookException ex2;
        if (ex instanceof FacebookException) {
            ex2 = (FacebookException)ex;
        }
        else {
            ex2 = new FacebookException(ex);
        }
        this(-1, -1, -1, null, null, null, null, null, httpURLConnection, ex2);
    }
    
    static FacebookRequestError checkResponseAndCreateError(final JSONObject jsonObject, final Object o, final HttpURLConnection httpURLConnection) {
        while (true) {
            while (true) {
                Label_0314: {
                    while (true) {
                        Label_0308: {
                            try {
                                if (jsonObject.has("code")) {
                                    final int int1 = jsonObject.getInt("code");
                                    final Object stringPropertyAsJSON = Utility.getStringPropertyAsJSON(jsonObject, "body", "FACEBOOK_NON_JSON_RESULT");
                                    if (stringPropertyAsJSON != null && stringPropertyAsJSON instanceof JSONObject) {
                                        final JSONObject jsonObject2 = (JSONObject)stringPropertyAsJSON;
                                        String s;
                                        int n;
                                        int n2;
                                        String s2;
                                        int n3;
                                        if (jsonObject2.has("error")) {
                                            final JSONObject jsonObject3 = (JSONObject)Utility.getStringPropertyAsJSON(jsonObject2, "error", null);
                                            final String optString = jsonObject3.optString("type", (String)null);
                                            final String optString2 = jsonObject3.optString("message", (String)null);
                                            final int optInt = jsonObject3.optInt("code", -1);
                                            final int optInt2 = jsonObject3.optInt("error_subcode", -1);
                                            s = optString2;
                                            n = optInt2;
                                            n2 = 1;
                                            s2 = optString;
                                            n3 = optInt;
                                        }
                                        else {
                                            if (!jsonObject2.has("error_code") && !jsonObject2.has("error_msg") && !jsonObject2.has("error_reason")) {
                                                break Label_0314;
                                            }
                                            final String optString3 = jsonObject2.optString("error_reason", (String)null);
                                            final String optString4 = jsonObject2.optString("error_msg", (String)null);
                                            final int optInt3 = jsonObject2.optInt("error_code", -1);
                                            final int optInt4 = jsonObject2.optInt("error_subcode", -1);
                                            s = optString4;
                                            n3 = optInt3;
                                            n = optInt4;
                                            s2 = optString3;
                                            n2 = 1;
                                        }
                                        if (n2 != 0) {
                                            return new FacebookRequestError(int1, n3, n, s2, s, jsonObject2, jsonObject, o, httpURLConnection);
                                        }
                                    }
                                    if (!FacebookRequestError.HTTP_RANGE_SUCCESS.contains(int1)) {
                                        if (jsonObject.has("body")) {
                                            final JSONObject jsonObject4 = (JSONObject)Utility.getStringPropertyAsJSON(jsonObject, "body", "FACEBOOK_NON_JSON_RESULT");
                                            return new FacebookRequestError(int1, -1, -1, null, null, jsonObject4, jsonObject, o, httpURLConnection);
                                        }
                                        break Label_0308;
                                    }
                                }
                            }
                            catch (JSONException ex) {}
                            break;
                        }
                        final JSONObject jsonObject4 = null;
                        continue;
                    }
                }
                int n2 = 0;
                int n3 = 0;
                int n = 0;
                String s2 = null;
                String s = null;
                continue;
            }
        }
        return null;
    }
    
    public final Object getBatchRequestResult() {
        return this.batchRequestResult;
    }
    
    public final FacebookRequestError$Category getCategory() {
        return this.category;
    }
    
    public final HttpURLConnection getConnection() {
        return this.connection;
    }
    
    public final int getErrorCode() {
        return this.errorCode;
    }
    
    public final String getErrorMessage() {
        if (this.errorMessage != null) {
            return this.errorMessage;
        }
        return this.exception.getLocalizedMessage();
    }
    
    public final String getErrorType() {
        return this.errorType;
    }
    
    public final FacebookException getException() {
        return this.exception;
    }
    
    public final JSONObject getRequestResult() {
        return this.requestResult;
    }
    
    public final JSONObject getRequestResultBody() {
        return this.requestResultBody;
    }
    
    public final int getRequestStatusCode() {
        return this.requestStatusCode;
    }
    
    public final int getSubErrorCode() {
        return this.subErrorCode;
    }
    
    public final int getUserActionMessageId() {
        return this.userActionMessageId;
    }
    
    public final boolean shouldNotifyUser() {
        return this.shouldNotifyUser;
    }
    
    @Override
    public final String toString() {
        return "{HttpStatus: " + this.requestStatusCode + ", errorCode: " + this.errorCode + ", errorType: " + this.errorType + ", errorMessage: " + this.errorMessage + "}";
    }
}
