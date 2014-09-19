package com.vungle.sdk;

import android.os.*;
import android.view.animation.*;
import android.view.*;
import android.widget.*;
import java.util.*;
import android.app.*;
import android.content.*;
import android.media.*;
import android.util.*;
import android.graphics.drawable.*;

final class j extends com.vungle.sdk.g
{
    private static final boolean c;
    private g A;
    private a B;
    private Handler C;
    com.vungle.sdk.d a;
    boolean b;
    private Context d;
    private View e;
    private ProgressBar f;
    private VideoView g;
    private ImageView h;
    private ImageView i;
    private Timer j;
    private AudioManager k;
    private TextView l;
    private String m;
    private boolean n;
    private boolean o;
    private boolean p;
    private Object q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private int v;
    private int w;
    private long x;
    private AlertDialog y;
    private boolean z;
    
    static {
        c = (Build$VERSION.SDK_INT < 14);
    }
    
    public j(final Context d, final String m, final int v, final int w, final g a) throws com.vungle.sdk.g.a {
        super();
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.n = false;
        this.o = false;
        this.p = true;
        this.q = new Object();
        this.r = false;
        this.s = false;
        this.t = false;
        this.u = false;
        this.z = false;
        this.A = null;
        this.B = null;
        this.C = new Handler() {
            public final void handleMessage(final Message message) {
                if (com.vungle.sdk.j.this.g == null || com.vungle.sdk.j.this.r) {
                    return;
                }
                while (true) {
                    final float n = com.vungle.sdk.j.this.g.getCurrentPosition() / 1000.0f;
                    final float n2 = com.vungle.sdk.j.this.g.getDuration() / 1000.0f;
                    while (true) {
                        Label_0432: {
                            synchronized (com.vungle.sdk.j.this.q) {
                                if (!com.vungle.sdk.j.this.s) {
                                    com.vungle.sdk.j.this.h.getDrawable().setAlpha(0);
                                }
                                if (!com.vungle.sdk.j.this.t) {
                                    com.vungle.sdk.j.this.l.setTextColor(0);
                                    com.vungle.sdk.j.this.l.setShadowLayer(2.0f, 0.0f, 0.0f, 0);
                                }
                                switch (message.what) {
                                    case 66: {
                                        if (com.vungle.sdk.j.this.p && n > com.vungle.sdk.j.this.w && !com.vungle.sdk.j.this.s) {
                                            final AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                                            alphaAnimation.setDuration(1000L);
                                            com.vungle.sdk.j.this.h.startAnimation((Animation)alphaAnimation);
                                            com.vungle.sdk.j.this.s = true;
                                            com.vungle.sdk.j.this.h.getDrawable().setAlpha(255);
                                            com.vungle.sdk.j.this.h.bringToFront();
                                        }
                                        if (!com.vungle.sdk.j.this.t && n > com.vungle.sdk.j.this.v) {
                                            final AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.0f, 1.0f);
                                            alphaAnimation2.setDuration(1000L);
                                            com.vungle.sdk.j.this.l.startAnimation((Animation)alphaAnimation2);
                                            com.vungle.sdk.j.this.t = true;
                                            com.vungle.sdk.j.this.l.setTextColor(-1);
                                            com.vungle.sdk.j.this.l.setShadowLayer(2.0f, 0.0f, 0.0f, -16777216);
                                            com.vungle.sdk.j.this.l.bringToFront();
                                        }
                                        final int round = Math.round(n2 - n);
                                        final StringBuilder append = new StringBuilder("Video ends in ").append(round).append(" second");
                                        if (round == 1) {
                                            final String str = "";
                                            com.vungle.sdk.j.this.l.setText((CharSequence)append.append(str).toString());
                                            break;
                                        }
                                        break Label_0432;
                                    }
                                }
                                // monitorexit(j.o(this.a))
                                com.vungle.sdk.j.this.A.a(n, n2);
                                return;
                            }
                        }
                        final String str = "s";
                        continue;
                    }
                }
            }
        };
        this.b = false;
        this.d = d;
        if (m == null || m.length() == 0) {
            throw new com.vungle.sdk.g.a(this);
        }
        try {
            this.a(d);
            this.k = (AudioManager)d.getSystemService("audio");
            this.x = System.currentTimeMillis();
            this.m = m;
            this.v = v;
            this.w = w;
            this.A = a;
            ((Activity)d).setRequestedOrientation(com.vungle.sdk.n.C);
            this.e.setBackgroundColor(-16777216);
            this.f.setVisibility(0);
            this.h.getDrawable().setAlpha(0);
            this.l.setTextColor(0);
            this.g.setVisibility(4);
            this.n = !com.vungle.sdk.n.s;
            this.e();
            this.g.setOnPreparedListener((MediaPlayer$OnPreparedListener)new e((byte)0));
            this.g.setOnCompletionListener((MediaPlayer$OnCompletionListener)new b((byte)0));
            this.g.setOnErrorListener((MediaPlayer$OnErrorListener)new c((byte)0));
            this.i.setOnClickListener((View$OnClickListener)new d((byte)0));
            this.B = new a((byte)0);
            this.h.setOnClickListener((View$OnClickListener)this.B);
        }
        catch (Throwable t) {
            ab.a(t);
            throw new com.vungle.sdk.g.a(this);
        }
    }
    
    private void e() {
        this.k.setStreamMute(3, this.n);
        this.a.a(this.n);
    }
    
    private void f() {
        this.z = true;
        if (com.vungle.sdk.j.c) {
            ((RelativeLayout)this.e).removeView((View)this.g);
            this.g = null;
        }
        else {
            this.g.setVisibility(4);
        }
        if (this.n) {
            this.k.setStreamMute(3, false);
        }
    }
    
    private void g() {
        if (this.j != null) {
            return;
        }
        (this.j = new Timer()).schedule(new f((byte)0), 0L, 100L);
    }
    
    private void h() {
        if (this.j != null) {
            this.j.cancel();
            this.j.purge();
            this.j = null;
        }
    }
    
    private void i() {
        this.f();
        this.h();
        final g a = this.A;
        final long x = this.x;
        a.c();
    }
    
    @Override
    public final View a() {
        return this.e;
    }
    
    @Override
    protected final void a(final Context context) {
        this.a = new com.vungle.sdk.d(context);
        this.e = (View)this.a.a();
        this.f = this.a.b();
        this.g = this.a.f();
        this.h = this.a.d();
        this.i = this.a.e();
        this.l = this.a.c();
    }
    
    public final void a(final boolean p) {
        this.p = p;
    }
    
    @Override
    public final void b() {
        try {
            this.r = false;
            if (this.u) {
                return;
            }
            this.u = true;
            if (this.y != null) {
                return;
            }
            this.B.a();
            this.b = false;
            if (!this.o) {
                this.g.setVisibility(0);
                this.g.setVideoPath(this.m);
                return;
            }
        }
        catch (Throwable t) {
            ab.a(t);
            this.i();
            return;
        }
        synchronized (this.q) {
            this.l.setTextColor(0);
            this.l.setShadowLayer(2.0f, 0.0f, 0.0f, 0);
            this.h.getDrawable().setAlpha(0);
            this.s = false;
            this.t = false;
            // monitorexit(this.q)
            this.g.seekTo(0);
            this.g.start();
            this.g();
        }
    }
    
    @Override
    public final void c() {
        try {
            if (!this.u) {
                return;
            }
            this.u = false;
            if (this.y != null) {
                this.y.dismiss();
                this.y.hide();
                this.y = null;
            }
            if (this.g != null) {
                this.g.pause();
            }
            synchronized (this.q) {
                this.r = true;
                final AlphaAnimation alphaAnimation = (AlphaAnimation)this.l.getAnimation();
                if (alphaAnimation != null) {
                    alphaAnimation.cancel();
                }
                this.l.setAnimation((Animation)null);
                final AlphaAnimation alphaAnimation2 = (AlphaAnimation)this.h.getAnimation();
                if (alphaAnimation2 != null) {
                    alphaAnimation2.cancel();
                }
                this.h.setAnimation((Animation)null);
                this.l.setTextColor(0);
                this.l.setShadowLayer(2.0f, 0.0f, 0.0f, 0);
                this.h.getDrawable().setAlpha(0);
                this.h();
                this.s = false;
                this.t = false;
            }
        }
        catch (Throwable t) {
            ab.a(t);
            this.i();
        }
    }
    
    public final void d() {
        if (!this.b) {
            this.b = true;
            if (com.vungle.sdk.n.D) {
                this.g.pause();
                final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this.d);
                alertDialog$Builder.setTitle((CharSequence)"Confirm Cancel");
                alertDialog$Builder.setMessage((CharSequence)"Stopping this video early will prevent you from earning your reward. Continue?");
                alertDialog$Builder.setPositiveButton((CharSequence)"Keep Watching", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                    public final void onClick(final DialogInterface dialogInterface, final int n) {
                        com.vungle.sdk.j.this.g.start();
                        com.vungle.sdk.j.this.b = false;
                    }
                });
                alertDialog$Builder.setNegativeButton((CharSequence)"Cancel Video", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                    public final void onClick(final DialogInterface dialogInterface, final int n) {
                        final long n2 = com.vungle.sdk.j.this.g.getCurrentPosition();
                        final long n3 = com.vungle.sdk.j.this.g.getDuration();
                        com.vungle.sdk.j.this.g.stopPlayback();
                        com.vungle.sdk.j.this.f();
                        com.vungle.sdk.j.this.h();
                        com.vungle.sdk.j.this.A.a(com.vungle.sdk.j.this.x, n2, n3);
                    }
                });
                alertDialog$Builder.setOnCancelListener((DialogInterface$OnCancelListener)new DialogInterface$OnCancelListener() {
                    public final void onCancel(final DialogInterface dialogInterface) {
                        com.vungle.sdk.j.this.g.start();
                        com.vungle.sdk.j.this.b = false;
                    }
                });
                this.y = alertDialog$Builder.show();
                return;
            }
            if (!this.z) {
                final long n = this.g.getCurrentPosition();
                final long n2 = this.g.getDuration();
                this.g.stopPlayback();
                this.f();
                this.h();
                this.A.a(this.x, n, n2);
            }
        }
    }
    
    final class a implements View$OnClickListener
    {
        private boolean b;
        
        private a() {
            super();
            this.b = false;
        }
        
        public final void a() {
            this.b = false;
        }
        
        public final void onClick(final View view) {
            if (!com.vungle.sdk.j.this.z && !this.b) {
                final long n = com.vungle.sdk.j.this.g.getCurrentPosition();
                final long n2 = com.vungle.sdk.j.this.g.getDuration();
                if (com.vungle.sdk.j.this.p && n / 1000.0 >= com.vungle.sdk.j.this.w) {
                    this.b = true;
                    if (com.vungle.sdk.n.D && com.vungle.sdk.j.this.p && n / 1000.0 >= com.vungle.sdk.j.this.w) {
                        com.vungle.sdk.j.this.g.pause();
                        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(com.vungle.sdk.j.this.d);
                        alertDialog$Builder.setTitle((CharSequence)"Confirm Cancel");
                        alertDialog$Builder.setMessage((CharSequence)"Stopping this video early will prevent you from earning your reward. Continue?");
                        alertDialog$Builder.setPositiveButton((CharSequence)"Keep Watching", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                            public final void onClick(final DialogInterface dialogInterface, final int n) {
                                com.vungle.sdk.j.this.g.start();
                                com.vungle.sdk.j.a.this.b = false;
                            }
                        });
                        alertDialog$Builder.setNegativeButton((CharSequence)"Cancel Video", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                            public final void onClick(final DialogInterface dialogInterface, final int n) {
                                final long n2 = com.vungle.sdk.j.this.g.getCurrentPosition();
                                final long n3 = com.vungle.sdk.j.this.g.getDuration();
                                com.vungle.sdk.j.this.g.stopPlayback();
                                com.vungle.sdk.j.this.f();
                                com.vungle.sdk.j.this.h();
                                com.vungle.sdk.j.this.A.a(com.vungle.sdk.j.this.x, n2, n3);
                            }
                        });
                        alertDialog$Builder.setOnCancelListener((DialogInterface$OnCancelListener)new DialogInterface$OnCancelListener() {
                            public final void onCancel(final DialogInterface dialogInterface) {
                                com.vungle.sdk.j.this.g.start();
                                com.vungle.sdk.j.a.this.b = false;
                            }
                        });
                        com.vungle.sdk.j.this.y = alertDialog$Builder.show();
                        return;
                    }
                    com.vungle.sdk.j.this.g.stopPlayback();
                    com.vungle.sdk.j.this.f();
                    com.vungle.sdk.j.this.h();
                    com.vungle.sdk.j.this.A.a(com.vungle.sdk.j.this.x, n, n2);
                }
            }
        }
    }
    
    final class b implements MediaPlayer$OnCompletionListener
    {
        public final void onCompletion(final MediaPlayer mediaPlayer) {
            if (com.vungle.sdk.j.this.z) {
                return;
            }
            final long n = mediaPlayer.getDuration();
            com.vungle.sdk.j.this.h();
            com.vungle.sdk.j.this.f();
            com.vungle.sdk.j.this.A.a(com.vungle.sdk.j.this.x, n);
        }
    }
    
    final class c implements MediaPlayer$OnErrorListener
    {
        public final boolean onError(final MediaPlayer mediaPlayer, final int i, final int j) {
            if (j.this.z) {
                return false;
            }
            Log.e("OnErrorListener", "Error encountered during video playback: what(" + i + ") extra(" + j + ")");
            j.this.h();
            j.this.f();
            final g k = j.this.A;
            j.this.x;
            k.c();
            return true;
        }
    }
    
    final class d implements View$OnClickListener
    {
        public final void onClick(final View view) {
            com.vungle.sdk.j.this.n = !com.vungle.sdk.j.this.n;
            final x c = ab.c();
            String s;
            if (com.vungle.sdk.j.this.n) {
                s = "muted";
            }
            else {
                s = "un-muted";
            }
            c.a(s);
            com.vungle.sdk.j.this.e();
            if (com.vungle.sdk.j.this.g != null) {
                com.vungle.sdk.j.this.g.getCurrentPosition();
            }
            if (com.vungle.sdk.j.this.g != null) {
                com.vungle.sdk.j.this.g.getDuration();
            }
            if (com.vungle.sdk.j.this.n) {
                com.vungle.sdk.j.this.A.a();
                return;
            }
            com.vungle.sdk.j.this.A.b();
        }
    }
    
    final class e implements MediaPlayer$OnPreparedListener
    {
        public final void onPrepared(final MediaPlayer mediaPlayer) {
            com.vungle.sdk.j.this.f.setVisibility(4);
            com.vungle.sdk.j.this.x = System.currentTimeMillis();
            com.vungle.sdk.j.this.g.setBackgroundDrawable((Drawable)null);
            if (((Activity)com.vungle.sdk.j.this.d).hasWindowFocus()) {
                com.vungle.sdk.j.this.g.start();
                com.vungle.sdk.j.this.g();
            }
        }
    }
    
    final class f extends TimerTask
    {
        @Override
        public final void run() {
            com.vungle.sdk.j.this.C.sendEmptyMessage(66);
        }
    }
    
    public interface g
    {
        void a();
        
        void a(float p0, float p1);
        
        void a(long p0, long p1);
        
        void a(long p0, long p1, long p2);
        
        void b();
        
        void c();
    }
}
