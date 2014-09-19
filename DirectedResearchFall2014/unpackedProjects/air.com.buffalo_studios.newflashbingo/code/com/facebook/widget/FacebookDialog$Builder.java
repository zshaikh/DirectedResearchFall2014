package com.facebook.widget;

import android.app.*;
import c.m.x.a.gv.*;
import com.facebook.internal.*;
import android.content.*;
import com.facebook.*;
import java.util.*;
import android.os.*;

abstract class FacebookDialog$Builder<CONCRETE extends FacebookDialog$Builder<?>>
{
    protected final Activity activity;
    protected final FacebookDialog$PendingCall appCall;
    protected final String applicationId;
    protected String applicationName;
    protected e fragment;
    
    FacebookDialog$Builder(final Activity activity) {
        super();
        Validate.notNull(activity, "activity");
        this.activity = activity;
        this.applicationId = Utility.getMetadataApplicationId((Context)activity);
        this.appCall = new FacebookDialog$PendingCall(64207);
    }
    
    public FacebookDialog build() {
        this.validate();
        final Bundle bundleExtras = new Bundle();
        this.putExtra(bundleExtras, "com.facebook.platform.extra.APPLICATION_ID", this.applicationId);
        this.putExtra(bundleExtras, "com.facebook.platform.extra.APPLICATION_NAME", this.applicationName);
        final Bundle setBundleExtras = this.setBundleExtras(bundleExtras);
        final String access$100 = getActionForFeatures(this.getDialogFeatures());
        final Intent platformActivityIntent = NativeProtocol.createPlatformActivityIntent((Context)this.activity, access$100, getProtocolVersionForNativeDialog((Context)this.activity, access$100, getMinVersionForFeatures(this.getDialogFeatures())), setBundleExtras);
        if (platformActivityIntent == null) {
            throw new FacebookException("Unable to create Intent; this likely means the Facebook app is not installed.");
        }
        this.appCall.setRequestIntent(platformActivityIntent);
        return new FacebookDialog(this.activity, this.fragment, this.appCall, this.getOnPresentCallback(), null);
    }
    
    public boolean canPresent() {
        return handleCanPresent((Context)this.activity, this.getDialogFeatures());
    }
    
    abstract EnumSet<? extends FacebookDialog$DialogFeature> getDialogFeatures();
    
    FacebookDialog$OnPresentCallback getOnPresentCallback() {
        return null;
    }
    
    void putExtra(final Bundle bundle, final String s, final String s2) {
        if (s2 != null) {
            bundle.putString(s, s2);
        }
    }
    
    public CONCRETE setApplicationName(final String applicationName) {
        this.applicationName = applicationName;
        return (CONCRETE)this;
    }
    
    abstract Bundle setBundleExtras(final Bundle p0);
    
    public CONCRETE setFragment(final e fragment) {
        this.fragment = fragment;
        return (CONCRETE)this;
    }
    
    public CONCRETE setRequestCode(final int n) {
        FacebookDialog$PendingCall.access$000(this.appCall, n);
        return (CONCRETE)this;
    }
    
    void validate() {
    }
}
