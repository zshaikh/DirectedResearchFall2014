package com.inmobi.androidsdk.ai.controller.util;

import com.inmobi.androidsdk.ai.controller.*;
import com.inmobi.androidsdk.ai.container.*;
import android.media.*;
import android.content.*;
import com.inmobi.commons.internal.*;
import android.widget.*;
import android.view.*;
import java.lang.ref.*;
import android.os.*;

public class IMAVPlayer extends VideoView implements MediaPlayer$OnCompletionListener, MediaPlayer$OnErrorListener, MediaPlayer$OnPreparedListener
{
    public static final int MINIMAL_LAYOUT_PARAM = 1;
    private static String f;
    private static String g;
    private static String h;
    private static int i;
    private static int j;
    private static String k;
    private JSController.PlayerProperties a;
    private AudioManager b;
    private IMAVPlayerListener c;
    private String d;
    private RelativeLayout e;
    private boolean l;
    private boolean m;
    private IMWebView n;
    private int o;
    private int p;
    private int q;
    private playerState r;
    private MediaPlayer s;
    private boolean t;
    private ViewGroup u;
    private JSController.Dimensions v;
    private a w;
    
    static {
        IMAVPlayer.f = "play";
        IMAVPlayer.g = "pause";
        IMAVPlayer.h = "ended";
        IMAVPlayer.i = -1;
        IMAVPlayer.j = 2;
        IMAVPlayer.k = "Loading. Please Wait..";
    }
    
    private IMAVPlayer(final Context context) {
        super(context);
        this.l = false;
        this.m = false;
        this.q = -1;
        this.w = new a(this);
    }
    
    public IMAVPlayer(final Context context, final IMWebView n) {
        this(context);
        this.setZOrderOnTop(true);
        this.b = (AudioManager)this.getContext().getSystemService("audio");
        this.n = n;
        this.setFocusable(true);
        this.setFocusableInTouchMode(true);
        this.o = this.b.getStreamVolume(3);
        this.p = this.o;
        this.getHolder().addCallback((SurfaceHolder$Callback)new SurfaceHolder$Callback() {
            public void surfaceChanged(final SurfaceHolder surfaceHolder, final int n, final int n2, final int n3) {
            }
            
            public void surfaceCreated(final SurfaceHolder surfaceHolder) {
            }
            
            public void surfaceDestroyed(final SurfaceHolder surfaceHolder) {
                IMAVPlayer.this.post((Runnable)new Runnable() {
                    @Override
                    public void run() {
                        IMAVPlayer.this.releasePlayer(false);
                    }
                });
            }
        });
    }
    
    private static String a(final String s) {
        while (true) {
            while (true) {
                int n;
                try {
                    final byte[] bytes = s.getBytes();
                    final StringBuffer sb = new StringBuffer();
                    n = 0;
                    if (n >= bytes.length) {
                        return new String(sb.toString().getBytes(), "ISO-8859-1");
                    }
                    if ((0x80 & bytes[n]) > 0) {
                        sb.append("%" + InternalSDKUtil.byteToHex(bytes[n]));
                    }
                    else {
                        sb.append((char)bytes[n]);
                    }
                }
                catch (Exception ex) {
                    IMLog.internal("InMobiAndroidSDK_3.6.2", "IMAVPlayer Error convert", ex);
                    return null;
                }
                ++n;
                continue;
            }
        }
    }
    
    private void a() {
        if (this.a.showControl()) {
            final MediaController mediaController = new MediaController(this.getContext());
            this.setMediaController(mediaController);
            mediaController.setAnchorView((View)this);
        }
    }
    
