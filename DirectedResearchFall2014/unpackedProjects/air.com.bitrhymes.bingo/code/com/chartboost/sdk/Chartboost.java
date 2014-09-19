package com.chartboost.sdk;

import android.os.*;
import java.util.*;
import android.app.*;
import com.chartboost.sdk.Analytics.*;
import com.chartboost.sdk.impl.*;
import com.chartboost.sdk.Libraries.*;
import org.json.*;
import android.util.*;
import android.content.*;
import java.lang.ref.*;

public final class Chartboost
{
    private static Chartboost d;
    private Runnable A;
    protected b a;
    protected j b;
    protected Handler c;
    private com.chartboost.sdk.b e;
    private Context f;
    private CBImpressionActivity g;
    private List<com.chartboost.sdk.b.a> h;
    private com.chartboost.sdk.a i;
    private String j;
    private String k;
    private ChartboostDelegate l;
    private int m;
    private boolean n;
    private CBOrientation o;
    private boolean p;
    private boolean q;
    private boolean r;
    private String s;
    private boolean t;
    private SparseBooleanArray u;
    private SparseArray<com.chartboost.sdk.b> v;
    private boolean w;
    private long x;
    private long y;
    private boolean z;
    
    static {
        Chartboost.d = null;
    }
    
    private Chartboost() {
        super();
        this.f = null;
        this.g = null;
        this.h = new ArrayList<com.chartboost.sdk.b.a>();
        this.a = null;
        this.m = 30000;
        this.n = false;
        this.q = false;
        this.r = false;
        this.s = null;
        this.t = false;
        this.u = new SparseBooleanArray();
        this.v = (SparseArray<com.chartboost.sdk.b>)new SparseArray();
        this.w = false;
        this.x = 0L;
        this.y = 0L;
        this.z = false;
        this.A = new a((a)null);
        Chartboost.d = this;
        this.c = new Handler();
        this.b = new j(null, null);
        this.i = new com.chartboost.sdk.a(this);
    }
    
    private void a(final int n, final boolean b) {
        this.u.put(n, b);
    }
    
    private void a(final Activity activity, final boolean b) {
        if (activity == null) {
            return;
        }
        this.a(activity.hashCode(), b);
    }
    
    private void a(final b b, final boolean b2) {
        if (b == null) {
            return;
        }
        this.a(b.a(), b2);
    }
    
    static /* synthetic */ void a(final Chartboost chartboost, final CBImpressionActivity g) {
        chartboost.g = g;
    }
    
    static /* synthetic */ void a(final Chartboost chartboost, final ChartboostDelegate l) {
        chartboost.l = l;
    }
    
    static /* synthetic */ void a(final Chartboost chartboost, final com.chartboost.sdk.b e) {
        chartboost.e = e;
    }
    
    private void a(final Runnable runnable) {
        if (!com.chartboost.sdk.Libraries.d.d()) {
            this.c.post(runnable);
            return;
        }
        runnable.run();
    }
    
    private boolean a(final b b) {
        if (b == null) {
            return false;
        }
        final Boolean value = this.u.get(b.a());
        return value != null && value;
    }
    
    private void b(final b b) {
        if (!this.n) {
            this.c(b);
        }
        if (!(b.get() instanceof CBImpressionActivity)) {
            this.a(b, false);
        }
        this.x = (long)(System.nanoTime() / 1000000.0);
    }
    
    private void b(final b b, final boolean b2) {
        final int a = b.a();
        final com.chartboost.sdk.b b3 = (com.chartboost.sdk.b)this.v.get(a);
        if (b3 == null && b2) {
            com.chartboost.sdk.b b4;
            if (this.e != null) {
                final com.chartboost.sdk.b e = this.e;
                this.e = null;
                e.a(b.get());
                b4 = e;
            }
            else {
                b4 = new com.chartboost.sdk.b(this, b.get());
            }
            this.v.put(a, (Object)b4);
        }
        else if (b3 != null && !b2) {
            final com.chartboost.sdk.b e2 = (com.chartboost.sdk.b)this.v.get(a);
            this.v.remove(a);
            e2.a((Activity)null);
            if (this.e == null) {
                this.e = e2;
            }
        }
    }
    
