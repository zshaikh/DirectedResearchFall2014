package com.facebook.android;

import android.os.*;
import android.net.*;
import android.app.*;
import com.facebook.*;
import java.util.*;
import android.content.pm.*;
import android.content.*;

class Facebook$SetterTokenCachingStrategy extends TokenCachingStrategy
{
    final /* synthetic */ Facebook this$0;
    
    private Facebook$SetterTokenCachingStrategy(final Facebook this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void clear() {
        this.this$0.accessToken = null;
    }
    
    @Override
    public Bundle load() {
        final Bundle bundle = new Bundle();
        if (this.this$0.accessToken != null) {
            TokenCachingStrategy.putToken(bundle, this.this$0.accessToken);
            TokenCachingStrategy.putExpirationMilliseconds(bundle, this.this$0.accessExpiresMillisecondsAfterEpoch);
            TokenCachingStrategy.putPermissions(bundle, stringList(this.this$0.pendingAuthorizationPermissions));
            TokenCachingStrategy.putSource(bundle, AccessTokenSource.WEB_VIEW);
            TokenCachingStrategy.putLastRefreshMilliseconds(bundle, this.this$0.lastAccessUpdateMillisecondsAfterEpoch);
        }
        return bundle;
    }
    
    @Override
    public void save(final Bundle bundle) {
        this.this$0.accessToken = TokenCachingStrategy.getToken(bundle);
        this.this$0.accessExpiresMillisecondsAfterEpoch = TokenCachingStrategy.getExpirationMilliseconds(bundle);
        this.this$0.pendingAuthorizationPermissions = stringArray(TokenCachingStrategy.getPermissions(bundle));
        this.this$0.lastAccessUpdateMillisecondsAfterEpoch = TokenCachingStrategy.getLastRefreshMilliseconds(bundle);
    }
}
