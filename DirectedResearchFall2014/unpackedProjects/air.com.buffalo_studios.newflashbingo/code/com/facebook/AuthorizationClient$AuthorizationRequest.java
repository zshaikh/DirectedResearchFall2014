package com.facebook;

import java.io.*;
import java.util.*;

class AuthorizationClient$AuthorizationRequest implements Serializable
{
    private static final long serialVersionUID = 1L;
    private final String applicationId;
    private final String authId;
    private final SessionDefaultAudience defaultAudience;
    private boolean isLegacy;
    private final SessionLoginBehavior loginBehavior;
    private List<String> permissions;
    private final String previousAccessToken;
    private final int requestCode;
    private final transient AuthorizationClient$StartActivityDelegate startActivityDelegate;
    
    AuthorizationClient$AuthorizationRequest(final SessionLoginBehavior loginBehavior, final int requestCode, final boolean isLegacy, final List<String> permissions, final SessionDefaultAudience defaultAudience, final String applicationId, final String previousAccessToken, final AuthorizationClient$StartActivityDelegate startActivityDelegate, final String authId) {
        super();
        this.isLegacy = false;
        this.loginBehavior = loginBehavior;
        this.requestCode = requestCode;
        this.isLegacy = isLegacy;
        this.permissions = permissions;
        this.defaultAudience = defaultAudience;
        this.applicationId = applicationId;
        this.previousAccessToken = previousAccessToken;
        this.startActivityDelegate = startActivityDelegate;
        this.authId = authId;
    }
    
    String getApplicationId() {
        return this.applicationId;
    }
    
    String getAuthId() {
        return this.authId;
    }
    
    SessionDefaultAudience getDefaultAudience() {
        return this.defaultAudience;
    }
    
    SessionLoginBehavior getLoginBehavior() {
        return this.loginBehavior;
    }
    
    List<String> getPermissions() {
        return this.permissions;
    }
    
    String getPreviousAccessToken() {
        return this.previousAccessToken;
    }
    
    int getRequestCode() {
        return this.requestCode;
    }
    
    AuthorizationClient$StartActivityDelegate getStartActivityDelegate() {
        return this.startActivityDelegate;
    }
    
    boolean isLegacy() {
        return this.isLegacy;
    }
    
    boolean needsNewTokenValidation() {
        return this.previousAccessToken != null && !this.isLegacy;
    }
    
    void setIsLegacy(final boolean isLegacy) {
        this.isLegacy = isLegacy;
    }
    
    void setPermissions(final List<String> permissions) {
        this.permissions = permissions;
    }
}
