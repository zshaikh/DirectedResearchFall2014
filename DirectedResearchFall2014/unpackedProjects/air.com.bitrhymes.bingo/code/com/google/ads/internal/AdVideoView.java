package com.google.ads.internal;

import java.lang.ref.*;
import android.app.*;
import android.content.*;
import android.widget.*;
import android.view.*;
import android.text.*;
import android.webkit.*;
import android.media.*;
import com.google.ads.util.*;
import android.os.*;
import com.google.ads.*;

public class AdVideoView extends FrameLayout implements MediaPlayer$OnCompletionListener, MediaPlayer$OnErrorListener, MediaPlayer$OnPreparedListener
{
    private static final com.google.ads.internal.a b;
    public MediaController a;
    private final WeakReference<Activity> c;
    private final AdWebView d;
    private long e;
    private final VideoView f;
    private String g;
    
    static {
        b = com.google.ads.internal.a.a.b();
    }
    
    public AdVideoView(final Activity referent, final AdWebView d) {
        super((Context)referent);
        this.c = new WeakReference<Activity>(referent);
        this.d = d;
        this.addView((View)(this.f = new VideoView((Context)referent)), (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1, 17));
        this.a = null;
        this.g = null;
        this.e = 0L;
        this.a();
        this.f.setOnCompletionListener((MediaPlayer$OnCompletionListener)this);
        this.f.setOnPreparedListener((MediaPlayer$OnPreparedListener)this);
        this.f.setOnErrorListener((MediaPlayer$OnErrorListener)this);
    }
    
    protected void a() {
        new a(this).a();
    }
    
    public void a(final int n) {
        this.f.seekTo(n);
    }
    
    public void a(final MotionEvent motionEvent) {
        this.f.onTouchEvent(motionEvent);
    }
    
    public void b() {
        if (!TextUtils.isEmpty((CharSequence)this.g)) {
            this.f.setVideoPath(this.g);
            return;
        }
        AdVideoView.b.a(this.d, "onVideoEvent", "{'event': 'error', 'what': 'no_src'}");
    }
    
    public void c() {
        this.f.pause();
    }
    
    public void d() {
        this.f.start();
    }
    
    public void e() {
        this.f.stopPlayback();
    }
    
    void f() {
        final long e = this.f.getCurrentPosition();
        if (this.e != e) {
            AdVideoView.b.a(this.d, "onVideoEvent", "{'event': 'timeupdate', 'time': " + e / 1000.0f + "}");
            this.e = e;
        }
    }
    
    public void onCompletion(final MediaPlayer mediaPlayer) {
        AdVideoView.b.a(this.d, "onVideoEvent", "{'event': 'ended'}");
    }
    
    public boolean onError(final MediaPlayer mediaPlayer, final int n, final int n2) {
        com.google.ads.util.b.e("Video threw error! <what:" + n + ", extra:" + n2 + ">");
        AdVideoView.b.a(this.d, "onVideoEvent", "{'event': 'error', 'what': '" + n + "', 'extra': '" + n2 + "'}");
        return true;
    }
    
    public void onPrepared(final MediaPlayer mediaPlayer) {
        AdVideoView.b.a(this.d, "onVideoEvent", "{'event': 'canplaythrough', 'duration': '" + this.f.getDuration() / 1000.0f + "'}");
    }
    
    public void setMediaControllerEnabled(final boolean b) {
        final Activity activity = this.c.get();
        if (activity == null) {
            b.e("adActivity was null while trying to enable controls on a video.");
            return;
        }
        if (b) {
            if (this.a == null) {
                this.a = new MediaController((Context)activity);
            }
            this.f.setMediaController(this.a);
            return;
        }
        if (this.a != null) {
            this.a.hide();
        }
        this.f.setMediaController((MediaController)null);
    }
    
    public void setSrc(final String g) {
        this.g = g;
    }
    
    private static class a implements Runnable
    {
        private final WeakReference<AdVideoView> a;
        
        public a(final AdVideoView referent) {
            super();
            this.a = new WeakReference<AdVideoView>(referent);
        }
        
        public void a() {
            m.a().c.a().postDelayed((Runnable)this, 250L);
        }
        
        @Override
        public void run() {
            final AdVideoView adVideoView = this.a.get();
            if (adVideoView == null) {
                com.google.ads.util.b.d("The video must be gone, so cancelling the timeupdate task.");
                return;
            }
            adVideoView.f();
            m.a().c.a().postDelayed((Runnable)this, 250L);
        }
    }
}