    private void c(final b b) {
        final com.chartboost.sdk.b a = this.a();
        if (this.d(b) && a != null) {
            this.b(b, false);
            this.w = false;
            if (a.a()) {
                a.a(false);
                this.w = true;
            }
            if (this.i.a() != null) {
                a.a(this.i.a());
            }
            if (b.get() instanceof CBImpressionActivity) {
                this.d();
            }
        }
        if (!(b.get() instanceof CBImpressionActivity)) {
            this.a(b, false);
        }
    }
    
    private void cacheInterstitialData(final String s, final CBAPIResponseCallback cbapiResponseCallback) {
        com.chartboost.sdk.d.a(s, cbapiResponseCallback);
    }
    
    private void cacheInterstitialDataBatch(final String s, final int n, final CBAPIResponseCallback cbapiResponseCallback) {
        com.chartboost.sdk.d.a(s, n, cbapiResponseCallback);
    }
    
    private boolean d(final Activity activity) {
        if (this.n) {
            return this.g == activity;
        }
        if (this.a == null) {
            return activity == null;
        }
        return this.a.a(activity);
    }
    
    private boolean d(final b b) {
        if (this.n) {
            if (b == null) {
                return this.g == null;
            }
            return b.a(this.g);
        }
        else {
            if (this.a == null) {
                return b == null;
            }
            return this.a.a(b);
        }
    }
    
    private boolean e() {
        return this.a(this.a);
    }
    
    public static Chartboost sharedChartboost() {
        synchronized (Chartboost.class) {
            if (Chartboost.d == null) {
                Chartboost.d = new Chartboost();
            }
            return Chartboost.d;
        }
    }
    
    private void showInterstitialData(final String s, final CBAPIResponseCallback cbapiResponseCallback) {
        com.chartboost.sdk.d.b(s, cbapiResponseCallback);
    }
    
    protected com.chartboost.sdk.b a() {
        final Activity c = this.c();
        if (c == null) {
            return null;
        }
        return (com.chartboost.sdk.b)this.v.get(c.hashCode());
    }
    
    protected void a(final Activity activity) {
        this.f = activity.getApplicationContext();
        if (!(activity instanceof CBImpressionActivity)) {
            this.a(this.a = new b(activity), true);
        }
        else {
            this.a((CBImpressionActivity)activity);
        }
        this.c.removeCallbacks(this.A);
        if (activity != null && this.d(activity)) {
            this.b(new b(activity), true);
            if (activity instanceof CBImpressionActivity) {
                final com.chartboost.sdk.b a = this.a();
                if (a != null) {
                    for (int i = 0; i < this.h.size(); ++i) {
                        a.a((com.chartboost.sdk.b.a)this.h.get(i));
                    }
                    this.h.clear();
                }
                this.z = false;
            }
            int n;
            if (this.w) {
                this.w = false;
                n = 1;
            }
            else {
                n = 0;
            }
            if (this.i.a() != null && this.i.a().c == com.chartboost.sdk.impl.a.b.b && this.i.a().a()) {
                n = 0;
            }
            if (n != 0) {
                this.a(new com.chartboost.sdk.b.a(true, null));
            }
        }
    }
    
    protected void a(final CBImpressionActivity g) {
        if (!this.t) {
            this.f = g.getApplicationContext();
            this.g = g;
            this.t = true;
        }
        this.c.removeCallbacks(this.A);
    }
    
