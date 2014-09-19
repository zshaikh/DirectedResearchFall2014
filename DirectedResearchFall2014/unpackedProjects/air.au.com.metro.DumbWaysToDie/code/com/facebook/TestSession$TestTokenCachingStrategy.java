package com.facebook;

import android.os.*;

final class TestSession$TestTokenCachingStrategy extends TokenCachingStrategy
{
    private Bundle bundle;
    
    @Override
    public final void clear() {
        this.bundle = null;
    }
    
    @Override
    public final Bundle load() {
        return this.bundle;
    }
    
    @Override
    public final void save(final Bundle bundle) {
        this.bundle = bundle;
    }
}
