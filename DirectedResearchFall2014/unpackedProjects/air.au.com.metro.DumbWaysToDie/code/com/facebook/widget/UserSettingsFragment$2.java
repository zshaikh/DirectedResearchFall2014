package com.facebook.widget;

import android.annotation.*;
import android.widget.*;
import com.facebook.model.*;
import android.text.*;
import android.os.*;
import com.milkmangames.extensions.android.goviral.*;
import android.graphics.drawable.*;
import android.graphics.*;
import java.net.*;
import java.util.*;
import android.content.*;
import android.view.*;
import c.m.x.a.gv.*;
import com.facebook.*;

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
