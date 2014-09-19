package com.facebook;

import java.io.*;
import java.util.*;
import com.facebook.internal.*;
import android.text.*;

class AuthorizationClient$Result implements Serializable
{
    private static final long serialVersionUID = 1L;
    final AuthorizationClient$Result$Code code;
    final String errorCode;
    final String errorMessage;
    Map<String, String> loggingExtras;
    final AuthorizationClient$AuthorizationRequest request;
    final AccessToken token;
    
    private AuthorizationClient$Result(final AuthorizationClient$AuthorizationRequest request, final AuthorizationClient$Result$Code code, final AccessToken token, final String errorMessage, final String errorCode) {
        super();
        this.request = request;
        this.token = token;
        this.errorMessage = errorMessage;
        this.code = code;
        this.errorCode = errorCode;
    }
    
    static AuthorizationClient$Result createCancelResult(final AuthorizationClient$AuthorizationRequest authorizationClient$AuthorizationRequest, final String s) {
        return new AuthorizationClient$Result(authorizationClient$AuthorizationRequest, AuthorizationClient$Result$Code.CANCEL, null, s, null);
    }
    
    static AuthorizationClient$Result createErrorResult(final AuthorizationClient$AuthorizationRequest authorizationClient$AuthorizationRequest, final String s, final String s2) {
        return createErrorResult(authorizationClient$AuthorizationRequest, s, s2, null);
    }
    
    static AuthorizationClient$Result createErrorResult(final AuthorizationClient$AuthorizationRequest authorizationClient$AuthorizationRequest, final String s, final String s2, final String s3) {
        return new AuthorizationClient$Result(authorizationClient$AuthorizationRequest, AuthorizationClient$Result$Code.ERROR, null, TextUtils.join((CharSequence)": ", (Iterable)Utility.asListNoNulls(s, s2)), s3);
    }
    
    static AuthorizationClient$Result createTokenResult(final AuthorizationClient$AuthorizationRequest authorizationClient$AuthorizationRequest, final AccessToken accessToken) {
        return new AuthorizationClient$Result(authorizationClient$AuthorizationRequest, AuthorizationClient$Result$Code.SUCCESS, accessToken, null, null);
    }
}
