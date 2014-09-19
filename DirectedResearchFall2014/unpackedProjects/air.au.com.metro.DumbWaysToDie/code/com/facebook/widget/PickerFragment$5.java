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

class PickerFragment$5 implements View$OnClickListener
{
    final /* synthetic */ PickerFragment this$0;
    
    PickerFragment$5(final PickerFragment this$0) {
        this.this$0 = this$0;
        super();
    }
    
    public void onClick(final View view) {
        if (this.this$0.onDoneButtonClickedListener != null) {
            this.this$0.onDoneButtonClickedListener.onDoneButtonClicked(this.this$0);
        }
    }
}
