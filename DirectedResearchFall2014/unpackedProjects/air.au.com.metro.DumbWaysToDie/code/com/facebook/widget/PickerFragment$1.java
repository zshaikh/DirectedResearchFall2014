package com.facebook.widget;

import com.facebook.model.*;

class PickerFragment$1 implements GraphObjectAdapter$Filter
{
    final /* synthetic */ PickerFragment this$0;
    
    PickerFragment$1(final PickerFragment this$0) {
        this.this$0 = this$0;
        super();
    }
    
    public boolean includeItem(final GraphObject graphObject) {
        return this.this$0.filterIncludesItem(graphObject);
    }
}
