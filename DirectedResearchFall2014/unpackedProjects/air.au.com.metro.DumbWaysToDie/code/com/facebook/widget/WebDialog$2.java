package com.facebook.widget;

import android.app.*;
import android.content.*;
import android.os.*;
import com.facebook.internal.*;
import com.milkmangames.extensions.android.goviral.*;
import com.facebook.*;
import android.webkit.*;
import android.widget.*;
import android.view.*;
import android.annotation.*;

class WebDialog$2 implements DialogInterface$OnCancelListener
{
    final /* synthetic */ WebDialog this$0;
    
    WebDialog$2(final WebDialog this$0) {
        this.this$0 = this$0;
        super();
    }
    
    public void onCancel(final DialogInterface dialogInterface) {
        this.this$0.sendCancelToListener();
        this.this$0.dismiss();
    }
}
