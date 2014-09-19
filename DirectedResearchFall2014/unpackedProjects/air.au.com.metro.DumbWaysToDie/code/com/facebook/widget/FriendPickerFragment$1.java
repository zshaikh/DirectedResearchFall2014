package com.facebook.widget;

import android.content.*;
import com.milkmangames.extensions.android.goviral.*;
import com.facebook.model.*;

class FriendPickerFragment$1 extends PickerFragment$PickerFragmentAdapter
{
    final /* synthetic */ FriendPickerFragment this$0;
    
    FriendPickerFragment$1(final FriendPickerFragment this$0, final Context context) {
        this.this$0 = this$0;
        super(this$0, context);
    }
    
    @Override
    protected int getDefaultPicture() {
        return b.a("drawable.com_facebook_profile_default_icon");
    }
    
    protected int getGraphObjectRowLayoutId(final GraphUser graphUser) {
        return b.a("layout.com_facebook_picker_list_row");
    }
}
