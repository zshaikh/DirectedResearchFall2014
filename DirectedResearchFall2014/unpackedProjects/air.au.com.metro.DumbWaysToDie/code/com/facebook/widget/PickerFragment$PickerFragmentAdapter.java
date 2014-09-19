package com.facebook.widget;

import android.content.*;
import c.m.x.a.gv.*;
import android.graphics.drawable.*;
import com.facebook.internal.*;
import android.os.*;
import com.milkmangames.extensions.android.goviral.*;
import com.facebook.model.*;
import android.view.animation.*;
import java.util.*;
import com.facebook.*;
import android.view.*;
import android.widget.*;
import android.app.*;
import android.util.*;
import android.content.res.*;
import android.text.*;

abstract class PickerFragment$PickerFragmentAdapter extends GraphObjectAdapter
{
    final /* synthetic */ PickerFragment this$0;
    
    public PickerFragment$PickerFragmentAdapter(final PickerFragment this$0, final Context context) {
        this.this$0 = this$0;
        super(context);
    }
    
    @Override
    boolean isGraphObjectSelected(final String s) {
        return this.this$0.selectionStrategy.isSelected(s);
    }
    
    @Override
    void updateCheckboxState(final CheckBox checkBox, final boolean checked) {
        checkBox.setChecked(checked);
        int visibility;
        if (checked || this.this$0.selectionStrategy.shouldShowCheckBoxIfUnselected()) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        checkBox.setVisibility(visibility);
    }
}
