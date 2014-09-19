package com.chartboost.sdk.impl;

import android.util.*;
import java.util.*;
import android.content.*;
import android.os.*;
import org.json.*;
import com.chartboost.sdk.*;
import com.chartboost.sdk.Libraries.*;
import android.graphics.*;
import android.graphics.drawable.*;
import android.view.*;
import android.widget.*;

public class h extends c
{
    private static int h;
    private static int i;
    private static int j;
    private List<JSONObject> k;
    private com.chartboost.sdk.Libraries.a.a l;
    private com.chartboost.sdk.Libraries.a.a m;
    private com.chartboost.sdk.Libraries.a.a n;
    private SparseArray<com.chartboost.sdk.Libraries.a.a> o;
    
    static {
        com.chartboost.sdk.impl.h.h = 50;
        com.chartboost.sdk.impl.h.i = 50;
        com.chartboost.sdk.impl.h.j = 30;
    }
    
    public h(final com.chartboost.sdk.impl.a a) {
        super(a);
        this.e = 3;
        this.k = new ArrayList<JSONObject>();
    }
    
    static /* synthetic */ void b(final h h, final com.chartboost.sdk.Libraries.a.a l) {
        h.l = l;
    }
    
    static /* synthetic */ void c(final h h, final com.chartboost.sdk.Libraries.a.a m) {
        h.m = m;
    }
    
    static /* synthetic */ void d(final h h, final com.chartboost.sdk.Libraries.a.a n) {
        h.n = n;
    }
    
    @Override
    protected com.chartboost.sdk.c.b a(final Context context) {
        return new a(context, (a)null);
    }
    
    @Override
    public void a(final JSONObject jsonObject) {
        super.a(jsonObject);
        final JSONArray optJSONArray = jsonObject.optJSONArray("cells");
        if (optJSONArray == null) {
            if (this.d != null) {
                this.d.a();
            }
            return;
        }
        this.o = (SparseArray<com.chartboost.sdk.Libraries.a.a>)new SparseArray();
        final o.b b = new o.b() {
            @Override
            public void a(final a.a a, final Bundle bundle) {
                com.chartboost.sdk.impl.h.this.o.put(bundle.getInt("index"), (Object)a);
                com.chartboost.sdk.impl.h.this.a(a);
            }
        };
        for (int i = 0; i < optJSONArray.length(); ++i) {
            final JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            this.k.add(optJSONObject);
            final String optString = optJSONObject.optString("type", "");
            if (optString.equals("regular")) {
                final JSONObject optJSONObject2 = optJSONObject.optJSONObject("assets");
                if (optJSONObject2 != null) {
                    ++this.e;
                    final Bundle bundle = new Bundle();
                    bundle.putInt("index", i);
                    this.a(optJSONObject2, "icon", b, bundle);
                }
            }
            else if (optString.equals("featured")) {
                final JSONObject optJSONObject3 = optJSONObject.optJSONObject("assets");
                if (optJSONObject3 != null) {
                    ++this.e;
                    final Bundle bundle2 = new Bundle();
                    bundle2.putInt("index", i);
                    this.a(optJSONObject3, "portrait", b, bundle2);
                    ++this.e;
                    final Bundle bundle3 = new Bundle();
                    bundle3.putInt("index", i);
                    this.a(optJSONObject3, "landscape", b, bundle3);
                }
            }
            else {
                optString.equals("webview");
            }
        }
        final o.b b2 = new o.b() {
            @Override
            public void a(final a.a a, final Bundle bundle) {
                com.chartboost.sdk.impl.h.b(com.chartboost.sdk.impl.h.this, a);
                com.chartboost.sdk.impl.h.this.a(a);
            }
        };
        final o.b b3 = new o.b() {
            @Override
            public void a(final a.a a, final Bundle bundle) {
                com.chartboost.sdk.impl.h.c(com.chartboost.sdk.impl.h.this, a);
                com.chartboost.sdk.impl.h.this.a(a);
            }
        };
        final o.b b4 = new o.b() {
            @Override
            public void a(final a.a a, final Bundle bundle) {
                com.chartboost.sdk.impl.h.d(com.chartboost.sdk.impl.h.this, a);
                com.chartboost.sdk.impl.h.this.a(a);
            }
        };
        this.a("close", b2);
        this.a("header-center", b3);
        this.a("header-tile", b4);
    }
    
