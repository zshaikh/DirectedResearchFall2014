package com.facebook.widget;

import c.m.x.a.gv.*;
import android.content.*;
import java.util.*;
import com.facebook.model.*;
import com.facebook.internal.*;
import com.facebook.*;
import android.os.*;

class GraphObjectPagingLoader$2 implements Request$Callback
{
    final /* synthetic */ GraphObjectPagingLoader this$0;
    
    GraphObjectPagingLoader$2(final GraphObjectPagingLoader this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void onCompleted(final Response response) {
        this.this$0.requestCompleted(response);
    }
}