    protected void a(final com.chartboost.sdk.b.a a) {
        if (this.getImpressionsUseActivities()) {
            final com.chartboost.sdk.b a2 = this.a();
            if (this.c() != null && this.t && a2 != null) {
                a2.a(a);
            }
            else if (this.e()) {
                final Activity activity = this.a.get();
                if (activity != null) {
                    this.h.add(a);
                    final Intent intent = new Intent((Context)activity, (Class)CBImpressionActivity.class);
                    while (true) {
                        Label_0205: {
                            if ((0x400 & activity.getWindow().getAttributes().flags) == 0x0) {
                                break Label_0205;
                            }
                            final int n = 1;
                            boolean b;
                            if ((0x800 & activity.getWindow().getAttributes().flags) != 0x0) {
                                b = true;
                            }
                            else {
                                b = false;
                            }
                            intent.putExtra("paramFullscreen", n != 0 && !b);
                            try {
                                activity.startActivity(intent);
                                this.z = true;
                                return;
                            }
                            catch (ActivityNotFoundException ex) {
                                throw new RuntimeException("Chartboost impression activity not declared in manifest. Please add the following inside your manifest's <application> tag: \n<activity android:name=\"com.chartboost.sdk.CBImpressionActivity\" android:theme=\"@android:style/Theme.Translucent.NoTitleBar\" android:excludeFromRecents=\"true\" />");
                            }
                        }
                        final int n = 0;
                        continue;
                    }
                }
                if (a.b.f.d != null) {
                    a.b.f.d.a();
                }
            }
        }
        else {
            final com.chartboost.sdk.b a3 = this.a();
            if (a3 != null) {
                a3.a(a);
            }
        }
    }
    
    protected void a(final com.chartboost.sdk.impl.a a) {
        this.i.a(a);
    }
    
    protected void b(final Activity activity) {
        this.c(new b(activity));
    }
    
    protected boolean b() {
        if (this.i.a() != null && this.i.a().c == com.chartboost.sdk.impl.a.b.c) {
            this.a(new Runnable() {
                @Override
                public void run() {
                    Chartboost.this.i.d();
                }
            });
            return true;
        }
        final com.chartboost.sdk.b a = this.a();
        if (a != null && a.a()) {
            this.a(new Runnable() {
                @Override
                public void run() {
                    a.a(true);
                }
            });
            return true;
        }
        return false;
    }
    
    protected Activity c() {
        if (this.n) {
            return this.g;
        }
        return this.a.get();
    }
    
    protected void c(final Activity activity) {
        this.b(new b(activity), false);
    }
    
    public void cacheInterstitial() {
        this.cacheInterstitial("Default");
    }
    
    public void cacheInterstitial(final String s) {
        if (this.a == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling cacheInterstitial().");
        }
        this.i.a(s);
    }
    
    public void cacheMoreApps() {
        if (this.a == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling cacheMoreApps().");
        }
        this.i.a(true);
    }
    
    public void clearCache() {
        this.i.e();
    }
    
    public void clearImageCache() {
        if (this.getContext() == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling clearImageCache().");
        }
        com.chartboost.sdk.impl.o.a().b();
    }
    
    protected void d() {
        if (this.t) {
            this.g = null;
            this.t = false;
        }
    }
    
    public CBAnalytics getAnalytics() {
        return CBAnalytics.sharedAnalytics();
    }
    
    public boolean getAnimationsOff() {
        return this.r;
    }
    
    public String getAppID() {
        return this.j;
    }
    
    public String getAppSignature() {
        return this.k;
    }
    
    public Context getContext() {
        return this.f;
    }
    
    public ChartboostDelegate getDelegate() {
        return this.l;
    }
    
    public CBOrientation.Difference getForcedOrientationDifference() {
        if (!this.p) {
            return CBOrientation.Difference.ANGLE_0;
        }
        final CBOrientation c = com.chartboost.sdk.Libraries.d.c(this.getContext());
        final CBOrientation orientation = this.getOrientation();
        if (orientation == CBOrientation.UNSPECIFIED || orientation == c) {
            return CBOrientation.Difference.ANGLE_0;
        }
        if (orientation == c.rotate90()) {
            return CBOrientation.Difference.ANGLE_90;
        }
        if (orientation == c.rotate180()) {
            return CBOrientation.Difference.ANGLE_180;
        }
        return CBOrientation.Difference.ANGLE_270;
    }
    
    public String getFramework() {
        if (this.s == null) {
            return "native";
        }
        return this.s;
    }
    
    public Handler getHandler() {
        return this.c;
    }
    
    protected Activity getHostActivity() {
        if (this.a != null) {
            return this.a.get();
        }
        return null;
    }
    
    public boolean getIgnoreErrors() {
        return this.q;
    }
    
