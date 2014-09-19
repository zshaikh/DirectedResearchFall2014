package com.applovin.adview;

import android.app.*;
import android.util.*;
import android.os.*;
import com.applovin.impl.sdk.*;
import android.content.*;
import android.widget.*;
import android.view.*;
import java.util.*;
import com.applovin.impl.adview.*;
import com.applovin.sdk.*;

public class AppLovinInterstitialActivity extends Activity
{
    public static final String KEY_WRAPPER_ID = "com.applovin.interstitial.wrapper_id";
    private AppLovinAdViewInternal a;
    private ah b;
    private volatile boolean c;
    private int d;
    private int e;
    private boolean f;
    
    public AppLovinInterstitialActivity() {
        super();
        this.c = false;
        this.d = 0;
        this.e = 0;
        this.f = false;
    }
    
    public void exitWithError(final String str) {
        Log.e("AppLovinInterstitialActivity", "Failed to properly render an Interstitial Activity, due to error: " + str, new Throwable());
        this.finish();
    }
    
    public void onBackPressed() {
        if (this.b != null) {
            if (this.b.g()) {
                super.onBackPressed();
            }
            return;
        }
        super.onBackPressed();
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.requestWindowFeature(1);
        while (true) {
            try {
                this.getWindow().setFlags(1024, 1024);
                this.setTheme(16973841);
                final String stringExtra = this.getIntent().getStringExtra("com.applovin.interstitial.wrapper_id");
                if (stringExtra != null && !stringExtra.isEmpty()) {
                    this.b = ah.a(stringExtra);
                    if (this.b != null) {
                        if (this.b.a() != null) {
                            final int rotation = ((WindowManager)this.getSystemService("window")).getDefaultDisplay().getRotation();
                            if (this.b.e() == AppLovinAdInternal$AdTarget.ACTIVITY_PORTRAIT) {
                                if (rotation != 0) {
                                    this.c = true;
                                }
                                this.setRequestedOrientation(1);
                            }
                            else {
                                if (rotation != 1 && rotation != 3) {
                                    this.c = true;
                                }
                                this.setRequestedOrientation(0);
                            }
                            (this.a = new AppLovinAdViewInternal(AppLovinAdSize.INTERSTITIAL, this)).setAutoDestroy(false);
                            final RelativeLayout contentView = new RelativeLayout((Context)this);
                            contentView.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
                            contentView.setBackgroundColor(-1157627904);
                            contentView.addView((View)this.a);
                            this.setContentView((View)contentView);
                        }
                        else {
                            this.exitWithError("No current ad found.");
                        }
                    }
                    else {
                        this.exitWithError("Wrapper is null");
                    }
                }
                else {
                    this.exitWithError("Wrapper ID is null");
                }
                this.renderDialog();
            }
            catch (Throwable t) {
                continue;
            }
            break;
        }
    }
    
    protected void onDestroy() {
        if (this.a != null) {
            this.a.destroy();
        }
        super.onDestroy();
    }
    
    protected void onPause() {
        if (!this.c) {
            final AdViewControllerJsInterface adViewControllerJsInterface = this.a.getAdViewControllerJsInterface();
            adViewControllerJsInterface.pauseVideo(null);
            this.d = adViewControllerJsInterface.getPlaybackTime();
            this.e = adViewControllerJsInterface.getPercentViewed();
            this.f = true;
        }
        super.onPause();
    }
    
    protected void onResume() {
        super.onResume();
        if (!this.c) {
            final AdViewControllerJsInterface adViewControllerJsInterface = this.a.getAdViewControllerJsInterface();
            if (this.d > 0 && this.e < 98) {
                adViewControllerJsInterface.setPlaybackTime(this.d);
            }
            else if (this.f) {
                adViewControllerJsInterface.pauseVideo(null);
                adViewControllerJsInterface.notifyJavaScriptOfNewState(AppLovinVideoPlaybackState.STOPPED);
                this.d = 100;
            }
        }
    }
    
    protected void renderDialog() {
        if (!this.c) {
            if (this.a == null) {
                this.exitWithError("AdView was null");
                return;
            }
            this.a.setAdDisplayListener(new a(this));
            this.a.setAdClickListener(new b(this));
            this.a.setAdVideoPlaybackListener(new c(this));
            this.a.renderAd(this.b.a());
            this.b.a(true);
        }
    }
}
