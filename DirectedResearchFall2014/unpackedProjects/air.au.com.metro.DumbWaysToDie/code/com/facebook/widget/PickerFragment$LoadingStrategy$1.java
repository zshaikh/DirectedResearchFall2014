package com.facebook.widget;

import android.os.*;
import c.m.x.a.gv.*;
import com.facebook.*;

class PickerFragment$LoadingStrategy$1 implements x
{
    final /* synthetic */ PickerFragment$LoadingStrategy this$1;
    
    PickerFragment$LoadingStrategy$1(final PickerFragment$LoadingStrategy this$1) {
        this.this$1 = this$1;
        super();
    }
    
    @Override
    public ac onCreateLoader(final int n, final Bundle bundle) {
        return this.this$1.onCreateLoader();
    }
    
    public void onLoadFinished(final ac ac, final SimpleGraphObjectCursor simpleGraphObjectCursor) {
        if (ac != this.this$1.loader) {
            throw new FacebookException("Received callback for unknown loader.");
        }
        this.this$1.onLoadFinished((GraphObjectPagingLoader)ac, simpleGraphObjectCursor);
    }
    
    @Override
    public void onLoaderReset(final ac ac) {
        if (ac != this.this$1.loader) {
            throw new FacebookException("Received callback for unknown loader.");
        }
        this.this$1.onLoadReset((GraphObjectPagingLoader)ac);
    }
}
