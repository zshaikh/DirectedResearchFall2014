package com.facebook;

import android.os.*;

public class NonCachingTokenCachingStrategy extends TokenCachingStrategy
{
    @Override
    public void clear() {
    }
    
    @Override
    public Bundle load() {
        return null;
    }
    
    @Override
    public void save(final Bundle bundle) {
    }
}
