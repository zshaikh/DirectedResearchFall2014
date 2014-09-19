package com.facebook.widget;

import android.annotation.*;
import android.location.*;
import com.facebook.model.*;
import com.milkmangames.extensions.android.goviral.*;
import com.facebook.*;
import android.content.*;
import java.util.*;
import android.widget.*;
import android.text.*;
import android.app.*;
import android.view.inputmethod.*;
import android.view.*;
import android.util.*;
import android.content.res.*;
import com.facebook.internal.*;
import android.os.*;

class PlacePickerFragment$2 extends TimerTask
{
    final /* synthetic */ PlacePickerFragment this$0;
    
    PlacePickerFragment$2(final PlacePickerFragment this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void run() {
        this.this$0.onSearchTextTimerTriggered();
    }
}
