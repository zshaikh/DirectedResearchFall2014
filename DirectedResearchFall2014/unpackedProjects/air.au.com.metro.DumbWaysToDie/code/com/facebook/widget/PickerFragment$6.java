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

class PickerFragment$6 implements AbsListView$OnScrollListener
{
    final /* synthetic */ PickerFragment this$0;
    
    PickerFragment$6(final PickerFragment this$0) {
        this.this$0 = this$0;
        super();
    }
    
    public void onScroll(final AbsListView absListView, final int n, final int n2, final int n3) {
        this.this$0.reprioritizeDownloads();
    }
    
    public void onScrollStateChanged(final AbsListView absListView, final int n) {
    }
}