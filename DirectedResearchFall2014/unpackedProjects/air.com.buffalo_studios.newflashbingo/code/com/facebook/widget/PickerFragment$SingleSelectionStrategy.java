package com.facebook.widget;

import java.util.*;
import android.os.*;
import android.text.*;

class PickerFragment$SingleSelectionStrategy extends PickerFragment$SelectionStrategy
{
    private String selectedId;
    final /* synthetic */ PickerFragment this$0;
    
    PickerFragment$SingleSelectionStrategy(final PickerFragment this$0) {
        this.this$0 = this$0;
        super(this$0);
    }
    
    public void clear() {
        this.selectedId = null;
    }
    
    public Collection<String> getSelectedIds() {
        return Arrays.asList(this.selectedId);
    }
    
    @Override
    boolean isEmpty() {
        return this.selectedId == null;
    }
    
    @Override
    boolean isSelected(final String anObject) {
        return this.selectedId != null && anObject != null && this.selectedId.equals(anObject);
    }
    
    @Override
    void readSelectionFromBundle(final Bundle bundle, final String s) {
        if (bundle != null) {
            this.selectedId = bundle.getString(s);
        }
    }
    
    @Override
    void saveSelectionToBundle(final Bundle bundle, final String s) {
        if (!TextUtils.isEmpty((CharSequence)this.selectedId)) {
            bundle.putString(s, this.selectedId);
        }
    }
    
    @Override
    boolean shouldShowCheckBoxIfUnselected() {
        return false;
    }
    
    @Override
    void toggleSelection(final String s) {
        if (this.selectedId != null && this.selectedId.equals(s)) {
            this.selectedId = null;
            return;
        }
        this.selectedId = s;
    }
}
