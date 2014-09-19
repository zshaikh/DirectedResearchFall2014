package com.facebook.widget;

import c.m.x.a.gv.*;
import android.graphics.drawable.*;
import com.facebook.internal.*;
import android.os.*;
import com.milkmangames.extensions.android.goviral.*;
import com.facebook.model.*;
import android.view.animation.*;
import java.util.*;
import android.content.*;
import com.facebook.*;
import android.view.*;
import android.widget.*;
import android.app.*;
import android.util.*;
import android.content.res.*;
import android.text.*;

class PickerFragment$LoadingStrategy$3 implements GraphObjectAdapter$OnErrorListener
{
    final /* synthetic */ PickerFragment$LoadingStrategy this$1;
    
    PickerFragment$LoadingStrategy$3(final PickerFragment$LoadingStrategy this$1) {
        this.this$1 = this$1;
        super();
    }
    
    @Override
    public void onError(final GraphObjectAdapter graphObjectAdapter, final FacebookException ex) {
        if (this.this$1.this$0.onErrorListener != null) {
            this.this$1.this$0.onErrorListener.onError(this.this$1.this$0, ex);
        }
    }
}
