package com.milkmangames.extensions.android.goviral;

import com.facebook.widget.*;
import android.os.*;
import android.util.*;
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
        Log.d("[GVExtension]", "onComplete rbu");
        if (ex == null) {
            Log.d("[GVExtension]", "Request complete no err.");
            if (bundle.getString("request") == null) {
                this.a.a("apprequests");
                return;
            }
            this.a.a("apprequests", bundle);
        }
        else {
            if (ex instanceof FacebookOperationCanceledException) {
                this.a.a("apprequests");
                return;
            }
            if (ex instanceof FacebookDialogException) {
                Log.d("[GVExtension]", "DialogException.");
                final FacebookDialogException ex2 = (FacebookDialogException)ex;
                this.a.a(ex2.getErrorCode(), ex2.getMessage(), "apprequests");
                return;
            }
            if (!(ex instanceof FacebookServiceException)) {
                Log.d("[GVExtension]", "Generic dialog exception:" + ex.getCause());
                Log.d("[GVExtension]", ex.toString());
                this.a.a(ex.hashCode(), ex.getMessage(), "apprequests");
                return;
            }
            Log.d("[GVExtension]", "Service exception..-.");
            final FacebookServiceException ex3 = (FacebookServiceException)ex;
            if (ex3.getMessage().toLowerCase().contains("user cancel")) {
                this.a.a("apprequests");
                return;
            }
            this.a.a(ex3.getRequestError().getErrorCode(), ex3.getMessage(), "apprequests");
        }
    }
}
