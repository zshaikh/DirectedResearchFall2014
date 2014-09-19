package com.fusepowered.m2.m2l;

import java.io.*;
import com.fusepowered.m2.m2l.factories.*;
import android.util.*;
import android.content.*;
import android.view.*;
import android.os.*;
import com.fusepowered.m2.m2l.util.*;
import android.webkit.*;

public class M2RActivity extends BaseInterstitialActivity
{
    private MraidView mMraidView;
    
    private static Intent createIntent(final Context context, final String s, final AdConfiguration adConfiguration) {
        final Intent intent = new Intent(context, (Class)M2RActivity.class);
        intent.putExtra("Html-Response-Body", s);
        intent.putExtra("Ad-Configuration", (Serializable)adConfiguration);
        intent.addFlags(268435456);
        return intent;
    }
    
    static void preRenderHtml(final Context context, final CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, final String s) {
        final MraidView create = MraidViewFactory.create(context, null, MraidView.ExpansionStyle.DISABLED, MraidView.NativeCloseButtonStyle.ALWAYS_VISIBLE, MraidView.PlacementType.INTERSTITIAL);
        create.enablePlugins(false);
        create.setMraidListener((MraidView.MraidListener)new MraidActivity.MraidActivity$1(customEventInterstitialListener));
        create.setWebViewClient((WebViewClient)new MraidActivity.MraidActivity$2(customEventInterstitialListener));
        create.loadHtmlData(s);
    }
    
    public static void start(final Context context, final String s, final AdConfiguration adConfiguration) {
        final Intent intent = createIntent(context, s, adConfiguration);
        try {
            context.startActivity(intent);
        }
        catch (ActivityNotFoundException ex) {
            Log.d("MraidInterstitial", "MraidActivity.class not found. Did you declare MraidActivity in your manifest?");
        }
    }
    
    @Override
    public View getAdView() {
        (this.mMraidView = MraidViewFactory.create((Context)this, this.getAdConfiguration(), MraidView.ExpansionStyle.DISABLED, MraidView.NativeCloseButtonStyle.AD_CONTROLLED, MraidView.PlacementType.INTERSTITIAL)).setMraidListener((MraidView.MraidListener)new MraidActivity.MraidActivity$3(this));
        this.mMraidView.setOnCloseButtonStateChange((MraidView.OnCloseButtonStateChangeListener)new MraidActivity.MraidActivity$4(this));
        this.mMraidView.loadHtmlData(this.getIntent().getStringExtra("Html-Response-Body"));
        return (View)this.mMraidView;
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.broadcastInterstitialAction("com.mopub.action.interstitial.show");
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH)) {
            this.getWindow().setFlags(16777216, 16777216);
        }
    }
    
    @Override
    protected void onDestroy() {
        this.mMraidView.destroy();
        this.broadcastInterstitialAction("com.mopub.action.interstitial.dismiss");
        super.onDestroy();
    }
    
    protected void onPause() {
        super.onPause();
        WebViews.onPause(this.mMraidView);
    }
    
    protected void onResume() {
        super.onResume();
        WebViews.onResume(this.mMraidView);
    }
}
