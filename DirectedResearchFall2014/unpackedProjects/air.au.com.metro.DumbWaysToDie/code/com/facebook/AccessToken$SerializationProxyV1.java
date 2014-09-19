package com.facebook;

import java.io.*;
import java.util.*;

class AccessToken$SerializationProxyV1 implements Serializable
{
    private static final long serialVersionUID = -2488473066578201069L;
    private final Date expires;
    private final Date lastRefresh;
    private final List permissions;
    private final AccessTokenSource source;
    private final String token;
    
    private AccessToken$SerializationProxyV1(final String token, final Date expires, final List permissions, final AccessTokenSource source, final Date lastRefresh) {
        super();
        this.expires = expires;
        this.permissions = permissions;
        this.token = token;
        this.source = source;
        this.lastRefresh = lastRefresh;
    }
    
    private Object readResolve() {
        return new AccessToken(this.token, this.expires, this.permissions, this.source, this.lastRefresh);
    }
}