    @Override
    public void c() {
        super.c();
        this.k = null;
        this.l = null;
        this.n = null;
        this.m = null;
    }
    
    public class a extends b
    {
        final /* synthetic */ h c;
        private ImageView d;
        private ImageView e;
        private FrameLayout f;
        private s g;
        private v h;
        private v i;
        private h.a.a j;
        
        private a(final Context context) {
            super(context);
            this.setBackgroundColor(-1842205);
            this.f = new FrameLayout(context);
            this.e = new ImageView(context);
            this.d = new ImageView(context);
            boolean b;
            if (Chartboost.sharedChartboost().getForcedOrientationDifference().isOdd()) {
                b = false;
            }
            else {
                b = true;
            }
            this.g = new s(context, b ? 1 : 0);
            this.g.b().setBackgroundColor(-1842205);
            this.f.setFocusable(false);
            this.e.setFocusable(false);
            this.d.setFocusable(false);
            this.d.setClickable(true);
            this.h = new v(context, (View)this.d);
            this.addView((View)(this.i = new v(context, (View)this.f)));
            this.f.addView((View)this.e);
            this.addView((View)this.h);
            this.a((View)this.e);
            this.a((View)this.f);
            this.a((View)this.d);
            this.a((View)this.i);
            this.a((View)this.h);
            this.d.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
                public void onClick(final View view) {
                    if (com.chartboost.sdk.impl.h.this.a != null) {
                        com.chartboost.sdk.impl.h.this.a.a();
                    }
                }
            });
            this.j = new h.a.a(context);
        }
        
        private void a(final View view) {
            int n = 200;
            if (n == this.getId()) {
                ++n;
            }
            final View viewById = this.findViewById(n);
            int id = n;
            View viewById2;
            for (View view2 = viewById; view2 != null; view2 = viewById2) {
                final int n2 = id + 1;
                viewById2 = this.findViewById(n2);
                id = n2;
            }
            view.setId(id);
            view.setSaveEnabled(false);
        }
        
        static /* synthetic */ void a(final h.a a, final boolean a2) {
            a.a = a2;
        }
        
        static /* synthetic */ int[] c() {
            final int[] k = com.chartboost.sdk.impl.h.a.k;
            if (k != null) {
                return k;
            }
            final int[] i = new int[CBOrientation.Difference.values().length];
            while (true) {
                try {
                    i[CBOrientation.Difference.ANGLE_0.ordinal()] = 1;
                    try {
                        i[CBOrientation.Difference.ANGLE_180.ordinal()] = 3;
                        try {
                            i[CBOrientation.Difference.ANGLE_270.ordinal()] = 4;
                            try {
                                i[CBOrientation.Difference.ANGLE_90.ordinal()] = 2;
                                return com.chartboost.sdk.impl.h.a.k = i;
                            }
                            catch (NoSuchFieldError noSuchFieldError) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError2) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError3) {}
                }
                catch (NoSuchFieldError noSuchFieldError4) {
                    continue;
                }
                break;
            }
        }
        
        @Override
        protected void a(final int n, final int n2) {
            if (this.g.a() != null) {
                this.removeView((View)this.g.a());
            }
            final FrameLayout$LayoutParams layoutParams = new FrameLayout$LayoutParams(-2, -2, 17);
            final RelativeLayout$LayoutParams layoutParams2 = new RelativeLayout$LayoutParams(-2, -2);
            final RelativeLayout$LayoutParams layoutParams3 = new RelativeLayout$LayoutParams(-2, -2);
            final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
            final CBOrientation.Difference forcedOrientationDifference = Chartboost.sharedChartboost().getForcedOrientationDifference();
            int a;
            if (forcedOrientationDifference.isOdd()) {
                a = com.chartboost.sdk.Libraries.d.a(com.chartboost.sdk.impl.h.h, this.getContext());
            }
            else {
                a = -1;
            }
            layoutParams2.width = a;
            int a2;
            if (forcedOrientationDifference.isOdd()) {
                a2 = -1;
            }
            else {
                a2 = com.chartboost.sdk.Libraries.d.a(com.chartboost.sdk.impl.h.h, this.getContext());
            }
            layoutParams2.height = a2;
            switch (c()[forcedOrientationDifference.ordinal()]) {
                case 2: {
                    layoutParams2.addRule(11);
                    break;
                }
                case 3: {
                    layoutParams2.addRule(12);
                    break;
                }
            }
            final BitmapDrawable backgroundDrawable = new BitmapDrawable(com.chartboost.sdk.impl.h.this.n.b());
            backgroundDrawable.setTileModeX(Shader$TileMode.REPEAT);
            backgroundDrawable.setTileModeY(Shader$TileMode.CLAMP);
            this.f.setBackgroundDrawable((Drawable)backgroundDrawable);
            if (com.chartboost.sdk.impl.h.this.m != null) {
                this.e.setImageBitmap(com.chartboost.sdk.impl.h.this.m.b());
                layoutParams.width = com.chartboost.sdk.Libraries.d.a(com.chartboost.sdk.impl.h.this.m.c(), this.getContext());
                layoutParams.height = com.chartboost.sdk.Libraries.d.a(Math.min(com.chartboost.sdk.impl.h.h, com.chartboost.sdk.impl.h.this.m.d()), this.getContext());
            }
            this.d.setImageBitmap(com.chartboost.sdk.impl.h.this.l.b());
            int n3;
            if (forcedOrientationDifference.isOdd()) {
                n3 = com.chartboost.sdk.impl.h.j;
            }
            else {
                n3 = com.chartboost.sdk.impl.h.i;
            }
            layoutParams3.width = com.chartboost.sdk.Libraries.d.a(n3, this.getContext());
            int n4;
            if (forcedOrientationDifference.isOdd()) {
                n4 = com.chartboost.sdk.impl.h.i;
            }
            else {
                n4 = com.chartboost.sdk.impl.h.j;
            }
            layoutParams3.height = com.chartboost.sdk.Libraries.d.a(n4, this.getContext());
            switch (c()[forcedOrientationDifference.ordinal()]) {
                default: {
                    layoutParams3.rightMargin = com.chartboost.sdk.Libraries.d.a(10, this.getContext());
                    layoutParams3.topMargin = com.chartboost.sdk.Libraries.d.a((com.chartboost.sdk.impl.h.h - com.chartboost.sdk.impl.h.j) / 2, this.getContext());
                    layoutParams3.addRule(11);
                    break;
                }
                case 2: {
                    layoutParams3.bottomMargin = com.chartboost.sdk.Libraries.d.a(10, this.getContext());
                    layoutParams3.rightMargin = com.chartboost.sdk.Libraries.d.a((com.chartboost.sdk.impl.h.h - com.chartboost.sdk.impl.h.j) / 2, this.getContext());
                    layoutParams3.addRule(11);
                    layoutParams3.addRule(12);
                    break;
                }
                case 3: {
                    layoutParams3.leftMargin = com.chartboost.sdk.Libraries.d.a(10, this.getContext());
                    layoutParams3.bottomMargin = com.chartboost.sdk.Libraries.d.a((com.chartboost.sdk.impl.h.h - com.chartboost.sdk.impl.h.j) / 2, this.getContext());
                    layoutParams3.addRule(12);
                    break;
                }
                case 4: {
                    layoutParams3.topMargin = com.chartboost.sdk.Libraries.d.a(10, this.getContext());
                    layoutParams3.leftMargin = com.chartboost.sdk.Libraries.d.a((com.chartboost.sdk.impl.h.h - com.chartboost.sdk.impl.h.j) / 2, this.getContext());
                    break;
                }
            }
            relativeLayout$LayoutParams.width = -1;
            relativeLayout$LayoutParams.height = -1;
            switch (c()[forcedOrientationDifference.ordinal()]) {
                default: {
                    relativeLayout$LayoutParams.addRule(3, this.i.getId());
                    break;
                }
                case 2: {
                    relativeLayout$LayoutParams.addRule(0, this.i.getId());
                    break;
                }
                case 3: {
                    relativeLayout$LayoutParams.addRule(2, this.i.getId());
                    break;
                }
                case 4: {
                    relativeLayout$LayoutParams.addRule(1, this.i.getId());
                    break;
                }
            }
            final s g = this.g;
            int n5;
            if (forcedOrientationDifference.isOdd()) {
                n5 = 0;
            }
            else {
                n5 = 1;
            }
            g.a(n5);
            this.a((View)this.g.a());
            this.g.a((BaseAdapter)this.j);
            this.addView((View)this.g.a(), (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
            if (forcedOrientationDifference == CBOrientation.Difference.ANGLE_180) {
                this.g.b().setGravity(80);
            }
            else if (forcedOrientationDifference == CBOrientation.Difference.ANGLE_90) {
                this.g.b().setGravity(5);
            }
            else {
                this.g.b().setGravity(0);
            }
            this.i.setLayoutParams((ViewGroup$LayoutParams)layoutParams2);
            this.e.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
            this.e.setScaleType(ImageView$ScaleType.FIT_CENTER);
            this.h.setLayoutParams((ViewGroup$LayoutParams)layoutParams3);
            this.d.setScaleType(ImageView$ScaleType.FIT_CENTER);
            this.post((Runnable)new Runnable() {
                @Override
                public void run() {
                    try {
                        com.chartboost.sdk.impl.h.a.a(com.chartboost.sdk.impl.h.a.this, true);
                        com.chartboost.sdk.impl.h.a.this.requestLayout();
                        com.chartboost.sdk.impl.h.a.this.g.a().requestLayout();
                        com.chartboost.sdk.impl.h.a.this.g.b().requestLayout();
                        com.chartboost.sdk.impl.h.a.a(com.chartboost.sdk.impl.h.a.this, false);
                        if (forcedOrientationDifference == CBOrientation.Difference.ANGLE_180 || forcedOrientationDifference == CBOrientation.Difference.ANGLE_90) {
                            com.chartboost.sdk.impl.h.a.this.g.c();
                        }
                    }
                    catch (Exception ex) {}
                }
            });
        }
        
        @Override
        public void b() {
            super.b();
            this.d = null;
            this.e = null;
            this.g = null;
        }
        
        public class a extends ArrayAdapter<JSONObject>
        {
            Context a;
            
            public a(final Context a) {
                super(a, 0, com.chartboost.sdk.impl.h.a.this.c.k);
                this.a = a;
            }
            
            public JSONObject a(final int n) {
                return com.chartboost.sdk.impl.h.this.k.get(n);
            }
            
            public int getCount() {
                return com.chartboost.sdk.impl.h.this.k.size();
            }
            
            public View getView(int n, final View view, final ViewGroup viewGroup) {
                final CBOrientation.Difference forcedOrientationDifference = Chartboost.sharedChartboost().getForcedOrientationDifference();
                if (forcedOrientationDifference.isReverse()) {
                    n = this.getCount() - 1 - n;
                }
                final JSONObject a = this.a(n);
                final String optString = a.optString("type", "");
                h.b b;
                v v;
                if (view == null) {
                    if (optString.equals("featured")) {
                        b = new com.chartboost.sdk.impl.d(this.a);
                    }
                    else if (optString.equals("regular")) {
                        b = new e(this.a);
                    }
                    else {
                        final boolean equals = optString.equals("webview");
                        b = null;
                        if (equals) {
                            b = new i(this.a);
                        }
                    }
                    v = new v(this.a, (View)b);
                }
                else {
                    final v v2 = (v)view;
                    final h.b b2 = (h.b)v2.a();
                    v = v2;
                    b = b2;
                }
                b.a(a, n);
                final c c = (c)b;
                if (forcedOrientationDifference.isOdd()) {
                    v.setLayoutParams((ViewGroup$LayoutParams)new AbsListView$LayoutParams(b.a(), -1));
                }
                else {
                    v.setLayoutParams((ViewGroup$LayoutParams)new AbsListView$LayoutParams(-1, b.a()));
                }
                final View$OnClickListener view$OnClickListener = (View$OnClickListener)new View$OnClickListener() {
                    public void onClick(final View view) {
                        String s = a.optString("deep-link");
                        if (s == null || s.equals("")) {
                            s = a.optString("link");
                        }
                        if (com.chartboost.sdk.impl.h.this.b != null) {
                            com.chartboost.sdk.impl.h.this.b.a(s, a);
                        }
                    }
                };
                c.setOnClickListener(c.a = (View$OnClickListener)view$OnClickListener);
                if (b instanceof e) {
                    ((e)b).b.setOnClickListener((View$OnClickListener)view$OnClickListener);
                }
                return (View)v;
            }
        }
    }
    
    public interface b
    {
        int a();
        
        void a(JSONObject p0, int p1);
    }
}
