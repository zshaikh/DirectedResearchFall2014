package com.facebook;

import java.io.*;
import java.util.*;

class Session$AuthorizationRequest$AuthRequestSerializationProxyV1 implements Serializable
{
    private static final long serialVersionUID = -8748347685113614927L;
    private final String applicationId;
    private final String defaultAudience;
    private boolean isLegacy;
    private final SessionLoginBehavior loginBehavior;
    private final List permissions;
    private final int requestCode;
    private final String validateSameFbidAsToken;
    
    private Session$AuthorizationRequest$AuthRequestSerializationProxyV1(final SessionLoginBehavior loginBehavior, final int requestCode, final List permissions, final String defaultAudience, final boolean isLegacy, final String applicationId, final String validateSameFbidAsToken) {
        super();
        this.loginBehavior = loginBehavior;
        this.requestCode = requestCode;
        this.permissions = permissions;
        this.defaultAudience = defaultAudience;
        this.isLegacy = isLegacy;
        this.applicationId = applicationId;
        this.validateSameFbidAsToken = validateSameFbidAsToken;
    }
    
    private Object readResolve() {
        return new Session$AuthorizationRequest(this.loginBehavior, this.requestCode, this.permissions, this.defaultAudience, this.isLegacy, this.applicationId, this.validateSameFbidAsToken, null);
    }
}
