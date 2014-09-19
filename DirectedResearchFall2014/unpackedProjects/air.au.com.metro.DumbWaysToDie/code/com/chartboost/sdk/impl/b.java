package com.chartboost.sdk.impl;

import org.json.*;
import android.content.*;
import android.os.*;
import android.view.*;
import android.graphics.*;
import com.chartboost.sdk.*;
import com.chartboost.sdk.Libraries.*;
import android.widget.*;
import android.graphics.drawable.*;

public class b extends com.chartboost.sdk.b
{
    public com.chartboost.sdk.Libraries.a.a h;
    public com.chartboost.sdk.Libraries.a.a i;
    public com.chartboost.sdk.Libraries.a.a j;
    public com.chartboost.sdk.Libraries.a.a k;
    public com.chartboost.sdk.Libraries.a.a l;
    
    public b(final com.chartboost.sdk.impl.a a) {
        super(a);
        this.e = 5;
        this.j = null;
        this.k = null;
        this.h = null;
        this.i = null;
        this.l = null;
    }
    
    @Override
    protected com.chartboost.sdk.b.b a(final Context context) {
        return new a(context, (a)null);
    }
    
    @Override
    public void a(final JSONObject jsonObject) {
        super.a(jsonObject);
        final e.b b = new e.b() {
            @Override
            public void a(final a.a i, final Bundle bundle) {
                b.this.i = i;
                b.this.a(i);
            }
        };
        final e.b b2 = new e.b() {
            @Override
            public void a(final a.a h, final Bundle bundle) {
                b.this.h = h;
                b.this.a(h);
            }
        };
        final e.b b3 = new e.b() {
            @Override
            public void a(final a.a k, final Bundle bundle) {
                b.this.k = k;
                b.this.a(k);
            }
        };
        final e.b b4 = new e.b() {
            @Override
            public void a(final a.a j, final Bundle bundle) {
                b.this.j = j;
                b.this.a(j);
            }
        };
        final e.b b5 = new e.b() {
            @Override
            public void a(final a.a l, final Bundle bundle) {
                b.this.l = l;
                b.this.a(l);
            }
        };
        this.a("ad-landscape", b, true);
        this.a("ad-portrait", b2, true);
        this.a("frame-landscape", b3);
        this.a("frame-portrait", b4);
        this.a("close", b5);
    }
    
    @Override
    public void c() {
        super.c();
        if (this.i != null) {
            this.i.a();
            this.i = null;
        }
        if (this.h != null) {
            this.h.a();
            this.h = null;
        }
        this.k = null;
        this.j = null;
        this.l = null;
    }
    
    public class a extends b
    {
        public ImageView c;
        public ImageView d;
        public Button e;
        public t f;
        
        private a(final Context context) {
            super(context);
            this.setBackgroundColor(0);
            this.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
            this.f = new t(context);
            this.d = new ImageView(context);
            this.e = new Button(context);
            this.c = new ImageView(context);
            this.e.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
                public void onClick(final View view) {
                    if (b.this.a != null) {
                        b.this.a.a();
                    }
                }
            });
            this.d.setClickable(true);
            this.d.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
                public void onClick(final View view) {
                    if (b.this.b != null) {
                        b.this.b.a(null, null);
                    }
                }
            });
            this.f.a((View)this.c);
            this.f.a((View)this.d);
            this.f.a((View)this.e);
            this.addView((View)this.f, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        }
        
        private Point a(final String s) {
            final JSONObject optJSONObject = b.this.f.optJSONObject(s);
            if (optJSONObject != null) {
                final JSONObject optJSONObject2 = optJSONObject.optJSONObject("offset");
                if (optJSONObject2 != null) {
                    return new Point(optJSONObject2.optInt("x", 0), optJSONObject2.optInt("y", 0));
                }
            }
            return new Point(0, 0);
        }
        
        @Override
        protected void a(final int n, final int n2) {
            final boolean portrait = Chartboost.sharedChartboost().orientation().isPortrait();
            com.chartboost.sdk.Libraries.a.a a;
            if (portrait) {
                a = b.this.h;
            }
            else {
                a = b.this.i;
            }
            com.chartboost.sdk.Libraries.a.a a2;
            if (portrait) {
                a2 = b.this.j;
            }
            else {
                a2 = b.this.k;
            }
            final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-2, -2);
            final RelativeLayout$LayoutParams layoutParams2 = new RelativeLayout$LayoutParams(-2, -2);
            final RelativeLayout$LayoutParams layoutParams3 = new RelativeLayout$LayoutParams(-2, -2);
            float n3;
            if (portrait) {
                n3 = Math.max(320.0f / n, 480.0f / n2);
            }
            else {
                n3 = Math.max(320.0f / n2, 480.0f / n);
            }
            layoutParams.width = (int)(a2.c() / n3);
            layoutParams.height = (int)(a2.d() / n3);
            String s;
            if (portrait) {
                s = "frame-portrait";
            }
            else {
                s = "frame-landscape";
            }
            final Point a3 = this.a(s);
            layoutParams.leftMargin = Math.round((n - layoutParams.width) / 2.0f + a3.x / n3);
            layoutParams.topMargin = Math.round((n2 - layoutParams.height) / 2.0f + a3.y / n3);
            this.d.setId(100);
            layoutParams2.width = (int)(a.c() / n3);
            layoutParams2.height = (int)(a.d() / n3);
            String s2;
            if (portrait) {
                s2 = "ad-portrait";
            }
            else {
                s2 = "ad-landscape";
            }
            final Point a4 = this.a(s2);
            layoutParams2.leftMargin = Math.round((n - layoutParams2.width) / 2.0f + a4.x / n3);
            layoutParams2.topMargin = Math.round((n2 - layoutParams2.height) / 2.0f + a4.y / n3);
            layoutParams3.width = (int)(b.this.l.c() / n3);
            layoutParams3.height = (int)(b.this.l.d() / n3);
            final Point a5 = this.a("close");
            layoutParams3.leftMargin = layoutParams2.leftMargin + layoutParams2.width + Math.round(a5.x / n3 - com.chartboost.sdk.Libraries.d.b(10, this.getContext()));
            layoutParams3.topMargin = layoutParams2.topMargin - layoutParams3.height + Math.round(a5.y / n3 - com.chartboost.sdk.Libraries.d.b(10, this.getContext()));
            this.c.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
            this.d.setLayoutParams((ViewGroup$LayoutParams)layoutParams2);
            this.e.setLayoutParams((ViewGroup$LayoutParams)layoutParams3);
            final BitmapDrawable imageDrawable = new BitmapDrawable(a2.b());
            this.c.setScaleType(ImageView$ScaleType.FIT_CENTER);
            this.c.setImageDrawable((Drawable)imageDrawable);
            final BitmapDrawable imageDrawable2 = new BitmapDrawable(a.b());
            this.d.setScaleType(ImageView$ScaleType.FIT_CENTER);
            this.d.setImageDrawable((Drawable)imageDrawable2);
            this.e.setBackgroundDrawable((Drawable)new BitmapDrawable(b.this.l.b()));
        }
        
        @Override
        public void b() {
            super.b();
            this.d = null;
            this.c = null;
            this.e = null;
        }
    }
}
