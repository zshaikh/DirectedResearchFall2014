package com.facebook.widget;

import c.m.x.a.gv.*;
import android.graphics.drawable.*;
import com.facebook.internal.*;
import android.os.*;
import com.milkmangames.extensions.android.goviral.*;
import com.facebook.*;
import com.facebook.model.*;
import android.view.animation.*;
import java.util.*;
import android.content.*;
import android.view.*;
import android.widget.*;
import android.app.*;
import android.util.*;
import android.content.res.*;
import android.text.*;

class PickerFragment$4 implements Session$StatusCallback
{
    final /* synthetic */ PickerFragment this$0;
    
    PickerFragment$4(final PickerFragment this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void call(final Session session, final SessionState sessionState, final Exception ex) {
        if (!session.isOpened()) {
            this.this$0.clearResults();
        }
    }
}
