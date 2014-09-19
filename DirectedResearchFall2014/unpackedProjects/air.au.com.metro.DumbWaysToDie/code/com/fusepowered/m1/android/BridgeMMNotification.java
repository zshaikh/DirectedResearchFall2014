package com.fusepowered.m1.android;

import java.util.*;
import java.util.concurrent.*;
import android.app.*;
import android.content.*;
import android.os.*;

class BridgeMMNotification extends MMJSObject implements DialogInterface$OnClickListener
{
    private int index;
    
    public MMJSResponse alert(final HashMap<String, String> hashMap) {
        synchronized (this) {
            return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
                @Override
                public MMJSResponse call() {
                    final MMWebView mmWebView = BridgeMMNotification.this.mmWebViewRef.get();
                    if (mmWebView != null) {
                        final Activity activity = mmWebView.getActivity();
                        final HashMap val$arguments = hashMap;
                        if (activity != null) {
                            if (!activity.isFinishing()) {
                                final AlertDialog create = new AlertDialog$Builder((Context)activity).create();
                                if (val$arguments.containsKey("title")) {
                                    create.setTitle((CharSequence)val$arguments.get("title"));
                                }
                                if (val$arguments.containsKey("message")) {
                                    create.setMessage((CharSequence)val$arguments.get("message"));
                                }
                                if (val$arguments.containsKey("cancelButton")) {
                                    create.setButton(-2, (CharSequence)val$arguments.get("cancelButton"), (DialogInterface$OnClickListener)BridgeMMNotification.this);
                                }
                                if (val$arguments.containsKey("buttons")) {
                                    final String[] split = val$arguments.get("buttons").split(",");
                                    if (split.length > 0) {
                                        create.setButton(-3, (CharSequence)split[0], (DialogInterface$OnClickListener)BridgeMMNotification.this);
                                    }
                                    if (split.length > 1) {
                                        create.setButton(-1, (CharSequence)split[1], (DialogInterface$OnClickListener)BridgeMMNotification.this);
                                    }
                                }
                                create.show();
                            }
                            final MMJSResponse mmjsResponse = new MMJSResponse();
                            mmjsResponse.result = 1;
                            mmjsResponse.response = BridgeMMNotification.this.index;
                            return mmjsResponse;
                        }
                    }
                    return null;
                }
            });
        }
    }
    
    public void onClick(final DialogInterface dialogInterface, final int n) {
        // monitorenter(this)
        Label_0013: {
            if (n != -2) {
                break Label_0013;
            }
            try {
                this.index = 0;
                if (n == -3) {
                    this.index = 1;
                }
                if (n == -1) {
                    this.index = 2;
                }
                dialogInterface.cancel();
                this.notify();
            }
            finally {
            }
            // monitorexit(this)
        }
    }
    
    public MMJSResponse vibrate(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        long lng = 0L;
        if (hashMap.containsKey("duration")) {
            lng = (long)(1000.0 * Float.parseFloat(hashMap.get("duration")));
        }
        if (context == null || lng <= 0L) {
            return null;
        }
        if (context.getPackageManager().checkPermission("android.permission.VIBRATE", context.getPackageName()) == 0) {
            ((Vibrator)context.getSystemService("vibrator")).vibrate(lng);
            return MMJSResponse.responseWithSuccess("Vibrating for " + lng);
        }
        return MMJSResponse.responseWithError("The required permissions to vibrate are not set.");
    }
}
