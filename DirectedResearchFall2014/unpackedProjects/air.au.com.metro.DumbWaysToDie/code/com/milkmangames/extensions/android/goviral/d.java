package com.milkmangames.extensions.android.goviral;

import com.facebook.widget.*;
import android.os.*;
import com.facebook.*;

final class d implements WebDialog$OnCompleteListener
{
    final /* synthetic */ b a;
    
    d(final b a) {
        this.a = a;
        super();
    }
    
    @Override
    public final void onComplete(final Bundle bundle, final FacebookException ex) {
        if (ex == null) {
            this.a.a("apprequests", bundle);
            return;
        }
        if (ex instanceof FacebookOperationCanceledException) {
            this.a.c("apprequests");
            return;
        }
        this.a.a(ex.hashCode(), ex.getMessage(), "apprequests");
    }
}
