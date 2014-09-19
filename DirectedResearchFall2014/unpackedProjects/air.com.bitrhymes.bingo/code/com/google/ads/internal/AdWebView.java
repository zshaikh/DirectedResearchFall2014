package com.google.ads.internal;

import java.lang.ref.*;
import android.net.*;
import android.content.*;
import com.google.ads.util.*;
import android.webkit.*;
import android.view.*;
import com.google.ads.*;

public class AdWebView extends WebView
{
    protected final n a;
    private WeakReference<AdActivity> b;
    private AdSize c;
    private boolean d;
    private boolean e;
    private boolean f;
    
    public AdWebView(final n a, final AdSize c) {
        super((Context)a.f.a());
        this.a = a;
        this.c = c;
        this.b = null;
        this.d = false;
        this.e = false;
        this.f = false;
        this.setBackgroundColor(0);
        AdUtil.a(this);
        final WebSettings settings = this.getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        this.setDownloadListener((DownloadListener)new DownloadListener() {
            public void onDownloadStart(final String s, final String s2, final String s3, final String str, final long n) {
                try {
                    final Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setDataAndType(Uri.parse(s), str);
                    final AdActivity i = AdWebView.this.i();
                    if (i != null && AdUtil.a(intent, (Context)i)) {
                        i.startActivity(intent);
                    }
                }
                catch (ActivityNotFoundException ex) {
                    com.google.ads.util.b.a("Couldn't find an Activity to view url/mimetype: " + s + " / " + str);
                }
                catch (Throwable t) {
                    com.google.ads.util.b.b("Unknown error trying to start activity to view URL: " + s, t);
                }
            }
        });
        if (AdUtil.a >= 17) {
            h.a(settings, a);
        }
        else if (AdUtil.a >= 11) {
            g.a(settings, a);
        }
        this.setScrollBarStyle(33554432);
        if (AdUtil.a >= 14) {
            this.setWebChromeClient((WebChromeClient)new IcsUtil.a(a));
        }
        else if (AdUtil.a >= 11) {
            this.setWebChromeClient((WebChromeClient)new g.a(a));
        }
    }
    
    public void a(final boolean b) {
        if (b) {
            this.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
                public boolean onTouch(final View view, final MotionEvent motionEvent) {
                    return motionEvent.getAction() == 2;
                }
            });
            return;
        }
        this.setOnTouchListener((View$OnTouchListener)null);
    }
    
    public void destroy() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokespecial   android/webkit/WebView.destroy:()V
        //     4: aload_0        
        //     5: new             Landroid/webkit/WebViewClient;
        //     8: dup            
        //     9: invokespecial   android/webkit/WebViewClient.<init>:()V
        //    12: invokevirtual   com/google/ads/internal/AdWebView.setWebViewClient:(Landroid/webkit/WebViewClient;)V
        //    15: return         
        //    16: astore_1       
        //    17: ldc             "An error occurred while destroying an AdWebView:"
        //    19: aload_1        
        //    20: invokestatic    com/google/ads/util/b.d:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //    23: goto            4
        //    26: astore_2       
        //    27: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      4      16     26     Ljava/lang/Throwable;
        //  4      15     26     28     Ljava/lang/Throwable;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0004:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void f() {
        final AdActivity i = this.i();
        if (i != null) {
            i.finish();
        }
    }
    
    public void g() {
        if (AdUtil.a >= 11) {
            g.a((View)this);
        }
        this.e = true;
    }
    
    public void h() {
        if (this.e && AdUtil.a >= 11) {
            g.b((View)this);
        }
        this.e = false;
    }
    
    public AdActivity i() {
        if (this.b != null) {
            return this.b.get();
        }
        return null;
    }
    
    public boolean j() {
        return this.f;
    }
    
    public boolean k() {
        return this.e;
    }
    
    public void loadDataWithBaseURL(final String s, final String s2, final String s3, final String s4, final String s5) {
        try {
            super.loadDataWithBaseURL(s, s2, s3, s4, s5);
        }
        catch (Throwable t) {
            com.google.ads.util.b.d("An error occurred while loading data in AdWebView:", t);
        }
    }
    
    public void loadUrl(final String s) {
        try {
            super.loadUrl(s);
        }
        catch (Throwable t) {
            com.google.ads.util.b.d("An error occurred while loading a URL in AdWebView:", t);
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        while (true) {
            Label_0046: {
                synchronized (this) {
                    if (this.isInEditMode()) {
                        super.onMeasure(n, n2);
                    }
                    else {
                        if (this.c != null && !this.d) {
                            break Label_0046;
                        }
                        super.onMeasure(n, n2);
                    }
                    return;
                }
            }
            final int mode = View$MeasureSpec.getMode(n);
            final int size = View$MeasureSpec.getSize(n);
            final int mode2 = View$MeasureSpec.getMode(n2);
            final int size2 = View$MeasureSpec.getSize(n2);
            final float density = this.getContext().getResources().getDisplayMetrics().density;
            final int i = (int)(density * this.c.getWidth());
            final int j = (int)(density * this.c.getHeight());
            int n3;
            if (mode != Integer.MIN_VALUE && mode != 1073741824) {
                n3 = Integer.MAX_VALUE;
            }
            else {
                n3 = size;
            }
            int n4;
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                n4 = size2;
            }
            else {
                n4 = Integer.MAX_VALUE;
            }
            if (i - density * 6.0f <= n3 && j <= n4) {
                this.setMeasuredDimension(i, j);
                return;
            }
            com.google.ads.util.b.b("Not enough space to show ad! Wants: <" + i + ", " + j + ">, Has: <" + size + ", " + size2 + ">");
            this.setVisibility(8);
            this.setMeasuredDimension(size, size2);
        }
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final ak ak = this.a.r.a();
        if (ak != null) {
            ak.a(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }
    
    public void setAdActivity(final AdActivity referent) {
        this.b = new WeakReference<AdActivity>(referent);
    }
    
    public void setAdSize(final AdSize c) {
        synchronized (this) {
            this.c = c;
            this.requestLayout();
        }
    }
    
    public void setCustomClose(final boolean b) {
        this.f = b;
        if (this.b != null) {
            final AdActivity adActivity = this.b.get();
            if (adActivity != null) {
                adActivity.setCustomClose(b);
            }
        }
    }
    
    public void setIsExpandedMraid(final boolean d) {
        this.d = d;
    }
    
    public void stopLoading() {
        try {
            super.stopLoading();
        }
        catch (Throwable t) {
            com.google.ads.util.b.d("An error occurred while stopping loading in AdWebView:", t);
        }
    }
}
