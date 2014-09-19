package com.facebook.widget;

import android.content.*;
import java.text.*;
import com.facebook.*;
import com.milkmangames.extensions.android.goviral.*;
import android.graphics.*;
import java.util.*;
import android.view.*;
import org.json.*;
import com.facebook.model.*;
import java.net.*;
import android.widget.*;

class GraphObjectAdapter$2 implements ImageRequest$Callback
{
    final /* synthetic */ GraphObjectAdapter this$0;
    final /* synthetic */ ImageView val$imageView;
    final /* synthetic */ String val$profileId;
    
    GraphObjectAdapter$2(final GraphObjectAdapter this$0, final String val$profileId, final ImageView val$imageView) {
        this.this$0 = this$0;
        this.val$profileId = val$profileId;
        this.val$imageView = val$imageView;
        super();
    }
    
    @Override
    public void onCompleted(final ImageResponse imageResponse) {
        this.this$0.processImageResponse(imageResponse, this.val$profileId, this.val$imageView);
    }
}
