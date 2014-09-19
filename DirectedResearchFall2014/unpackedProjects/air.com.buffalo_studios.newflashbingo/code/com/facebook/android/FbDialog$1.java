package com.facebook.android;

import android.os.*;
import com.facebook.widget.*;
import android.content.*;
import com.facebook.*;

class FbDialog$1 implements WebDialog$OnCompleteListener
{
    final /* synthetic */ FbDialog this$0;
    
    FbDialog$1(final FbDialog this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void onComplete(final Bundle bundle, final FacebookException ex) {
        this.this$0.callDialogListener(bundle, ex);
    }
}
