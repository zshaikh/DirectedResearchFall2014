package com.milkmangames.extensions.android.goviral;

import com.facebook.widget.*;
import android.os.*;
import com.facebook.*;

final class c implements WebDialog$OnCompleteListener
{
    final /* synthetic */ b a;
    
    c(final b a) {
        this.a = a;
        super();
    }
    
    @Override
    public final void onComplete(final Bundle bundle, final FacebookException ex) {
        if (ex == null) {
            this.a.a("feed", bundle);
            return;
        }
        if (ex instanceof FacebookOperationCanceledException) {
            this.a.a("feed");
            return;
        }
        this.a.a(ex.hashCode(), ex.getMessage(), "feed");
    }
}
