package com.facebook.widget;

import java.util.*;
import android.widget.*;
import android.annotation.*;
import c.m.x.a.gv.*;
import com.facebook.internal.*;
import com.facebook.model.*;
import android.util.*;
import com.milkmangames.extensions.android.goviral.*;
import android.view.*;
import android.content.res.*;
import com.facebook.*;
import android.content.*;
import android.app.*;

class LoginButton$LoginButtonProperties
{
    private SessionAuthorizationType authorizationType;
    private SessionDefaultAudience defaultAudience;
    private SessionLoginBehavior loginBehavior;
    private LoginButton$OnErrorListener onErrorListener;
    private List permissions;
    private Session$StatusCallback sessionStatusCallback;
    
    LoginButton$LoginButtonProperties() {
        super();
        this.defaultAudience = SessionDefaultAudience.FRIENDS;
        this.permissions = Collections.emptyList();
        this.authorizationType = null;
        this.loginBehavior = SessionLoginBehavior.SSO_WITH_FALLBACK;
    }
    
    private boolean validatePermissions(final List list, final SessionAuthorizationType other, final Session session) {
        if (SessionAuthorizationType.PUBLISH.equals(other) && Utility.isNullOrEmpty(list)) {
            throw new IllegalArgumentException("Permissions for publish actions cannot be null or empty.");
        }
        if (session != null && session.isOpened() && !Utility.isSubset(list, session.getPermissions())) {
            Log.e(LoginButton.TAG, "Cannot set additional permissions when session is already open.");
            return false;
        }
        return true;
    }
    
    public void clearPermissions() {
        this.permissions = null;
        this.authorizationType = null;
    }
    
    public SessionDefaultAudience getDefaultAudience() {
        return this.defaultAudience;
    }
    
    public SessionLoginBehavior getLoginBehavior() {
        return this.loginBehavior;
    }
    
    public LoginButton$OnErrorListener getOnErrorListener() {
        return this.onErrorListener;
    }
    
    List getPermissions() {
        return this.permissions;
    }
    
    public Session$StatusCallback getSessionStatusCallback() {
        return this.sessionStatusCallback;
    }
    
    public void setDefaultAudience(final SessionDefaultAudience defaultAudience) {
        this.defaultAudience = defaultAudience;
    }
    
    public void setLoginBehavior(final SessionLoginBehavior loginBehavior) {
        this.loginBehavior = loginBehavior;
    }
    
    public void setOnErrorListener(final LoginButton$OnErrorListener onErrorListener) {
        this.onErrorListener = onErrorListener;
    }
    
    public void setPublishPermissions(final List permissions, final Session session) {
        if (SessionAuthorizationType.READ.equals(this.authorizationType)) {
            throw new UnsupportedOperationException("Cannot call setPublishPermissions after setReadPermissions has been called.");
        }
        if (this.validatePermissions(permissions, SessionAuthorizationType.PUBLISH, session)) {
            this.permissions = permissions;
            this.authorizationType = SessionAuthorizationType.PUBLISH;
        }
    }
    
    public void setReadPermissions(final List permissions, final Session session) {
        if (SessionAuthorizationType.PUBLISH.equals(this.authorizationType)) {
            throw new UnsupportedOperationException("Cannot call setReadPermissions after setPublishPermissions has been called.");
        }
        if (this.validatePermissions(permissions, SessionAuthorizationType.READ, session)) {
            this.permissions = permissions;
            this.authorizationType = SessionAuthorizationType.READ;
        }
    }
    
    public void setSessionStatusCallback(final Session$StatusCallback sessionStatusCallback) {
        this.sessionStatusCallback = sessionStatusCallback;
    }
}
