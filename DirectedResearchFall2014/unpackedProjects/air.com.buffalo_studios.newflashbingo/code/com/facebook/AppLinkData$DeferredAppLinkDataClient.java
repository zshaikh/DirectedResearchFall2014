package com.facebook;

import com.facebook.internal.*;
import android.content.*;
import android.os.*;

final class AppLinkData$DeferredAppLinkDataClient extends PlatformServiceClient
{
    AppLinkData$DeferredAppLinkDataClient(final Context context, final String s) {
        super(context, 65540, 65541, 20130618, s);
    }
    
    @Override
    protected final void populateRequestBundle(final Bundle bundle) {
        bundle.putString("com.facebook.platform.extra.INSTALLDATA_PACKAGE", this.getContext().getPackageName());
    }
}
