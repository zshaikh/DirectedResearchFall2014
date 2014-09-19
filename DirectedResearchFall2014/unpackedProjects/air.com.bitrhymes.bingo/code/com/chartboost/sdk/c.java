package com.chartboost.sdk;

import org.json.*;
import android.content.*;
import android.os.*;
import android.app.*;
import android.widget.*;
import com.chartboost.sdk.impl.*;
import android.view.*;
import android.util.*;

public abstract class c
{
    public a a;
    public c b;
    public a c;
    public a d;
    protected int e;
    protected JSONObject f;
    protected com.chartboost.sdk.impl.a g;
    private int h;
    private int i;
    private int j;
    private b k;
    
    public c(final com.chartboost.sdk.impl.a g) {
        super();
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = 0;
        this.g = g;
        this.k = null;
    }
    
    protected abstract b a(final Context p0);
    
    protected void a(final com.chartboost.sdk.Libraries.a.a a) {
        if (a != null) {
            ++this.h;
        }
        ++this.i;
        if (this.i == this.e && !this.a() && this.d != null) {
            this.d.a();
        }
    }
    
    protected void a(final String s, final o.b b) {
        this.a(s, b, false);
    }
    
    protected void a(final String s, final o.b b, final boolean b2) {
        final Bundle bundle = new Bundle();
        bundle.putBoolean("paramNoMemoryCache", b2);
        this.a(this.f, s, b, bundle);
    }
    
    public void a(final JSONObject jsonObject) {
        this.i = 0;
        this.j = 0;
        this.h = 0;
        this.f = jsonObject.optJSONObject("assets");
        if (this.f == null && this.d != null) {
            this.d.a();
        }
    }
    
    protected void a(final JSONObject jsonObject, final String s, final o.b b, final Bundle bundle) {
        final JSONObject optJSONObject = jsonObject.optJSONObject(s);
        if (optJSONObject != null) {
            ++this.j;
            o.a().a(optJSONObject.optString("url"), optJSONObject.optString("checksum"), b, null, bundle);
            return;
        }
        this.a((com.chartboost.sdk.Libraries.a.a)null);
    }
    
    public boolean a() {
        if (this.h != this.j) {
            return false;
        }
        if (this.c != null) {
            this.c.a();
        }
        return true;
    }
    
    public boolean b() {
        if (this.g.c != com.chartboost.sdk.impl.a.b.b) {
            return false;
        }
        Chartboost.sharedChartboost().a(this.g);
        final Activity c = Chartboost.sharedChartboost().c();
        if (c == null) {
            this.k = null;
            return false;
        }
        this.k = this.a((Context)c);
        if (this.k.a(c)) {
            return true;
        }
        this.k = null;
        return false;
    }
    
    public void c() {
        this.e();
        this.c = null;
        this.d = null;
        this.b = null;
        this.a = null;
        this.f = null;
    }
    
    public b d() {
        return this.k;
    }
    
    public void e() {
        if (this.k != null) {
            this.k.b();
        }
        this.k = null;
    }
    
    public interface a
    {
        void a();
    }
    
    public abstract class b extends RelativeLayout implements u.a
    {
        protected boolean a;
        
        public b(final Context context) {
            super(context);
            this.a = false;
            this.setFocusableInTouchMode(true);
            this.requestFocus();
            this.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
                public boolean onTouch(final View view, final MotionEvent motionEvent) {
                    return true;
                }
            });
        }
        
        private boolean b(final int n, final int n2) {
            try {
                this.a(n, n2);
                return true;
            }
            catch (Exception ex) {
                return false;
            }
        }
        
        public void a() {
            this.a((Activity)this.getContext());
        }
        
        protected abstract void a(final int p0, final int p1);
        
        public boolean a(final Activity activity) {
            while (true) {
                while (true) {
                    int width;
                    int height;
                    try {
                        width = this.getWidth();
                        height = this.getHeight();
                        if (width == 0 || height == 0) {
                            View view = activity.getWindow().findViewById(16908290);
                            if (view == null) {
                                view = activity.getWindow().getDecorView();
                            }
                            int n = view.getWidth();
                            int n2 = view.getHeight();
                            if (n == 0 || n2 == 0) {
                                final DisplayMetrics displayMetrics = new DisplayMetrics();
                                activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                                n = displayMetrics.widthPixels;
                                n2 = displayMetrics.heightPixels;
                            }
                            if (Chartboost.sharedChartboost().getForcedOrientationDifference().isOdd()) {
                                final int n3 = n;
                                n = n2;
                                n2 = n3;
                            }
                            return this.b(n, n2);
                        }
                    }
                    catch (Exception ex) {
                        final int n2 = 0;
                        final int n = 0;
                        continue;
                    }
                    int n = width;
                    int n2 = height;
                    continue;
                }
            }
        }
        
        public void b() {
        }
        
        protected void onSizeChanged(final int n, final int n2, final int n3, final int n4) {
            super.onSizeChanged(n, n2, n3, n4);
            if (this.a) {
                return;
            }
            if (Chartboost.sharedChartboost().getForcedOrientationDifference().isOdd()) {
                this.b(n2, n);
                return;
            }
            this.b(n, n2);
        }
    }
    
    public interface c
    {
        void a(String p0, JSONObject p1);
    }
}