    public boolean getImpressionsUseActivities() {
        return this.n;
    }
    
    public CBOrientation getOrientation() {
        if (this.getContext() == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling getOrientation().");
        }
        if (this.p && this.o != CBOrientation.UNSPECIFIED) {
            return this.o;
        }
        return com.chartboost.sdk.Libraries.d.c(this.getContext());
    }
    
    public int getTimeout() {
        return this.m;
    }
    
    public boolean hasCachedInterstitial() {
        return this.hasCachedInterstitial("Default");
    }
    
    public boolean hasCachedInterstitial(final String s) {
        return this.i.c(s);
    }
    
    public boolean hasCachedMoreApps() {
        return this.i.c();
    }
    
    public boolean isIdentityTrackingDisabledOnThisDevice() {
        return com.chartboost.sdk.Libraries.d.c();
    }
    
    public boolean onBackPressed() {
        if (!this.q && !com.chartboost.sdk.Libraries.d.d()) {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onBackPressed() method of your host activity.");
        }
        if (this.a == null) {
            throw new IllegalStateException("The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly.");
        }
        if (!this.n) {
            return this.b();
        }
        if (this.z) {
            this.z = false;
            this.b();
            return true;
        }
        return false;
    }
    
    public void onCreate(final Activity activity, final String appID, final String appSignature, final ChartboostDelegate delegate) {
        if (!this.q && !com.chartboost.sdk.Libraries.d.d()) {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onCreate() method of your host activity.");
        }
        if (this.a != null && !this.a.a(activity) && this.e()) {
            this.b(this.a);
            this.a(this.a, false);
        }
        this.c.removeCallbacks(this.A);
        this.a = new b(activity);
        this.f = activity.getApplicationContext();
        this.setAppID(appID);
        this.setAppSignature(appSignature);
        this.setDelegate(delegate);
    }
    
    public void onDestroy(final Activity activity) {
        this.c.postDelayed(this.A, 10000L);
        this.c(activity);
    }
    
    public void onStart(final Activity activity) {
        if (!this.q && !com.chartboost.sdk.Libraries.d.d()) {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onStart() method of your host activity.");
        }
        this.c.removeCallbacks(this.A);
        if (this.a != null && !this.a.a(activity) && this.e()) {
            this.b(this.a);
            this.a(this.a, false);
        }
        this.a(activity, true);
        this.a = new b(activity);
        this.f = activity.getApplicationContext();
        if (!this.n) {
            this.a(activity);
        }
    }
    
    public void onStop(final Activity activity) {
        if (!this.q && !com.chartboost.sdk.Libraries.d.d()) {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onStop() method of your host activity.");
        }
        final b b = new b(activity);
        if (this.a(b)) {
            this.b(b);
        }
    }
    
    public void setAnimationsOff(final boolean r) {
        this.r = r;
    }
    
    public void setAppID(final String j) {
        this.j = j;
    }
    
    public void setAppSignature(final String k) {
        this.k = k;
    }
    
    public void setDelegate(final ChartboostDelegate l) {
        this.l = l;
    }
    
    public void setFramework(final String s) {
        this.s = s;
    }
    
    public void setIdentityTrackingDisabledOnThisDevice(final boolean b) {
        final SharedPreferences$Editor edit = com.chartboost.sdk.Libraries.d.a().edit();
        edit.putBoolean("cbIdentityTrackingDisabled", b);
        edit.commit();
    }
    
    public void setIgnoreErrors(final boolean q) {
        this.q = q;
    }
    
    public void setImpressionsUseActivities(final boolean n) {
        this.n = n;
    }
    
    public void setOrientation(final CBOrientation o) {
        this.p = (o != CBOrientation.UNSPECIFIED);
        this.o = o;
    }
    
    public void setTimeout(final int m) {
        this.m = m;
    }
    
    public void showInterstitial() {
        this.showInterstitial("Default");
    }
    
    public void showInterstitial(final String s) {
        if (this.a == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling showInterstitial().");
        }
        this.i.b(s);
    }
    
    public void showMoreApps() {
        if (this.a == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling showMoreApps().");
        }
        this.i.b();
    }
    
