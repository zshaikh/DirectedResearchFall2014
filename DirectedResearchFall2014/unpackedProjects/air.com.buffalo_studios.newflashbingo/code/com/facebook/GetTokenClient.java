package com.facebook;

import com.facebook.internal.*;
import android.content.*;
import android.os.*;

final class GetTokenClient extends PlatformServiceClient
{
    GetTokenClient(final Context context, final String s) {
        super(context, 65536, 65537, 20121101, s);
    }
    
    @Override
    protected final void populateRequestBundle(final Bundle bundle) {
    }
}
