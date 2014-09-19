package com.facebook;

import android.os.*;
import org.json.*;
import android.text.*;
import com.facebook.internal.*;
import java.util.*;
import android.app.*;
import c.m.x.a.gv.*;
import android.util.*;
import java.io.*;
import android.content.*;

class Session$AutoPublishAsyncTask extends AsyncTask<Void, Void, Void>
{
    private final Context mApplicationContext;
    private final String mApplicationId;
    final /* synthetic */ Session this$0;
    
    public Session$AutoPublishAsyncTask(final Session this$0, final String mApplicationId, final Context context) {
        this.this$0 = this$0;
        super();
        this.mApplicationId = mApplicationId;
        this.mApplicationContext = context.getApplicationContext();
    }
    
    protected Void doInBackground(final Void... array) {
        try {
            Settings.publishInstallAndWaitForResponse(this.mApplicationContext, this.mApplicationId, true);
            return null;
        }
        catch (Exception ex) {
            Utility.logd("Facebook-publish", ex);
            return null;
        }
    }
    
    protected void onPostExecute(final Void void1) {
        synchronized (this.this$0) {
            this.this$0.autoPublishAsyncTask = null;
        }
    }
}
