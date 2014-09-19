package com.facebook;

import android.app.*;
import java.util.*;
import c.m.x.a.gv.*;

public final class Session$NewPermissionsRequest extends Session$AuthorizationRequest
{
    private static final long serialVersionUID = 1L;
    
    public Session$NewPermissionsRequest(final Activity activity, final List permissions) {
        super(activity);
        this.setPermissions(permissions);
    }
    
    public Session$NewPermissionsRequest(final e e, final List permissions) {
        super(e);
        this.setPermissions(permissions);
    }
    
    public final Session$NewPermissionsRequest setCallback(final Session$StatusCallback callback) {
        super.setCallback(callback);
        return this;
    }
    
    public final Session$NewPermissionsRequest setDefaultAudience(final SessionDefaultAudience defaultAudience) {
        super.setDefaultAudience(defaultAudience);
        return this;
    }
    
    public final Session$NewPermissionsRequest setLoginBehavior(final SessionLoginBehavior loginBehavior) {
        super.setLoginBehavior(loginBehavior);
        return this;
    }
    
    public final Session$NewPermissionsRequest setRequestCode(final int requestCode) {
        super.setRequestCode(requestCode);
        return this;
    }
}