    private void a(final int i) {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaErrorEvent('" + this.a.id + "'," + i + ");");
        }
    }
    
    private void a(final int i, final int j) {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaTimeUpdateEvent('" + this.a.id + "'," + i + "," + j + ");");
        }
    }
    
    static /* synthetic */ void a(final IMAVPlayer imavPlayer, final int o) {
        imavPlayer.o = o;
    }
    
    private void a(final boolean b, final int i) {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaCloseEvent('" + this.a.id + "'," + b + "," + i + ");");
        }
    }
    
    private int b(final int n) {
        return n * this.b.getStreamMaxVolume(3) / 100;
    }
    
    private void b() {
        this.d = this.d.trim();
        this.d = a(this.d);
        this.r = playerState.INIT;
        this.e();
        this.setVideoPath(this.d);
        this.a();
        this.setOnCompletionListener((MediaPlayer$OnCompletionListener)this);
        this.setOnErrorListener((MediaPlayer$OnErrorListener)this);
        this.setOnPreparedListener((MediaPlayer$OnPreparedListener)this);
    }
    
    static /* synthetic */ void b(final IMAVPlayer imavPlayer, final int p2) {
        imavPlayer.p = p2;
    }
    
    private void b(final String str) {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaTrackingEvent('" + str + "','" + this.a.id + "');");
        }
    }
    
    private void c() {
        if (this.r == playerState.SHOWING) {
            playerState r;
            if (this.m) {
                r = playerState.COMPLETED;
            }
            else {
                r = playerState.PAUSED;
            }
            this.r = r;
        }
        else if (this.a.isAutoPlay() && this.r == playerState.INIT) {
            if (this.a.doMute()) {
                this.mute();
            }
            this.start();
        }
    }
    
    static /* synthetic */ void c(final IMAVPlayer imavPlayer, final int q) {
        imavPlayer.q = q;
    }
    
    private void d() {
        try {
            final ViewGroup viewGroup = (ViewGroup)this.getParent();
            if (viewGroup != null) {
                viewGroup.removeView((View)this);
            }
        }
        catch (Exception ex) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "IMAVPlayer removeView Exception", ex);
        }
    }
    
    private void e() {
        (this.e = new RelativeLayout(this.getContext())).setLayoutParams(this.getLayoutParams());
        this.e.setBackgroundColor(-16777216);
        final TextView textView = new TextView(this.getContext());
        textView.setText((CharSequence)IMAVPlayer.k);
        textView.setTextColor(-1);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
        relativeLayout$LayoutParams.addRule(13);
        this.e.addView((View)textView, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        ((ViewGroup)this.getParent()).addView((View)this.e);
    }
    
    private void f() {
        if (this.e != null) {
            ((ViewGroup)this.getParent()).removeView((View)this.e);
        }
    }
    
    private void g() {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaVolumeChangeEvent('" + this.a.id + "'," + this.getVolume() + "," + this.isMediaMuted() + ");");
        }
    }
    
    private void h() {
        this.w.sendEmptyMessage(1001);
    }
    
    private void i() {
        this.w.removeMessages(1001);
    }
    
    private boolean j() {
        return this.r == playerState.PAUSED || this.r == playerState.HIDDEN;
    }
    
    private boolean k() {
        return this.r == playerState.RELEASED;
    }
    
    private boolean l() {
        return this.r == playerState.PLAYING;
    }
    
    private void m() {
        this.b.setStreamVolume(3, this.p, 4);
    }
    
    private boolean n() {
        return this.getLayoutParams().width == 1 && this.getLayoutParams().height == 1;
    }
    
    public ViewGroup getBackGroundLayout() {
        return this.u;
    }
    
    public String getMediaURL() {
        return this.d;
    }
    
    public JSController.Dimensions getPlayDimensions() {
        return this.v;
    }
    
    public JSController.PlayerProperties getProperties() {
        return this.a;
    }
    
    public String getPropertyID() {
        return this.a.id;
    }
    
    public playerState getState() {
        return this.r;
    }
    
    public int getVolume() {
        synchronized (IMAVPlayer.class) {
            if (!this.isPlaying()) {
                this.o = this.b.getStreamVolume(3);
            }
            // monitorexit(IMAVPlayer.class)
            return 100 * this.o / this.b.getStreamMaxVolume(3);
        }
    }
    
    public void hide() {
        try {
            if (this.isPlaying()) {
                this.pause();
            }
            this.u.setVisibility(8);
            this.r = playerState.HIDDEN;
        }
        catch (Exception ex) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "IMAVPlayer hide exception", ex);
        }
    }
    
    public boolean isInlineVideo() {
        return !this.a.isFullScreen();
    }
    
    public boolean isMediaMuted() {
        return this.o == 0 || this.t;
    }
    
    public void mute() {
        if (this.s == null || this.t) {
            return;
        }
        this.t = true;
        while (true) {
            try {
                this.s.setVolume(0.0f, 0.0f);
                this.g();
            }
            catch (Exception ex) {
                IMLog.internal("InMobiAndroidSDK_3.6.2", "IMAVPlayer mute exception", ex);
                continue;
            }
            break;
        }
    }
    
    public void onCompletion(final MediaPlayer mediaPlayer) {
        try {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "AVPlayer-> onCompletion");
            this.r = playerState.COMPLETED;
            this.m = true;
            this.b(IMAVPlayer.h);
            this.i();
            if (this.a.doLoop()) {
                synchronized (this) {
                    if (!this.j()) {
                        this.start();
                    }
                    return;
                }
            }
        }
        catch (Exception ex) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "IMAvplayer onCompletion exception ", ex);
            return;
        }
        if (this.a.exitOnComplete()) {
            this.releasePlayer(false);
        }
    }
    
    public boolean onError(final MediaPlayer mediaPlayer, final int i, final int n) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "AVPlayer-> Player error : " + i);
        this.f();
        this.releasePlayer(false);
        if (this.c != null) {
            this.c.onError(this);
        }
        int n2 = IMAVPlayer.i;
        if (i == 100) {
            n2 = IMAVPlayer.j;
        }
        this.a(n2);
        return false;
    }
    
    public void onPrepared(final MediaPlayer s) {
        this.s = s;
        while (true) {
            if (!this.t) {
                break Label_0021;
            }
            try {
                this.s.setVolume(0.0f, 0.0f);
                IMLog.debug("InMobiAndroidSDK_3.6.2", "AVPlayer-> onPrepared");
                this.f();
                if (this.c != null) {
                    this.c.onPrepared(this);
                }
                this.l = true;
                this.c();
            }
            catch (Exception ex) {
                IMLog.internal("InMobiAndroidSDK_3.6.2", "IMAvplayer onPrepared exception ", ex);
                continue;
            }
            break;
        }
    }
    
    protected void onWindowVisibilityChanged(final int n) {
        try {
            super.onWindowVisibilityChanged(n);
        }
        catch (Exception ex) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "IMAVPlayer onWindowVisibility exception", ex);
        }
    }
    
    public void pause() {
        synchronized (this) {
            if (this.r == null || this.r != playerState.PAUSED) {
                super.pause();
                this.r = playerState.PAUSED;
                this.i();
                IMLog.debug("InMobiAndroidSDK_3.6.2", "AVPlayer-> pause");
                this.b(IMAVPlayer.g);
            }
        }
    }
    
    public void play() {
        this.b();
    }
    
    public void releasePlayer(final boolean b) {
        if (this.n != null) {
            this.n.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
                public boolean onTouch(final View view, final MotionEvent motionEvent) {
                    return false;
                }
            });
        }
        while (true) {
            while (true) {
                synchronized (this) {
                    if (this.k()) {
                        return;
                    }
                    // monitorexit(this)
                    this.r = playerState.RELEASED;
                    if (this.q != -1) {
                        final int n = this.q;
                        this.a(b, n);
                        this.q = -1;
                        this.i();
                        this.unMute();
                        this.m();
                        this.stopPlayback();
                        this.d();
                        if (this.c != null) {
                            this.c.onComplete(this);
                            return;
                        }
                        break;
                    }
                }
                final int n = Math.round(this.getCurrentPosition() / 1000);
                continue;
            }
        }
    }
    
    public void seekPlayer(final int n) {
        if (n <= this.getDuration()) {
            this.seekTo(n);
        }
    }
    
    public void setBackGroundLayout(final ViewGroup u) {
        this.u = u;
    }
    
    public void setListener(final IMAVPlayerListener c) {
        this.c = c;
    }
    
    public void setPlayData(final JSController.PlayerProperties a, final String d) {
        this.a = a;
        this.d = d;
    }
    
    public void setPlayDimensions(final JSController.Dimensions v) {
        this.v = v;
    }
    
    public void setVolume(final int n) {
        synchronized (IMAVPlayer.class) {
            this.o = this.b(n);
            // monitorexit(IMAVPlayer.class)
            this.b.setStreamVolume(3, this.o, 4);
            if (this.t) {
                this.unMute();
                return;
            }
        }
        this.g();
    }
    
    public void show() {
        this.r = playerState.SHOWING;
        this.u.setVisibility(0);
        this.setVisibility(0);
    }
    
    public void start() {
        synchronized (this) {
            if (this.n != null && !this.n()) {
                this.n.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
                    public boolean onTouch(final View view, final MotionEvent motionEvent) {
                        return motionEvent.getAction() == 2;
                    }
                });
            }
            if (this.r == null || this.r != playerState.PLAYING) {
                super.start();
                this.r = playerState.PLAYING;
                this.m = false;
                this.h();
                IMLog.debug("InMobiAndroidSDK_3.6.2", "AVPlayer-> start playing");
                if (this.l) {
                    this.b(IMAVPlayer.f);
                }
            }
        }
    }
    
    public void unMute() {
        if (this.s == null) {
            return;
        }
        this.t = false;
        while (true) {
            try {
                this.s.setVolume(1.0f, 1.0f);
                this.g();
            }
            catch (Exception ex) {
                IMLog.internal("InMobiAndroidSDK_3.6.2", "IMAVPlayer unmute exception", ex);
                continue;
            }
            break;
        }
    }
    
    static class a extends Handler
    {
        private final WeakReference<IMAVPlayer> a;
        
        public a(final IMAVPlayer referent) {
            super();
            this.a = new WeakReference<IMAVPlayer>(referent);
        }
        
        public void handleMessage(final Message message) {
            final IMAVPlayer imavPlayer = this.a.get();
            if (imavPlayer != null) {
                switch (message.what) {
                    case 1001: {
                        if (!imavPlayer.l()) {
                            return;
                        }
                        synchronized (IMAVPlayer.class) {
                            final int streamVolume = imavPlayer.b.getStreamVolume(3);
                            if (streamVolume != imavPlayer.o) {
                                IMAVPlayer.a(imavPlayer, streamVolume);
                                IMAVPlayer.b(imavPlayer, imavPlayer.o);
                                if (imavPlayer.t) {
                                    imavPlayer.unMute();
                                }
                                else {
                                    imavPlayer.g();
                                }
                            }
                            // monitorexit(IMAVPlayer.class)
                            final int round = Math.round(imavPlayer.getCurrentPosition() / 1000);
                            final int round2 = Math.round(imavPlayer.getDuration() / 1000);
                            if (imavPlayer.q != round) {
                                imavPlayer.a(round, round2);
                                IMAVPlayer.c(imavPlayer, round);
                            }
                            this.sendEmptyMessageDelayed(1001, 1000L);
                            break;
                        }
                        break;
                    }
                }
            }
            super.handleMessage(message);
        }
    }
    
    public enum playerState
    {
        COMPLETED("COMPLETED", 5), 
        HIDDEN("HIDDEN", 3), 
        INIT("INIT", 0), 
        PAUSED("PAUSED", 2), 
        PLAYING("PLAYING", 1), 
        RELEASED("RELEASED", 6), 
        SHOWING("SHOWING", 4);
        
        static {
            a = new playerState[] { playerState.INIT, playerState.PLAYING, playerState.PAUSED, playerState.HIDDEN, playerState.SHOWING, playerState.COMPLETED, playerState.RELEASED };
        }
    }
}
