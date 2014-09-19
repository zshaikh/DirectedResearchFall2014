package com.fusepowered.m1.android;

import java.lang.ref.*;
import android.content.*;
import android.app.*;
import java.util.concurrent.*;

class MMJSObject
{
    protected WeakReference<Context> contextRef;
    protected WeakReference<MMWebView> mmWebViewRef;
    
    long getAdImplId(final String s) {
        if (s != null) {
            return (long)Float.parseFloat(s);
        }
        return -4L;
    }
    
    AdViewOverlayActivity getBaseActivity() {
        final MMWebView mmWebView = this.mmWebViewRef.get();
        if (mmWebView != null) {
            final Activity activity = mmWebView.getActivity();
            if (activity instanceof MMActivity) {
                final MMBaseActivity wrappedActivity = ((MMActivity)activity).getWrappedActivity();
                if (wrappedActivity instanceof AdViewOverlayActivity) {
                    return (AdViewOverlayActivity)wrappedActivity;
                }
            }
        }
        return null;
    }
    
    MMJSResponse runOnUiThreadFuture(final Callable<MMJSResponse> callable) {
        final FutureTask<MMJSResponse> futureTask = new FutureTask<MMJSResponse>(callable);
        MMSDK.runOnUiThread(futureTask);
        try {
            return futureTask.get();
        }
        catch (InterruptedException ex) {
            ex.printStackTrace();
        }
        catch (ExecutionException ex2) {
            ex2.printStackTrace();
            goto Label_0032;
        }
    }
    
    void setContext(final Context referent) {
        this.contextRef = new WeakReference<Context>(referent);
    }
    
    void setMMWebView(final MMWebView referent) {
        this.mmWebViewRef = new WeakReference<MMWebView>(referent);
    }
}
