package com.facebook.widget;

import android.widget.*;
import com.facebook.model.*;
import android.text.*;
import android.os.*;
import com.facebook.android.*;
import android.graphics.drawable.*;
import android.graphics.*;
import com.facebook.internal.*;
import java.net.*;
import android.content.*;
import android.view.*;
import c.m.x.a.gv.*;
import com.facebook.*;
import java.util.*;

class UserSettingsFragment$2 implements ImageRequest$Callback
{
    final /* synthetic */ UserSettingsFragment this$0;
    
    UserSettingsFragment$2(final UserSettingsFragment this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void onCompleted(final ImageResponse imageResponse) {
        this.this$0.processImageResponse(this.this$0.user.getId(), imageResponse);
    }
}
