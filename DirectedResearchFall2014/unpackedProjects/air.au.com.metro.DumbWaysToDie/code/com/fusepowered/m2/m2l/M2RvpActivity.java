package com.fusepowered.m2.m2l;

import java.util.*;
import android.util.*;
import android.content.*;
import android.view.*;
import android.os.*;

public class M2RvpActivity extends BaseInterstitialActivity implements BaseVideoViewListener
{
    private static final String VIDEO_CLASS_EXTRAS_KEY = "video_view_class_name";
    static final String VIDEO_URL = "video_url";
    private BaseVideoView mVideoView;
    
    private void broadcastVastInterstitialAction(final String s) {
        if (this.mVideoView instanceof VastVideoView) {
            this.broadcastInterstitialAction(s);
        }
    }
    
    static Intent createIntentMraid(final Context context, final String s) {
        final Intent intent = new Intent(context, (Class)M2RvpActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("video_view_class_name", "mraid");
        intent.putExtra("video_url", s);
        return intent;
    }
    
    static Intent createIntentVast(final Context context, final String s, final ArrayList<String> list, final ArrayList<String> list2, final ArrayList<String> list3, final ArrayList<String> list4, final ArrayList<String> list5, final ArrayList<String> list6, final String s2, final ArrayList<String> list7) {
        final Intent intent = new Intent(context, (Class)M2RvpActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("video_view_class_name", "vast");
        intent.putExtra("video_url", s);
        intent.putStringArrayListExtra("video_start_trackers", (ArrayList)list);
        intent.putStringArrayListExtra("video_first_quarter_trackers", (ArrayList)list2);
        intent.putStringArrayListExtra("video_mid_point_trackers", (ArrayList)list3);
        intent.putStringArrayListExtra("video_third_quarter_trackers", (ArrayList)list4);
        intent.putStringArrayListExtra("video_complete_trackers", (ArrayList)list5);
        intent.putStringArrayListExtra("video_impression_trackers", (ArrayList)list6);
        intent.putExtra("video_click_through_url", s2);
        intent.putStringArrayListExtra("video_click_through_trackers", (ArrayList)list7);
        return intent;
    }
    
    private BaseVideoView createVideoView() {
        final String stringExtra = this.getIntent().getStringExtra("video_view_class_name");
        if ("vast".equals(stringExtra)) {
            return new VastVideoView((Context)this, this.getIntent(), this);
        }
        if ("mraid".equals(stringExtra)) {
            return new MraidVideoView((Context)this, this.getIntent(), this);
        }
        this.broadcastInterstitialAction("com.mopub.action.interstitial.fail");
        this.finish();
        return (BaseVideoView)new MraidVideoPlayerActivity.MraidVideoPlayerActivity$1(this, (Context)this);
    }
    
    static void startMraid(final Context context, final String s) {
        final Intent intentMraid = createIntentMraid(context, s);
        try {
            context.startActivity(intentMraid);
        }
        catch (ActivityNotFoundException ex) {
            Log.d("MraidVideoPlayerActivity", "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }
    
    static void startVast(final Context context, final String s, final ArrayList<String> list, final ArrayList<String> list2, final ArrayList<String> list3, final ArrayList<String> list4, final ArrayList<String> list5, final ArrayList<String> list6, final String s2, final ArrayList<String> list7) {
        if (s == null) {
            return;
        }
        final Intent intentVast = createIntentVast(context, s, list, list2, list3, list4, list5, list6, s2, list7);
        try {
            context.startActivity(intentVast);
        }
        catch (ActivityNotFoundException ex) {
            Log.d("MoPub", "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }
    
    @Override
    public View getAdView() {
        return (View)(this.mVideoView = this.createVideoView());
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.hideInterstitialCloseButton();
        this.mVideoView.start();
        this.broadcastVastInterstitialAction("com.mopub.action.interstitial.show");
    }
    
    @Override
    protected void onDestroy() {
        this.broadcastVastInterstitialAction("com.mopub.action.interstitial.dismiss");
        super.onDestroy();
    }
    
    protected void onPause() {
        this.mVideoView.onPause();
        super.onPause();
    }
    
    protected void onResume() {
        super.onResume();
        this.mVideoView.onResume();
    }
    
    @Override
    public void showCloseButton() {
        this.showInterstitialCloseButton();
    }
    
    @Override
    public void videoClicked() {
        this.broadcastInterstitialAction("com.mopub.action.interstitial.click");
    }
    
    @Override
    public void videoCompleted(final boolean b) {
        this.showInterstitialCloseButton();
        if (b) {
            this.finish();
        }
    }
    
    @Override
    public void videoError(final boolean b) {
        Log.d("MoPub", "Error: video can not be played.");
        this.showInterstitialCloseButton();
        this.broadcastInterstitialAction("com.mopub.action.interstitial.fail");
        if (b) {
            this.finish();
        }
    }
}
