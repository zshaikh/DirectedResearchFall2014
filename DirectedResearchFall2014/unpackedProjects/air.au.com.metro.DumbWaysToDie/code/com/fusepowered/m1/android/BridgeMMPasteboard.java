package com.fusepowered.m1.android;

import java.util.*;
import android.content.*;
import java.util.concurrent.*;
import android.text.*;

class BridgeMMPasteboard extends MMJSObject
{
    public MMJSResponse getPasteboardContents(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        if (context != null) {
            return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
                @Override
                public MMJSResponse call() {
                    try {
                        final CharSequence text = ((ClipboardManager)context.getSystemService("clipboard")).getText();
                        String string = null;
                        if (text != null) {
                            string = text.toString();
                        }
                        if (string != null) {
                            return MMJSResponse.responseWithSuccess(string);
                        }
                    }
                    catch (Exception ex) {
                        ex.printStackTrace();
                    }
                    return null;
                }
            });
        }
        return null;
    }
    
    public MMJSResponse writeToPasteboard(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        if (context != null) {
            return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
                @Override
                public MMJSResponse call() {
                    try {
                        ((ClipboardManager)context.getSystemService("clipboard")).setText((CharSequence)hashMap.get("data"));
                        return MMJSResponse.responseWithSuccess();
                    }
                    catch (Exception ex) {
                        ex.printStackTrace();
                        return null;
                    }
                }
            });
        }
        return null;
    }
}
