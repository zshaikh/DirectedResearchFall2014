package com.facebook;

import java.io.*;
import com.facebook.internal.*;

class AppEventsLogger$AccessTokenAppIdPair implements Serializable
{
    private static final long serialVersionUID = 1L;
    private final String accessToken;
    private final String applicationId;
    
    AppEventsLogger$AccessTokenAppIdPair(final Session session) {
        this(session.getAccessToken(), session.getApplicationId());
    }
    
    AppEventsLogger$AccessTokenAppIdPair(final String s, final String applicationId) {
        super();
        String accessToken;
        if (Utility.isNullOrEmpty(s)) {
            accessToken = null;
        }
        else {
            accessToken = s;
        }
        this.accessToken = accessToken;
        this.applicationId = applicationId;
    }
    
    private Object writeReplace() {
        return new AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1(this.accessToken, this.applicationId, null);
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof AppEventsLogger$AccessTokenAppIdPair)) {
            return false;
        }
        final AppEventsLogger$AccessTokenAppIdPair appEventsLogger$AccessTokenAppIdPair = (AppEventsLogger$AccessTokenAppIdPair)o;
        return Utility.areObjectsEqual(appEventsLogger$AccessTokenAppIdPair.accessToken, this.accessToken) && Utility.areObjectsEqual(appEventsLogger$AccessTokenAppIdPair.applicationId, this.applicationId);
    }
    
    String getAccessToken() {
        return this.accessToken;
    }
    
    String getApplicationId() {
        return this.applicationId;
    }
    
    @Override
    public final int hashCode() {
        int hashCode;
        if (this.accessToken == null) {
            hashCode = 0;
        }
        else {
            hashCode = this.accessToken.hashCode();
        }
        int hashCode2;
        if (this.applicationId == null) {
            hashCode2 = 0;
        }
        else {
            hashCode2 = this.applicationId.hashCode();
        }
        return hashCode ^ hashCode2;
    }
}
