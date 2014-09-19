package com.facebook;

import android.content.*;

public final class Session$Builder
{
    private String applicationId;
    private final Context context;
    private TokenCachingStrategy tokenCachingStrategy;
    
    public Session$Builder(final Context context) {
        super();
        this.context = context;
    }
    
    public final Session build() {
        return new Session(this.context, this.applicationId, this.tokenCachingStrategy);
    }
    
    public final Session$Builder setApplicationId(final String applicationId) {
        this.applicationId = applicationId;
        return this;
    }
    
    public final Session$Builder setTokenCachingStrategy(final TokenCachingStrategy tokenCachingStrategy) {
        this.tokenCachingStrategy = tokenCachingStrategy;
        return this;
    }
}
