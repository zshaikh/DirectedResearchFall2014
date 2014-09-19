package com.fusepowered.m2.m2l;

import android.webkit.*;
import android.content.*;
import android.view.*;
import com.fusepowered.m2.m2l.util.*;
import android.util.*;
import java.lang.reflect.*;

public class BaseWebView extends WebView
{
    public BaseWebView(final Context context) {
        super(context.getApplicationContext());
        this.enablePlugins(false);
        WebViews.setDisableJSChromeClient(this);
    }
    
    public void destroy() {
        Views.removeFromParent((View)this);
        super.destroy();
    }
    
    protected void enablePlugins(final boolean b) {
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.JELLY_BEAN_MR2)) {
            return;
        }
        if (VersionCode.currentApiLevel().isBelow(VersionCode.FROYO)) {
            try {
                Class.forName("android.webkit.WebSettings").getDeclaredMethod("setPluginsEnabled", Boolean.TYPE).invoke(this.getSettings(), b);
                return;
            }
            catch (Exception ex) {
                final StringBuilder sb = new StringBuilder("Unable to ");
                String str;
                if (b) {
                    str = "enable";
                }
                else {
                    str = "disable";
                }
                Log.d("MoPub", sb.append(str).append("WebSettings plugins for BaseWebView.").toString());
                return;
            }
        }
        while (true) {
            while (true) {
                try {
                    final Class<?> forName = Class.forName("android.webkit.WebSettings$PluginState");
                    final Method declaredMethod = this.getSettings().getClass().getDeclaredMethod("setPluginState", forName);
                    if (b) {
                        final String name = "ON";
                        declaredMethod.invoke(this.getSettings(), Enum.valueOf(forName, name));
                        return;
                    }
                }
                catch (Exception ex2) {
                    Log.d("MoPub", "Unable to modify WebView plugin state.");
                    return;
                }
                final String name = "OFF";
                continue;
            }
        }
    }
}
