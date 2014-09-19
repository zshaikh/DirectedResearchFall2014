package com.facebook;

import android.app.*;
import c.m.x.a.gv.*;
import java.util.*;

public final class Session$OpenRequest extends Session$AuthorizationRequest
{
    private static final long serialVersionUID = 1L;
    
    public Session$OpenRequest(final Activity activity) {
        super(activity);
    }
    
    public Session$OpenRequest(final e e) {
        super(e);
    }
    
    public final Session$OpenRequest setCallback(final Session$StatusCallback callback) {
        super.setCallback(callback);
        return this;
    }
    
    public final Session$OpenRequest setDefaultAudience(final SessionDefaultAudience defaultAudience) {
        super.setDefaultAudience(defaultAudience);
        return this;
    }
    
    public final Session$OpenRequest setLoginBehavior(final SessionLoginBehavior loginBehavior) {
        super.setLoginBehavior(loginBehavior);
        return this;
    }
    
    public final Session$OpenRequest setPermissions(final List permissions) {
        super.setPermissions(permissions);
        return this;
    }
    
    public final Session$OpenRequest setRequestCode(final int requestCode) {
        super.setRequestCode(requestCode);
        return this;
    }
}
