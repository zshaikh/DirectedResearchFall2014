package com.facebook.widget;

import android.app.*;
import android.os.*;
import com.facebook.internal.*;
import com.milkmangames.extensions.android.goviral.*;
import com.facebook.*;
import android.webkit.*;
import android.widget.*;
import android.view.*;
import android.annotation.*;
import android.content.*;

class WebDialog$3 implements View$OnClickListener
{
    final /* synthetic */ WebDialog this$0;
    
    WebDialog$3(final WebDialog this$0) {
        this.this$0 = this$0;
        super();
    }
    
    public void onClick(final View view) {
        this.this$0.sendCancelToListener();
        this.this$0.dismiss();
    }
}