    public void showMoreAppsData(final CBAPIResponseCallback cbapiResponseCallback) {
        com.chartboost.sdk.d.a(cbapiResponseCallback);
    }
    
    public void startSession() {
        if (this.a == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling startSession().");
        }
        final long y = (long)(System.nanoTime() / 1000000.0);
        if (y - this.x >= 10000L && y - this.y >= 60000L) {
            this.y = y;
            final SharedPreferences a = com.chartboost.sdk.Libraries.d.a();
            final int n = 1 + a.getInt("cbPrefSessionCount", 0);
            final SharedPreferences$Editor edit = a.edit();
            edit.putInt("cbPrefSessionCount", n);
            edit.commit();
            final k k = new k("api/install");
            k.a(this.a.b());
            k.b(this.getAppID(), this.getAppSignature());
            k.a(com.chartboost.sdk.Libraries.e.a("status", com.chartboost.sdk.impl.j.a));
            this.b.a(k, (j.b)new j.c() {
                @Override
                public void a(final JSONObject jsonObject, final k k) {
                    if (d.a(Chartboost.this.getContext())) {
                        final String optString = jsonObject.optString("latest-sdk-version");
                        if (optString != null && !optString.equals("") && !optString.equals("3.3.0")) {
                            Log.w("Chartboost", String.format("WARNING: you have an outdated version of the SDK (Current: %s, Latest: %s). Get the latest version at chartboost.com/support/sdk#android", optString, "3.3.0"));
                        }
                    }
                }
            });
        }
    }
    
    public interface CBAPIResponseCallback
    {
        void onFailure(String p0);
        
        void onSuccess(JSONObject p0);
    }
    
    private class a implements Runnable
    {
        private int b;
        private int c;
        private int d;
        private int e;
        
        private a() {
            super();
            int hashCode;
            if (Chartboost.this.g == null) {
                hashCode = -1;
            }
            else {
                hashCode = Chartboost.this.g.hashCode();
            }
            this.b = hashCode;
            int hashCode2;
            if (Chartboost.this.a == null) {
                hashCode2 = -1;
            }
            else {
                hashCode2 = Chartboost.this.a.hashCode();
            }
            this.c = hashCode2;
            int hashCode3;
            if (Chartboost.this.l == null) {
                hashCode3 = -1;
            }
            else {
                hashCode3 = Chartboost.this.l.hashCode();
            }
            this.d = hashCode3;
            int hashCode4;
            if (Chartboost.this.e == null) {
                hashCode4 = -1;
            }
            else {
                hashCode4 = Chartboost.this.e.hashCode();
            }
            this.e = hashCode4;
        }
        
        @Override
        public void run() {
            if (Chartboost.this.getContext() != null) {
                Chartboost.this.clearImageCache();
            }
            if (Chartboost.this.a != null && Chartboost.this.a.hashCode() == this.c) {
                Chartboost.this.a = null;
            }
            if (Chartboost.this.g != null && Chartboost.this.g.hashCode() == this.b) {
                Chartboost.a(Chartboost.this, (CBImpressionActivity)null);
            }
            if (Chartboost.this.l != null && Chartboost.this.l.hashCode() == this.d) {
                Chartboost.a(Chartboost.this, (ChartboostDelegate)null);
            }
            if (Chartboost.this.e != null && Chartboost.this.e.hashCode() == this.e) {
                Chartboost.a(Chartboost.this, (com.chartboost.sdk.b)null);
            }
        }
    }
    
    static class b extends WeakReference<Activity>
    {
        private int a;
        
        public b(final Activity referent) {
            super(referent);
            this.a = referent.hashCode();
        }
        
        public int a() {
            return this.a;
        }
        
        public boolean a(final Activity activity) {
            return activity != null && activity.hashCode() == this.a;
        }
        
        public boolean a(final b b) {
            return b != null && b.a() == this.a;
        }
        
        public Context b() {
            final Context context = ((Reference<Context>)this).get();
            if (context == null) {
                return Chartboost.sharedChartboost().getContext();
            }
            return context;
        }
        
        @Override
        public int hashCode() {
            return this.a();
        }
    }
}
