package com.flurry.android;

import android.app.*;
import android.text.*;
import android.webkit.*;
import android.net.*;
import android.widget.*;
import android.media.*;
import android.content.res.*;
import android.os.*;
import android.content.*;
import java.util.*;
import android.view.*;

public final class FlurryFullscreenTakeoverActivity extends Activity implements MediaPlayer$OnCompletionListener, MediaPlayer$OnErrorListener, MediaPlayer$OnPreparedListener
{
    public static final String EXTRA_KEY_ADSPACENAME = "adSpaceName";
    public static final String EXTRA_KEY_FRAMEINDEX = "frameIndex";
    public static final String EXTRA_KEY_TARGETINTENT = "targetIntent";
    public static final String EXTRA_KEY_URL = "url";
    private static final String d;
    private cl A;
    private ProgressDialog B;
    private VideoView C;
    private boolean D;
    private MediaController E;
    private boolean F;
    private Intent G;
    private String H;
    private bn y;
    private FrameLayout z;
    
    static {
        d = FlurryFullscreenTakeoverActivity.class.getSimpleName();
    }
    
    private static boolean a(final String s) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            final String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(s));
            return mimeTypeFromExtension != null && mimeTypeFromExtension.startsWith("video/");
        }
        return false;
    }
    
    private void b(final String s) {
        if (!TextUtils.isEmpty((CharSequence)s) && this.C != null && this.z != null) {
            this.E = new MediaController((Context)this);
            this.C.setOnPreparedListener((MediaPlayer$OnPreparedListener)this);
            this.C.setOnCompletionListener((MediaPlayer$OnCompletionListener)this);
            this.C.setOnErrorListener((MediaPlayer$OnErrorListener)this);
            this.C.setMediaController(this.E);
            this.C.setVideoURI(Uri.parse(s));
            this.z.addView((View)this.C, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1, 17));
            (this.B = new ProgressDialog((Context)this)).setProgressStyle(0);
            this.B.setMessage((CharSequence)"Loading...");
            this.B.setCancelable(true);
            this.B.show();
            if (this.A != null) {
                this.A.setVisibility(8);
            }
        }
    }
    
    private void e() {
        if (this.B != null) {
            if (this.B.isShowing()) {
                this.B.dismiss();
            }
            this.B = null;
        }
        if (this.A != null) {
            this.A.setVisibility(0);
        }
        if (this.C != null) {
            if (this.C.isPlaying()) {
                this.C.stopPlayback();
            }
            if (this.z != null) {
                this.z.removeView((View)this.C);
            }
            this.C = null;
        }
        this.D = false;
        this.E = null;
    }
    
    public final void onCompletion(final MediaPlayer mediaPlayer) {
    }
    
    public final void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }
    
    public final void onCreate(final Bundle bundle) {
        this.setTheme(16973831);
        super.onCreate(bundle);
        x.a(this.getWindow());
        final Intent intent = this.getIntent();
        this.G = (Intent)intent.getParcelableExtra("targetIntent");
        this.H = intent.getStringExtra("adSpaceName");
    Label_0061:
        while (true) {
            Label_0123: {
                if (this.G == null) {
                    break Label_0123;
                }
                while (true) {
                    while (true) {
                        Label_0362: {
                            try {
                                this.startActivity(this.G);
                                if (this.H != null) {
                                    final FlurryAds instance = FlurryAds.getInstance();
                                    final String h = this.H;
                                    if (this.G == null) {
                                        break Label_0362;
                                    }
                                    final boolean b = true;
                                    instance.b(h, b);
                                }
                                return;
                            }
                            catch (ActivityNotFoundException ex) {
                                db.b(FlurryFullscreenTakeoverActivity.d, "Cannot launch Activity", (Throwable)ex);
                                this.G = null;
                                this.finish();
                                continue Label_0061;
                            }
                            break;
                        }
                        final boolean b = false;
                        continue;
                    }
                }
            }
            final String stringExtra = intent.getStringExtra("url");
            if (stringExtra == null) {
                int int1;
                if (bundle == null) {
                    int1 = -1;
                }
                else {
                    int1 = bundle.getInt("frameIndex", -1);
                }
                int intExtra;
                if (int1 < 0) {
                    intExtra = intent.getIntExtra("frameIndex", 0);
                }
                else {
                    intExtra = int1;
                }
                final FlurryAds instance2 = FlurryAds.getInstance();
                if (instance2.X() != null) {
                    (this.y = new bn((Context)this, instance2, instance2.W(), instance2.X(), intExtra)).initLayout((Context)this);
                    if (intExtra == 0) {
                        this.y.a("rendered", Collections.emptyMap());
                    }
                    this.setContentView((View)this.y);
                    continue Label_0061;
                }
                continue Label_0061;
            }
            else {
                this.setContentView((View)(this.z = new FrameLayout((Context)this)));
                if (a(stringExtra)) {
                    this.C = new ce((Context)this);
                    this.b(stringExtra);
                    continue Label_0061;
                }
                (this.A = new cl((Context)this, stringExtra)).a(new f(this));
                this.A.a(new y(this));
                this.A.a(new bh(this));
                this.z.addView((View)this.A);
                continue Label_0061;
            }
            break;
        }
    }
    
    protected final void onDestroy() {
        this.e();
        if (this.A != null) {
            this.A.destroy();
        }
        if (this.y != null) {
            this.y.stop();
        }
        if (this.isFinishing() && this.H != null) {
            FlurryAds.getInstance().j(this.H);
        }
        super.onDestroy();
    }
    
    public final boolean onError(final MediaPlayer mediaPlayer, final int n, final int n2) {
        db.d(FlurryFullscreenTakeoverActivity.d, "error occurs during video playback");
        if (this.A != null) {
            if (this.D) {
                if (this.A.canGoBack()) {
                    this.A.goBack();
                    this.e();
                }
                else {
                    this.finish();
                }
            }
            else {
                this.e();
            }
        }
        else {
            this.finish();
        }
        return true;
    }
    
    public final boolean onKeyUp(final int n, final KeyEvent keyEvent) {
        if (n == 4) {
            if (this.y != null) {
                this.y.a("adWillClose", Collections.emptyMap(), this.y.M, this.y.L, this.y.N, 0);
                return true;
            }
            if (this.C != null) {
                if (this.A != null) {
                    if (!this.D) {
                        this.e();
                        return true;
                    }
                    if (this.A.canGoBack()) {
                        this.A.goBack();
                        this.e();
                        return true;
                    }
                }
            }
            else if (this.A != null && this.A.canGoBack()) {
                this.A.goBack();
                return true;
            }
        }
        return super.onKeyUp(n, keyEvent);
    }
    
    protected final void onPause() {
        super.onPause();
        this.F = false;
        if (this.C != null && this.C.isPlaying()) {
            this.C.pause();
        }
    }
    
    public final void onPrepared(final MediaPlayer mediaPlayer) {
        if (this.B != null && this.B.isShowing()) {
            this.B.dismiss();
        }
        if (this.C != null && this.F) {
            this.C.start();
        }
    }
    
    protected final void onRestart() {
        super.onRestart();
    }
    
    protected final void onResume() {
        super.onResume();
        this.F = true;
        if (this.E != null) {
            this.E.show(0);
        }
    }
    
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.y != null) {
            bundle.putInt("frameIndex", this.y.N);
        }
    }
    
    public final void onStart() {
        super.onStart();
        if (FlurryAgent.w() != null) {
            FlurryAgent.onStartSession((Context)this, FlurryAgent.w());
            return;
        }
        this.finish();
    }
    
    public final void onStop() {
        FlurryAgent.onEndSession((Context)this);
        super.onStop();
    }
    
    public final void onWindowFocusChanged(final boolean b) {
        new StringBuilder().append("onWindowFocusChanged hasFocus = ").append(b).toString();
        if (this.F && b && this.G != null) {
            this.finish();
        }
        super.onWindowFocusChanged(b);
    }
}
