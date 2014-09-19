package com.facebook.widget;

import android.content.*;
import android.util.*;
import com.milkmangames.extensions.android.goviral.*;
import android.widget.*;
import android.content.res.*;
import com.facebook.*;
import java.net.*;
import android.graphics.*;
import android.view.*;
import android.os.*;
import com.facebook.internal.*;

class ProfilePictureView$1 implements ImageRequest$Callback
{
    final /* synthetic */ ProfilePictureView this$0;
    
    ProfilePictureView$1(final ProfilePictureView this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void onCompleted(final ImageResponse imageResponse) {
        this.this$0.processResponse(imageResponse);
    }
}
