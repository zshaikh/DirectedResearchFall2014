package com.fusepowered.m1.android;

import java.lang.ref.*;
import android.net.*;
import java.util.*;
import android.content.*;
import java.lang.reflect.*;
import android.text.*;

class MMCommand implements Runnable
{
    private Map<String, String> arguments;
    private String callback;
    private Class cls;
    private Method method;
    private WeakReference<MMWebView> webViewRef;
    
    MMCommand(final MMWebView referent, final String s) {
        while (true) {
            super();
            this.webViewRef = new WeakReference<MMWebView>(referent);
            while (true) {
                int n;
                try {
                    final String[] split = Uri.parse(s).getHost().split("\\.");
                    if (split.length < 2) {
                        return;
                    }
                    final String str = split[split.length - 2];
                    final String name = split[split.length - 1];
                    this.arguments = new HashMap<String, String>();
                    final String[] split2 = s.substring(1 + s.indexOf(63)).split("&");
                    final int length = split2.length;
                    n = 0;
                    if (n >= length) {
                        this.cls = Class.forName("com.fusepowered.m1.android.Bridge" + str);
                        this.method = this.cls.getMethod(name, this.arguments.getClass());
                        return;
                    }
                    final String[] split3 = split2[n].split("=");
                    if (split3.length >= 2) {
                        this.arguments.put(Uri.decode(split3[0]), Uri.decode(split3[1]));
                        if (split3[0].equalsIgnoreCase("callback")) {
                            this.callback = Uri.decode(split3[1]);
                        }
                    }
                }
                catch (Exception ex) {
                    MMSDK.Log.e("Exception while executing javascript call %s %s", s, ex.getMessage());
                    ex.printStackTrace();
                    return;
                }
                ++n;
                continue;
            }
        }
    }
    
    private String getBridgeStrippedClassName() {
        return this.cls.getSimpleName().replaceFirst("Bridge", "");
    }
    
    boolean isResizeCommand() {
        return this.method != null && "resize".equals(this.method.getName());
    }
    
    @Override
    public void run() {
        if (this.cls != null && this.method != null) {
            try {
                final MMWebView mmWebView = this.webViewRef.get();
                if (mmWebView == null) {
                    return;
                }
                final MMJSObject obj = this.cls.newInstance();
                obj.setContext(mmWebView.getContext());
                obj.setMMWebView(mmWebView);
                mmWebView.updateArgumentsWithSettings(this.arguments);
                while (true) {
                    try {
                        MMJSResponse mmjsResponse = (MMJSResponse)this.method.invoke(obj, this.arguments);
                        if (this.callback == null || this.callback.length() <= 0) {
                            return;
                        }
                        final MMWebView mmWebView2 = this.webViewRef.get();
                        if (mmWebView2 != null) {
                            if (mmjsResponse == null) {
                                mmjsResponse = MMJSResponse.responseWithError(this.method.getName());
                            }
                            if (mmjsResponse.methodName == null) {
                                mmjsResponse.methodName = this.method.getName();
                            }
                            if (mmjsResponse.className == null) {
                                mmjsResponse.className = this.getBridgeStrippedClassName();
                            }
                            final String format = String.format("javascript:%s(%s);", this.callback, mmjsResponse.toJSONString());
                            MMSDK.Log.v("Executing JS bridge callback: " + format);
                            MMSDK.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    if (MMCommand.this.method.getName().equals("expandWithProperties")) {
                                        mmWebView2.isExpanding = true;
                                    }
                                    mmWebView2.loadUrl(format);
                                }
                            });
                        }
                        return;
                    }
                    catch (InvocationTargetException ex) {
                        final Throwable cause = ex.getCause();
                        if (cause != null && cause.getClass() == ActivityNotFoundException.class) {
                            final MMJSResponse mmjsResponse = MMJSResponse.responseWithError("Activity not found");
                            continue;
                        }
                        final MMJSResponse mmjsResponse = MMJSResponse.responseWithError();
                        continue;
                    }
                    break;
                }
            }
            catch (Exception ex2) {
                MMSDK.Log.e("Exception while executing javascript call %s %s", this.method.toString(), ex2.getMessage());
                ex2.printStackTrace();
                return;
            }
        }
        if (!TextUtils.isEmpty((CharSequence)this.callback)) {
            final String format2 = String.format("javascript:%s(%s);", this.callback, MMJSResponse.responseWithError("No class or method found").toJSONString());
            MMSDK.Log.v("Executing JS bridge failed callback: " + format2);
            MMSDK.runOnUiThread(new Runnable() {
                final /* synthetic */ MMWebView val$webViewCallback = MMCommand.this.webViewRef.get();
                
                @Override
                public void run() {
                    this.val$webViewCallback.loadUrl(format2);
                }
            });
        }
    }
}
