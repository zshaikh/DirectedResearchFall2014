package com.fusepowered.m2.m2l;

import android.net.*;
import android.content.*;
import android.util.*;

class MraidBrowserController extends MraidAbstractController
{
    private static final String LOGTAG = "MraidBrowserController";
    private Context mContext;
    
    MraidBrowserController(final MraidView mraidView) {
        super(mraidView);
        this.mContext = mraidView.getContext();
    }
    
    private boolean canHandleApplicationUrl(final String str) {
        if (!Utils.deviceCanHandleIntent(this.mContext, new Intent("android.intent.action.VIEW", Uri.parse(str)))) {
            Log.w("MoPub", "Could not handle application specific action: " + str + ". " + "You may be running in the emulator or another device which does not " + "have the required application.");
            return false;
        }
        return true;
    }
    
    private boolean executeIntent(final Context context, final Intent intent, final String s) {
        try {
            context.startActivity(intent);
            return true;
        }
        catch (Exception ex) {
            String s2;
            if (s != null) {
                s2 = s;
            }
            else {
                s2 = "Unable to start intent.";
            }
            Log.d("MoPub", s2);
            return false;
        }
    }
    
    private boolean isWebSiteUrl(final String s) {
        return s.startsWith("http://") || s.startsWith("https://");
    }
    
    private boolean launchApplicationUrl(final String s) {
        final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
        intent.addFlags(268435456);
        return this.executeIntent(this.getMraidView().getContext(), intent, "Unable to open intent.");
    }
    
    protected void open(final String str) {
        Log.d("MraidBrowserController", "Opening url: " + str);
        final MraidView mraidView = this.getMraidView();
        if (mraidView.getOnOpenListener() != null) {
            mraidView.getOnOpenListener().onOpen(mraidView);
        }
        if (!this.isWebSiteUrl(str) && this.canHandleApplicationUrl(str)) {
            this.launchApplicationUrl(str);
            return;
        }
        final Intent intent = new Intent(this.mContext, (Class)M2RBrowser.class);
        intent.putExtra("extra_url", str);
        intent.addFlags(268435456);
        this.mContext.startActivity(intent);
    }
}
