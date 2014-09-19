package com.facebook.widget;

import android.content.*;
import com.milkmangames.extensions.android.goviral.*;
import com.facebook.model.*;

class PlacePickerFragment$1 extends PickerFragment$PickerFragmentAdapter
{
    final /* synthetic */ PlacePickerFragment this$0;
    
    PlacePickerFragment$1(final PlacePickerFragment this$0, final Context context) {
        this.this$0 = this$0;
        super(this$0, context);
    }
    
    @Override
    protected int getDefaultPicture() {
        return b.a("drawable.com_facebook_place_default_icon");
    }
    
    protected int getGraphObjectRowLayoutId(final GraphPlace graphPlace) {
        return b.a("layout.com_facebook_placepickerfragment_list_row");
    }
    
    protected CharSequence getSubTitleOfGraphObject(final GraphPlace graphPlace) {
        final String category = graphPlace.getCategory();
        final Integer n = (Integer)graphPlace.getProperty("were_here_count");
        if (category != null && n != null) {
            return this.this$0.getString(b.a("string.com_facebook_placepicker_subtitle_format"), category, n);
        }
        if (category == null && n != null) {
            return this.this$0.getString(b.a("string.com_facebook_placepicker_subtitle_were_here_only_format"), n);
        }
        if (category != null && n == null) {
            return this.this$0.getString(b.a("string.com_facebook_placepicker_subtitle_catetory_only_format"), category);
        }
        return null;
    }
}
