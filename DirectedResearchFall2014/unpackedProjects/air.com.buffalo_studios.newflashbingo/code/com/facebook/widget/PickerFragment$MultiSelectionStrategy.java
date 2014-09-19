package com.facebook.widget;

import android.os.*;
import android.text.*;
import java.util.*;

class PickerFragment$MultiSelectionStrategy extends PickerFragment$SelectionStrategy
{
    private Set<String> selectedIds;
    final /* synthetic */ PickerFragment this$0;
    
    PickerFragment$MultiSelectionStrategy(final PickerFragment this$0) {
        this.this$0 = this$0;
        super(this$0);
        this.selectedIds = new HashSet<String>();
    }
    
    public void clear() {
        this.selectedIds.clear();
    }
    
    public Collection<String> getSelectedIds() {
        return this.selectedIds;
    }
    
    @Override
    boolean isEmpty() {
        return this.selectedIds.isEmpty();
    }
    
    @Override
    boolean isSelected(final String s) {
        return s != null && this.selectedIds.contains(s);
    }
    
    @Override
    void readSelectionFromBundle(final Bundle bundle, final String s) {
        if (bundle != null) {
            final String string = bundle.getString(s);
            if (string != null) {
                final String[] split = TextUtils.split(string, ",");
                this.selectedIds.clear();
                Collections.addAll(this.selectedIds, split);
            }
        }
    }
    
    @Override
    void saveSelectionToBundle(final Bundle bundle, final String s) {
        if (!this.selectedIds.isEmpty()) {
            bundle.putString(s, TextUtils.join((CharSequence)",", (Iterable)this.selectedIds));
        }
    }
    
    @Override
    boolean shouldShowCheckBoxIfUnselected() {
        return true;
    }
    
    @Override
    void toggleSelection(final String s) {
        if (s != null) {
            if (!this.selectedIds.contains(s)) {
                this.selectedIds.add(s);
                return;
            }
            this.selectedIds.remove(s);
        }
    }
}
