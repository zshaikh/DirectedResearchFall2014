package com.facebook;

import java.io.*;
import java.util.*;

class Session$SerializationProxyV1 implements Serializable
{
    private static final long serialVersionUID = 7663436173185080063L;
    private final String applicationId;
    private final Date lastAttemptedTokenExtendDate;
    private final Session$AuthorizationRequest pendingAuthorizationRequest;
    private final boolean shouldAutoPublish;
    private final SessionState state;
    private final AccessToken tokenInfo;
    
    Session$SerializationProxyV1(final String applicationId, final SessionState state, final AccessToken tokenInfo, final Date lastAttemptedTokenExtendDate, final boolean shouldAutoPublish, final Session$AuthorizationRequest pendingAuthorizationRequest) {
        super();
        this.applicationId = applicationId;
        this.state = state;
        this.tokenInfo = tokenInfo;
        this.lastAttemptedTokenExtendDate = lastAttemptedTokenExtendDate;
        this.shouldAutoPublish = shouldAutoPublish;
        this.pendingAuthorizationRequest = pendingAuthorizationRequest;
    }
    
    private Object readResolve() {
        return new Session(this.applicationId, this.state, this.tokenInfo, this.lastAttemptedTokenExtendDate, this.shouldAutoPublish, this.pendingAuthorizationRequest, null);
    }
}
