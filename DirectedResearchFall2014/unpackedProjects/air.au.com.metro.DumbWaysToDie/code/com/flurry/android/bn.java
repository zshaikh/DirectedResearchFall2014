package com.flurry.android;

import android.app.*;
import android.webkit.*;
import java.util.*;
import android.net.*;
import android.widget.*;
import android.media.*;
import android.content.*;
import android.view.*;

final class bn extends p implements DialogInterface$OnKeyListener, MediaPlayer$OnCompletionListener, MediaPlayer$OnErrorListener, MediaPlayer$OnPreparedListener, bm
{
    private ProgressDialog B;
    private Context J;
    private FlurryAds Q;
    private aj cJ;
    private final String d;
    private int dA;
    private Dialog dB;
    private FrameLayout dC;
    private boolean dD;
    private boolean dE;
    private AlertDialog dF;
    private List<AdFrame> dG;
    private boolean dH;
    private Map<String, AdUnit> dI;
    private Map<String, cz> dJ;
    private Activity dK;
    private String dL;
    private List<String> dM;
    private View dh;
    private int di;
    private FrameLayout dk;
    private ce dt;
    private WebView du;
    private boolean dv;
    private WebViewClient dw;
    private WebChromeClient dx;
    private WebChromeClient$CustomViewCallback dy;
    private Dialog dz;
    
    bn(final Context j, final FlurryAds q, final cz l, final AdUnit m, final int n) {
        super(j, q, l);
        this.d = this.getClass().getSimpleName();
        this.dL = null;
        this.J = j;
        if (j instanceof Activity) {
            this.dK = (Activity)j;
        }
        this.setClickable(true);
        this.M = m;
        this.N = n;
        this.L = l;
        if (this.M != null) {
            this.dG = this.M.getAdFrames();
            this.dH = (this.M.getCombinable() == 1);
            if (this.dH) {
                this.dJ = new HashMap<String, cz>();
                this.dI = new HashMap<String, AdUnit>();
                this.dJ.put(l.at(), l);
                this.dI.put(m.getAdFrames().get(0).getAdGuid().toString(), m);
            }
            this.Q = q;
            this.cJ = this.Q.cJ;
            super.M = this.M;
            super.L = this.L;
            this.dM = new LinkedList<String>();
        }
    }
    
    private void a(final int i, final int j) {
        if (this.dB == null) {
            return;
        }
        new StringBuilder().append("collapse(").append(i).append(",").append(j).append(")").toString();
        if (this.dB != null && this.dB.isShowing()) {
            this.dB.hide();
            this.dB.setOnDismissListener((DialogInterface$OnDismissListener)null);
            this.dB.dismiss();
        }
        this.dB = null;
        ax.a(this.dK, this.dA);
        if (this.dC != null) {
            if (this.du != null && -1 != this.dC.indexOfChild((View)this.du)) {
                this.dC.removeView((View)this.du);
            }
            this.dC = null;
        }
        if (this.du != null && this.du.getParent() == null) {
            this.addView((View)this.du);
        }
        this.K.j(this.M.getAdSpace().toString());
    }
    
    private void ac() {
        if (!this.ag()) {
            return;
        }
        try {
            ((Activity)this.J).finish();
        }
        catch (ClassCastException obj) {
            new StringBuilder().append("caught class cast exception: ").append(obj).toString();
        }
    }
    
    private String ae() {
        return this.ah().getDisplay().toString();
    }
    
    private String af() {
        return this.ah().getAdSpaceLayout().getFormat().toString();
    }
    
    private AdFrame ah() {
        return this.dG.get(this.N);
    }
    
    private List<AdUnit> b(final int n, final int n2) {
        final List<AdUnit> b = this.cJ.b(this.M.getAdSpace().toString(), n2);
        for (final AdUnit adUnit : b) {
            if (adUnit.getAdFrames().size() > 0) {
                this.dI.put(adUnit.getAdFrames().get(0).getAdGuid().toString(), adUnit);
            }
        }
        return b;
    }
    
    private static String f(final List<AdUnit> list) {
        final StringBuilder sb = new StringBuilder();
        sb.append("'{\"adComponents\":[");
        final Iterator<AdUnit> iterator = list.iterator();
        while (iterator.hasNext()) {
            sb.append(bd.s(iterator.next().getAdFrames().get(0).getContent().toString()));
            if (iterator.hasNext()) {
                sb.append(",");
            }
        }
        sb.append("]}'");
        return sb.toString();
    }
    
    private cz u(final String s) {
        cz cz;
        if (this.dJ == null) {
            cz = null;
        }
        else {
            cz = this.dJ.get(s);
            if (cz == null) {
                final cz a = cx.a(this.Q, s);
                this.dJ.put(s, a);
                return a;
            }
        }
        return cz;
    }
    
    private AdUnit v(final String s) {
        if (this.dI == null) {
            return null;
        }
        return this.dI.get(s);
    }
    
    final void a(final String str, final Map<String, String> obj, final AdUnit adUnit, final cz cz, final int n, final int n2) {
        new StringBuilder().append("fireEvent(event=").append(str).append(",params=").append(obj).append(")").toString();
        this.K.onEvent(new cw(str, obj, this.J, adUnit, cz, n), this, n2);
    }
    
    final boolean a(final View view) {
        final ViewParent parent = view.getParent();
        return parent != null && parent == this;
    }
    
    final int ad() {
        return this.ah().getBinding();
    }
    
    final boolean ag() {
        return this.af().equals("takeover");
    }
    
    @Override
    public final void initLayout(final Context context) {
        new StringBuilder().append("initLayout: ad creative layout: {width = ").append(this.ah().getAdSpaceLayout().getAdWidth()).append(", height = ").append(this.ah().getAdSpaceLayout().getAdHeight()).append("}").toString();
        this.removeAllViews();
        this.setFocusable(true);
        this.setFocusableInTouchMode(true);
        switch (this.ad()) {
            default: {
                this.a("renderFailed", Collections.emptyMap(), this.M, this.L, this.N, 0);
            }
            case 3: {
                if (this.dt == null) {
                    (this.dt = new ce(context)).setOnPreparedListener((MediaPlayer$OnPreparedListener)this);
                    this.dt.setOnCompletionListener((MediaPlayer$OnCompletionListener)this);
                    this.dt.setOnErrorListener((MediaPlayer$OnErrorListener)this);
                    this.dt.setMediaController(new MediaController(context));
                }
                this.dt.setVideoURI(Uri.parse(this.ae()));
                db.c(this.d, "URI: " + Uri.parse(this.ae()).toString());
                this.dt.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
                this.addView((View)this.dt);
                ((RelativeLayout)this.dt.getParent()).setGravity(17);
                (this.B = new ProgressDialog(context)).setProgressStyle(0);
                this.B.setMessage((CharSequence)"Loading...");
                this.B.setCancelable(true);
                this.B.setOnKeyListener((DialogInterface$OnKeyListener)this);
                this.B.show();
            }
            case 1:
            case 2: {
                if (this.du == null) {
                    this.du = new WebView(context);
                    this.du.getSettings().setJavaScriptEnabled(true);
                    this.du.setVerticalScrollBarEnabled(false);
                    this.du.setHorizontalScrollBarEnabled(false);
                    this.du.setBackgroundColor(0);
                    this.du.clearCache(false);
                    this.dx = new cs(this);
                    this.du.setWebChromeClient(this.dx);
                    this.dw = new bz(this);
                    this.du.setWebViewClient(this.dw);
                }
                this.a("rendered", Collections.emptyMap(), this.M, this.L, this.N, 0);
                if (this.ad() == 1) {
                    if (this.dL != null) {
                        this.du.loadUrl(this.dL);
                    }
                    else {
                        this.du.loadUrl(this.ae());
                    }
                }
                else if (this.ad() == 2) {
                    this.du.loadDataWithBaseURL("base://url/", this.ae(), "text/html", "utf-8", "base://url/");
                }
                this.du.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
            }
        }
    }
    
    public final void onCompletion(final MediaPlayer mediaPlayer) {
        this.a("videoCompleted", Collections.emptyMap(), this.M, this.L, this.N, 0);
    }
    
    public final boolean onError(final MediaPlayer mediaPlayer, final int n, final int n2) {
        if (this.B != null && this.B.isShowing()) {
            this.B.dismiss();
        }
        this.a("renderFailed", Collections.emptyMap(), this.M, this.L, this.N, 0);
        this.removeView((View)this.dt);
        return false;
    }
    
    public final boolean onKey(final DialogInterface dialogInterface, final int i, final KeyEvent keyEvent) {
        new StringBuilder().append("onkey,keycode=").append(i).append(",event=").append(keyEvent.getAction()).toString();
        if (dialogInterface == this.B && i == 4 && keyEvent.getAction() == 0) {
            this.a("adWillClose", Collections.emptyMap(), this.M, this.L, this.N, 0);
            dialogInterface.dismiss();
            return true;
        }
        return false;
    }
    
    public final void onPrepared(final MediaPlayer mediaPlayer) {
        if (this.ad() == 3) {
            if (this.B.isShowing()) {
                this.B.dismiss();
            }
            if (this.dF == null || !this.dF.isShowing()) {
                this.dt.start();
            }
            this.a("rendered", Collections.emptyMap(), this.M, this.L, this.N, 0);
            this.a("videoStart", Collections.emptyMap(), this.M, this.L, this.N, 0);
        }
    }
    
    public final void performAction$3deb3ec3(final af p0, final FlurryAds p1, final int p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: getfield        com/flurry/android/af.bu:Ljava/lang/String;
        //     4: astore          4
        //     6: aload_1        
        //     7: getfield        com/flurry/android/af.bw:Lcom/flurry/android/cw;
        //    10: astore          5
        //    12: aload_1        
        //    13: getfield        com/flurry/android/af.bv:Ljava/util/Map;
        //    16: astore          6
        //    18: iload_3        
        //    19: bipush          10
        //    21: if_icmple       71
        //    24: new             Ljava/lang/StringBuilder;
        //    27: dup            
        //    28: invokespecial   java/lang/StringBuilder.<init>:()V
        //    31: ldc_w           "Maximum depth for event/action loop exceeded when performing action:"
        //    34: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    37: aload           4
        //    39: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    42: ldc             ","
        //    44: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    47: aload           6
        //    49: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    52: ldc_w           ",triggered by:"
        //    55: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    58: aload           5
        //    60: getfield        com/flurry/android/cw.eW:Ljava/lang/String;
        //    63: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    66: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    69: pop            
        //    70: return         
        //    71: new             Ljava/lang/StringBuilder;
        //    74: dup            
        //    75: invokespecial   java/lang/StringBuilder.<init>:()V
        //    78: ldc_w           "performAction(action="
        //    81: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    84: aload           4
        //    86: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    89: ldc_w           ",params="
        //    92: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    95: aload_1        
        //    96: getfield        com/flurry/android/af.bv:Ljava/util/Map;
        //    99: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   102: ldc_w           ",triggering event="
        //   105: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   108: aload           5
        //   110: getfield        com/flurry/android/cw.eW:Ljava/lang/String;
        //   113: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   116: ldc             ")"
        //   118: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   121: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   124: pop            
        //   125: aload           4
        //   127: ldc_w           "nextAdUnit"
        //   130: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   133: ifeq            343
        //   136: aload_0        
        //   137: invokevirtual   com/flurry/android/bn.getParent:()Landroid/view/ViewParent;
        //   140: checkcast       Lcom/flurry/android/ac;
        //   143: astore          65
        //   145: aload           65
        //   147: ifnull          190
        //   150: aload_1        
        //   151: getfield        com/flurry/android/af.bv:Ljava/util/Map;
        //   154: ldc_w           "delay"
        //   157: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   162: checkcast       Ljava/lang/String;
        //   165: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //   168: istore          70
        //   170: iload           70
        //   172: istore          67
        //   174: iload           67
        //   176: sipush          1000
        //   179: imul           
        //   180: i2l            
        //   181: lstore          68
        //   183: aload           65
        //   185: lload           68
        //   187: invokevirtual   com/flurry/android/ac.a:(J)V
        //   190: aload_0        
        //   191: getfield        com/flurry/android/bn.dM:Ljava/util/List;
        //   194: aload_1        
        //   195: getfield        com/flurry/android/af.bw:Lcom/flurry/android/cw;
        //   198: getfield        com/flurry/android/cw.eW:Ljava/lang/String;
        //   201: invokeinterface java/util/List.contains:(Ljava/lang/Object;)Z
        //   206: ifeq            70
        //   209: aload_0        
        //   210: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //   213: ifnull          70
        //   216: aload_0        
        //   217: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //   220: new             Ljava/lang/StringBuilder;
        //   223: dup            
        //   224: invokespecial   java/lang/StringBuilder.<init>:()V
        //   227: ldc_w           "javascript:flurryadapter.callComplete('"
        //   230: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   233: aload_1        
        //   234: getfield        com/flurry/android/af.bw:Lcom/flurry/android/cw;
        //   237: getfield        com/flurry/android/cw.eW:Ljava/lang/String;
        //   240: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   243: ldc_w           "');"
        //   246: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   249: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   252: invokevirtual   android/webkit/WebView.loadUrl:(Ljava/lang/String;)V
        //   255: aload_0        
        //   256: getfield        com/flurry/android/bn.dM:Ljava/util/List;
        //   259: aload_1        
        //   260: getfield        com/flurry/android/af.bw:Lcom/flurry/android/cw;
        //   263: getfield        com/flurry/android/cw.eW:Ljava/lang/String;
        //   266: invokeinterface java/util/List.remove:(Ljava/lang/Object;)Z
        //   271: pop            
        //   272: return         
        //   273: astore          61
        //   275: aload           61
        //   277: invokevirtual   java/lang/ClassCastException.toString:()Ljava/lang/String;
        //   280: pop            
        //   281: aload_0        
        //   282: invokespecial   com/flurry/android/bn.ac:()V
        //   285: aload_0        
        //   286: invokevirtual   com/flurry/android/bn.ag:()Z
        //   289: ifne            190
        //   292: aload_0        
        //   293: getfield        com/flurry/android/bn.Q:Lcom/flurry/android/FlurryAds;
        //   296: aload_0        
        //   297: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //   300: aload_0        
        //   301: getfield        com/flurry/android/bn.M:Lcom/flurry/android/AdUnit;
        //   304: invokevirtual   com/flurry/android/AdUnit.getAdSpace:()Ljava/lang/CharSequence;
        //   307: invokevirtual   java/lang/Object.toString:()Ljava/lang/String;
        //   310: invokevirtual   com/flurry/android/FlurryAds.d:(Landroid/content/Context;Ljava/lang/String;)V
        //   313: goto            190
        //   316: astore          63
        //   318: new             Ljava/lang/StringBuilder;
        //   321: dup            
        //   322: invokespecial   java/lang/StringBuilder.<init>:()V
        //   325: ldc_w           "remove ad exception: "
        //   328: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   331: aload           63
        //   333: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   336: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   339: pop            
        //   340: goto            190
        //   343: aload           4
        //   345: ldc_w           "nextFrame"
        //   348: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   351: ifeq            756
        //   354: iconst_1       
        //   355: aload_0        
        //   356: getfield        com/flurry/android/bn.N:I
        //   359: iadd           
        //   360: istore          49
        //   362: aload           6
        //   364: ldc_w           "offset"
        //   367: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   372: checkcast       Ljava/lang/String;
        //   375: astore          50
        //   377: aload           50
        //   379: ifnull          401
        //   382: aload           50
        //   384: ldc_w           "next"
        //   387: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   390: ifeq            576
        //   393: iconst_1       
        //   394: aload_0        
        //   395: getfield        com/flurry/android/bn.N:I
        //   398: iadd           
        //   399: istore          49
        //   401: aload_0        
        //   402: ldc_w           "clicked"
        //   405: invokestatic    java/util/Collections.emptyMap:()Ljava/util/Map;
        //   408: invokevirtual   com/flurry/android/bn.a:(Ljava/lang/String;Ljava/util/Map;)V
        //   411: aload_0        
        //   412: getfield        com/flurry/android/bn.dH:Z
        //   415: ifne            648
        //   418: iload           49
        //   420: aload_0        
        //   421: getfield        com/flurry/android/bn.N:I
        //   424: if_icmpeq       190
        //   427: iload           49
        //   429: aload_0        
        //   430: getfield        com/flurry/android/bn.dG:Ljava/util/List;
        //   433: invokeinterface java/util/List.size:()I
        //   438: if_icmpge       190
        //   441: aload_0        
        //   442: getfield        com/flurry/android/bn.M:Lcom/flurry/android/AdUnit;
        //   445: invokevirtual   com/flurry/android/AdUnit.getAdFrames:()Ljava/util/List;
        //   448: iload           49
        //   450: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   455: checkcast       Lcom/flurry/android/AdFrame;
        //   458: astore          52
        //   460: aload_0        
        //   461: invokespecial   com/flurry/android/bn.af:()Ljava/lang/String;
        //   464: astore          53
        //   466: aload           52
        //   468: invokevirtual   com/flurry/android/AdFrame.getAdSpaceLayout:()Lcom/flurry/android/AdSpaceLayout;
        //   471: invokevirtual   com/flurry/android/AdSpaceLayout.getFormat:()Ljava/lang/CharSequence;
        //   474: invokevirtual   java/lang/Object.toString:()Ljava/lang/String;
        //   477: astore          54
        //   479: aload           54
        //   481: aload           53
        //   483: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   486: ifne            631
        //   489: aload           54
        //   491: ldc_w           "takeover"
        //   494: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   497: ifeq            190
        //   500: aload_0        
        //   501: getfield        com/flurry/android/bn.Q:Lcom/flurry/android/FlurryAds;
        //   504: aload_0        
        //   505: getfield        com/flurry/android/bn.L:Lcom/flurry/android/cz;
        //   508: invokevirtual   com/flurry/android/FlurryAds.b:(Lcom/flurry/android/cz;)V
        //   511: aload_0        
        //   512: getfield        com/flurry/android/bn.Q:Lcom/flurry/android/FlurryAds;
        //   515: aload_0        
        //   516: getfield        com/flurry/android/bn.M:Lcom/flurry/android/AdUnit;
        //   519: invokevirtual   com/flurry/android/FlurryAds.a:(Lcom/flurry/android/AdUnit;)V
        //   522: new             Landroid/content/Intent;
        //   525: dup            
        //   526: aload_0        
        //   527: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //   530: ldc_w           Lcom/flurry/android/FlurryFullscreenTakeoverActivity;.class
        //   533: invokespecial   android/content/Intent.<init>:(Landroid/content/Context;Ljava/lang/Class;)V
        //   536: astore          55
        //   538: aload           55
        //   540: ldc_w           "frameIndex"
        //   543: iload           49
        //   545: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;I)Landroid/content/Intent;
        //   548: pop            
        //   549: aload_0        
        //   550: getfield        com/flurry/android/bn.Q:Lcom/flurry/android/FlurryAds;
        //   553: aload_0        
        //   554: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //   557: aload           55
        //   559: aload_0        
        //   560: getfield        com/flurry/android/bn.M:Lcom/flurry/android/AdUnit;
        //   563: invokevirtual   com/flurry/android/AdUnit.getAdSpace:()Ljava/lang/CharSequence;
        //   566: invokevirtual   java/lang/Object.toString:()Ljava/lang/String;
        //   569: invokevirtual   com/flurry/android/FlurryAds.a:(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
        //   572: pop            
        //   573: goto            190
        //   576: aload           50
        //   578: ldc_w           "current"
        //   581: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   584: ifne            70
        //   587: aload           50
        //   589: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //   592: istore          60
        //   594: iload           60
        //   596: istore          49
        //   598: goto            401
        //   601: astore          58
        //   603: new             Ljava/lang/StringBuilder;
        //   606: dup            
        //   607: invokespecial   java/lang/StringBuilder.<init>:()V
        //   610: ldc_w           "caught: "
        //   613: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   616: aload           58
        //   618: invokevirtual   java/lang/NumberFormatException.getMessage:()Ljava/lang/String;
        //   621: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   624: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   627: pop            
        //   628: goto            401
        //   631: aload_0        
        //   632: iload           49
        //   634: putfield        com/flurry/android/bn.N:I
        //   637: aload_0        
        //   638: aload_0        
        //   639: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //   642: invokevirtual   com/flurry/android/bn.initLayout:(Landroid/content/Context;)V
        //   645: goto            190
        //   648: aload_1        
        //   649: getfield        com/flurry/android/af.bw:Lcom/flurry/android/cw;
        //   652: getfield        com/flurry/android/cw.bv:Ljava/util/Map;
        //   655: ldc_w           "guid"
        //   658: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   663: checkcast       Ljava/lang/String;
        //   666: astore          51
        //   668: aload           51
        //   670: ifnull          190
        //   673: aload_0        
        //   674: aload_0        
        //   675: aload           51
        //   677: invokespecial   com/flurry/android/bn.v:(Ljava/lang/String;)Lcom/flurry/android/AdUnit;
        //   680: putfield        com/flurry/android/bn.M:Lcom/flurry/android/AdUnit;
        //   683: aload_0        
        //   684: aload_0        
        //   685: getfield        com/flurry/android/bn.M:Lcom/flurry/android/AdUnit;
        //   688: invokevirtual   com/flurry/android/AdUnit.getAdFrames:()Ljava/util/List;
        //   691: putfield        com/flurry/android/bn.dG:Ljava/util/List;
        //   694: aload_0        
        //   695: aload_1        
        //   696: getfield        com/flurry/android/af.bw:Lcom/flurry/android/cw;
        //   699: getfield        com/flurry/android/cw.L:Lcom/flurry/android/cz;
        //   702: putfield        com/flurry/android/bn.L:Lcom/flurry/android/cz;
        //   705: aload_0        
        //   706: invokevirtual   com/flurry/android/bn.ag:()Z
        //   709: ifeq            734
        //   712: aload_0        
        //   713: getfield        com/flurry/android/bn.Q:Lcom/flurry/android/FlurryAds;
        //   716: aload_0        
        //   717: getfield        com/flurry/android/bn.M:Lcom/flurry/android/AdUnit;
        //   720: invokevirtual   com/flurry/android/FlurryAds.a:(Lcom/flurry/android/AdUnit;)V
        //   723: aload_0        
        //   724: getfield        com/flurry/android/bn.Q:Lcom/flurry/android/FlurryAds;
        //   727: aload_0        
        //   728: getfield        com/flurry/android/bn.L:Lcom/flurry/android/cz;
        //   731: invokevirtual   com/flurry/android/FlurryAds.b:(Lcom/flurry/android/cz;)V
        //   734: aload_0        
        //   735: iload           49
        //   737: putfield        com/flurry/android/bn.N:I
        //   740: aload_0        
        //   741: iconst_0       
        //   742: putfield        com/flurry/android/bn.dH:Z
        //   745: aload_0        
        //   746: aload_0        
        //   747: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //   750: invokevirtual   com/flurry/android/bn.initLayout:(Landroid/content/Context;)V
        //   753: goto            190
        //   756: aload           4
        //   758: ldc_w           "closeAd"
        //   761: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   764: ifeq            774
        //   767: aload_0        
        //   768: invokespecial   com/flurry/android/bn.ac:()V
        //   771: goto            190
        //   774: aload           4
        //   776: ldc_w           "notifyUser"
        //   779: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   782: ifeq            989
        //   785: new             Landroid/app/AlertDialog$Builder;
        //   788: dup            
        //   789: aload_0        
        //   790: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //   793: invokespecial   android/app/AlertDialog$Builder.<init>:(Landroid/content/Context;)V
        //   796: astore          8
        //   798: aload           6
        //   800: ldc_w           "message"
        //   803: invokeinterface java/util/Map.containsKey:(Ljava/lang/Object;)Z
        //   808: ifeq            971
        //   811: aload           6
        //   813: ldc_w           "confirmDisplay"
        //   816: invokeinterface java/util/Map.containsKey:(Ljava/lang/Object;)Z
        //   821: ifeq            971
        //   824: aload           6
        //   826: ldc_w           "cancelDisplay"
        //   829: invokeinterface java/util/Map.containsKey:(Ljava/lang/Object;)Z
        //   834: ifeq            971
        //   837: aload           6
        //   839: ldc_w           "message"
        //   842: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   847: checkcast       Ljava/lang/String;
        //   850: astore          14
        //   852: aload           6
        //   854: ldc_w           "confirmDisplay"
        //   857: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   862: checkcast       Ljava/lang/String;
        //   865: astore          11
        //   867: aload           6
        //   869: ldc_w           "cancelDisplay"
        //   872: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   877: checkcast       Ljava/lang/String;
        //   880: astore          9
        //   882: aload           14
        //   884: astore          10
        //   886: aload           8
        //   888: aload           10
        //   890: invokevirtual   android/app/AlertDialog$Builder.setMessage:(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
        //   893: iconst_0       
        //   894: invokevirtual   android/app/AlertDialog$Builder.setCancelable:(Z)Landroid/app/AlertDialog$Builder;
        //   897: aload           9
        //   899: new             Lcom/flurry/android/bx;
        //   902: dup            
        //   903: aload_0        
        //   904: aload           5
        //   906: iload_3        
        //   907: invokespecial   com/flurry/android/bx.<init>:(Lcom/flurry/android/bn;Lcom/flurry/android/cw;I)V
        //   910: invokevirtual   android/app/AlertDialog$Builder.setPositiveButton:(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
        //   913: aload           11
        //   915: new             Lcom/flurry/android/bt;
        //   918: dup            
        //   919: aload_0        
        //   920: aload           5
        //   922: iload_3        
        //   923: invokespecial   com/flurry/android/bt.<init>:(Lcom/flurry/android/bn;Lcom/flurry/android/cw;I)V
        //   926: invokevirtual   android/app/AlertDialog$Builder.setNegativeButton:(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
        //   929: pop            
        //   930: aload_0        
        //   931: aload           8
        //   933: invokevirtual   android/app/AlertDialog$Builder.create:()Landroid/app/AlertDialog;
        //   936: putfield        com/flurry/android/bn.dF:Landroid/app/AlertDialog;
        //   939: aload_0        
        //   940: getfield        com/flurry/android/bn.dt:Lcom/flurry/android/ce;
        //   943: ifnull          961
        //   946: aload_0        
        //   947: invokevirtual   com/flurry/android/bn.ad:()I
        //   950: iconst_3       
        //   951: if_icmpne       961
        //   954: aload_0        
        //   955: getfield        com/flurry/android/bn.dt:Lcom/flurry/android/ce;
        //   958: invokevirtual   com/flurry/android/ce.pause:()V
        //   961: aload_0        
        //   962: getfield        com/flurry/android/bn.dF:Landroid/app/AlertDialog;
        //   965: invokevirtual   android/app/AlertDialog.show:()V
        //   968: goto            190
        //   971: ldc_w           "OK"
        //   974: astore          9
        //   976: ldc_w           "Are you sure?"
        //   979: astore          10
        //   981: ldc_w           "Cancel"
        //   984: astore          11
        //   986: goto            886
        //   989: aload           4
        //   991: ldc_w           "loadAdComponents"
        //   994: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   997: ifeq            1347
        //  1000: aload           6
        //  1002: ldc_w           "min"
        //  1005: invokeinterface java/util/Map.containsKey:(Ljava/lang/Object;)Z
        //  1010: ifeq            2087
        //  1013: aload           6
        //  1015: ldc_w           "max"
        //  1018: invokeinterface java/util/Map.containsKey:(Ljava/lang/Object;)Z
        //  1023: ifeq            2087
        //  1026: aload           6
        //  1028: ldc_w           "min"
        //  1031: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //  1036: checkcast       Ljava/lang/String;
        //  1039: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //  1042: istore          47
        //  1044: aload           6
        //  1046: ldc_w           "max"
        //  1049: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //  1054: checkcast       Ljava/lang/String;
        //  1057: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //  1060: istore          48
        //  1062: iload           47
        //  1064: istore          36
        //  1066: iload           48
        //  1068: istore          37
        //  1070: aload_0        
        //  1071: getfield        com/flurry/android/bn.M:Lcom/flurry/android/AdUnit;
        //  1074: invokevirtual   com/flurry/android/AdUnit.getAdSpace:()Ljava/lang/CharSequence;
        //  1077: invokevirtual   java/lang/Object.toString:()Ljava/lang/String;
        //  1080: pop            
        //  1081: aload_0        
        //  1082: iload           36
        //  1084: iload           37
        //  1086: invokespecial   com/flurry/android/bn.b:(II)Ljava/util/List;
        //  1089: astore          39
        //  1091: aload           39
        //  1093: invokeinterface java/util/List.size:()I
        //  1098: ifle            1321
        //  1101: aload_0        
        //  1102: getfield        com/flurry/android/bn.M:Lcom/flurry/android/AdUnit;
        //  1105: invokevirtual   com/flurry/android/AdUnit.getAdSpace:()Ljava/lang/CharSequence;
        //  1108: invokevirtual   java/lang/Object.toString:()Ljava/lang/String;
        //  1111: pop            
        //  1112: aload           39
        //  1114: invokestatic    com/flurry/android/bn.f:(Ljava/util/List;)Ljava/lang/String;
        //  1117: astore          41
        //  1119: aload_0        
        //  1120: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //  1123: ifnull          1170
        //  1126: aload_0        
        //  1127: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //  1130: new             Ljava/lang/StringBuilder;
        //  1133: dup            
        //  1134: invokespecial   java/lang/StringBuilder.<init>:()V
        //  1137: ldc_w           "javascript:(function() {var multiadwraps=document.getElementsByClassName('multiAdWrap');if(multiadwraps.length>0){var template=document.getElementsByClassName('multiAdWrap')[0];var compiled=Hogan.compile(template.innerHTML);template.innerHTML='';template.innerHTML=compiled.render(JSON.parse("
        //  1140: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1143: aload           41
        //  1145: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1148: ldc_w           "));}})();"
        //  1151: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1154: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1157: invokevirtual   android/webkit/WebView.loadUrl:(Ljava/lang/String;)V
        //  1160: aload_0        
        //  1161: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //  1164: ldc_w           "javascript:flurryadapter.callComplete();"
        //  1167: invokevirtual   android/webkit/WebView.loadUrl:(Ljava/lang/String;)V
        //  1170: aload           39
        //  1172: invokeinterface java/util/List.iterator:()Ljava/util/Iterator;
        //  1177: astore          42
        //  1179: aload           42
        //  1181: invokeinterface java/util/Iterator.hasNext:()Z
        //  1186: ifeq            1292
        //  1189: aload           42
        //  1191: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //  1196: checkcast       Lcom/flurry/android/AdUnit;
        //  1199: astore          43
        //  1201: new             Ljava/util/HashMap;
        //  1204: dup            
        //  1205: invokespecial   java/util/HashMap.<init>:()V
        //  1208: astore          44
        //  1210: aload           44
        //  1212: ldc_w           "guid"
        //  1215: aload           43
        //  1217: invokevirtual   com/flurry/android/AdUnit.getAdFrames:()Ljava/util/List;
        //  1220: iconst_0       
        //  1221: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //  1226: checkcast       Lcom/flurry/android/AdFrame;
        //  1229: invokevirtual   com/flurry/android/AdFrame.getAdGuid:()Ljava/lang/CharSequence;
        //  1232: invokevirtual   java/lang/Object.toString:()Ljava/lang/String;
        //  1235: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //  1240: pop            
        //  1241: aload_0        
        //  1242: ldc_w           "rendered"
        //  1245: aload           44
        //  1247: aload           43
        //  1249: aload_0        
        //  1250: aload           43
        //  1252: invokevirtual   com/flurry/android/AdUnit.getAdFrames:()Ljava/util/List;
        //  1255: iconst_0       
        //  1256: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //  1261: checkcast       Lcom/flurry/android/AdFrame;
        //  1264: invokevirtual   com/flurry/android/AdFrame.getAdGuid:()Ljava/lang/CharSequence;
        //  1267: invokevirtual   java/lang/Object.toString:()Ljava/lang/String;
        //  1270: invokespecial   com/flurry/android/bn.u:(Ljava/lang/String;)Lcom/flurry/android/cz;
        //  1273: iconst_0       
        //  1274: iconst_0       
        //  1275: invokevirtual   com/flurry/android/bn.a:(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cz;II)V
        //  1278: goto            1179
        //  1281: astore          46
        //  1283: iconst_1       
        //  1284: istore          36
        //  1286: iconst_3       
        //  1287: istore          37
        //  1289: goto            1070
        //  1292: aload_0        
        //  1293: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //  1296: ifnull          190
        //  1299: aload_0        
        //  1300: aload_0        
        //  1301: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //  1304: invokevirtual   com/flurry/android/bn.a:(Landroid/view/View;)Z
        //  1307: ifne            190
        //  1310: aload_0        
        //  1311: aload_0        
        //  1312: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //  1315: invokevirtual   com/flurry/android/bn.addView:(Landroid/view/View;)V
        //  1318: goto            190
        //  1321: aload_0        
        //  1322: ldc_w           "renderFailed"
        //  1325: invokestatic    java/util/Collections.emptyMap:()Ljava/util/Map;
        //  1328: aload_0        
        //  1329: getfield        com/flurry/android/bn.M:Lcom/flurry/android/AdUnit;
        //  1332: aload_0        
        //  1333: getfield        com/flurry/android/bn.L:Lcom/flurry/android/cz;
        //  1336: aload_0        
        //  1337: getfield        com/flurry/android/bn.N:I
        //  1340: iconst_0       
        //  1341: invokevirtual   com/flurry/android/bn.a:(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cz;II)V
        //  1344: goto            190
        //  1347: aload           4
        //  1349: ldc_w           "doExpand"
        //  1352: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  1355: ifeq            1900
        //  1358: aload_0        
        //  1359: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //  1362: invokestatic    com/flurry/android/bd.l:(Landroid/content/Context;)I
        //  1365: istore          21
        //  1367: aload_0        
        //  1368: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //  1371: invokestatic    com/flurry/android/bd.m:(Landroid/content/Context;)I
        //  1374: istore          22
        //  1376: aload_1        
        //  1377: getfield        com/flurry/android/af.bw:Lcom/flurry/android/cw;
        //  1380: getfield        com/flurry/android/cw.bv:Ljava/util/Map;
        //  1383: ldc_w           "width"
        //  1386: invokeinterface java/util/Map.containsKey:(Ljava/lang/Object;)Z
        //  1391: ifeq            2076
        //  1394: aload_1        
        //  1395: getfield        com/flurry/android/af.bw:Lcom/flurry/android/cw;
        //  1398: getfield        com/flurry/android/cw.bv:Ljava/util/Map;
        //  1401: ldc_w           "height"
        //  1404: invokeinterface java/util/Map.containsKey:(Ljava/lang/Object;)Z
        //  1409: ifeq            2076
        //  1412: aload_0        
        //  1413: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //  1416: aload_1        
        //  1417: getfield        com/flurry/android/af.bw:Lcom/flurry/android/cw;
        //  1420: getfield        com/flurry/android/cw.bv:Ljava/util/Map;
        //  1423: ldc_w           "width"
        //  1426: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //  1431: checkcast       Ljava/lang/String;
        //  1434: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //  1437: invokestatic    com/flurry/android/bd.b:(Landroid/content/Context;I)I
        //  1440: istore          34
        //  1442: aload_0        
        //  1443: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //  1446: aload_1        
        //  1447: getfield        com/flurry/android/af.bw:Lcom/flurry/android/cw;
        //  1450: getfield        com/flurry/android/cw.bv:Ljava/util/Map;
        //  1453: ldc_w           "height"
        //  1456: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //  1461: checkcast       Ljava/lang/String;
        //  1464: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //  1467: invokestatic    com/flurry/android/bd.b:(Landroid/content/Context;I)I
        //  1470: istore          35
        //  1472: iload           34
        //  1474: istore          23
        //  1476: iload           35
        //  1478: istore          24
        //  1480: new             Ljava/lang/StringBuilder;
        //  1483: dup            
        //  1484: invokespecial   java/lang/StringBuilder.<init>:()V
        //  1487: ldc_w           "expand to width = "
        //  1490: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1493: iload           23
        //  1495: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1498: ldc_w           " height = "
        //  1501: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1504: iload           24
        //  1506: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1509: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1512: pop            
        //  1513: aload_0        
        //  1514: invokevirtual   com/flurry/android/bn.getParent:()Landroid/view/ViewParent;
        //  1517: checkcast       Lcom/flurry/android/ac;
        //  1520: ifnull          1801
        //  1523: aload_0        
        //  1524: ldc_w           "clicked"
        //  1527: invokestatic    java/util/Collections.emptyMap:()Ljava/util/Map;
        //  1530: invokevirtual   com/flurry/android/bn.a:(Ljava/lang/String;Ljava/util/Map;)V
        //  1533: aload_0        
        //  1534: getfield        com/flurry/android/bn.dB:Landroid/app/Dialog;
        //  1537: ifnonnull       1801
        //  1540: new             Ljava/lang/StringBuilder;
        //  1543: dup            
        //  1544: invokespecial   java/lang/StringBuilder.<init>:()V
        //  1547: ldc_w           "expand("
        //  1550: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1553: iload           23
        //  1555: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1558: ldc             ","
        //  1560: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1563: iload           24
        //  1565: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1568: ldc             ")"
        //  1570: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1573: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1576: pop            
        //  1577: aload_0        
        //  1578: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //  1581: ifnull          1604
        //  1584: iconst_m1      
        //  1585: aload_0        
        //  1586: aload_0        
        //  1587: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //  1590: invokevirtual   com/flurry/android/bn.indexOfChild:(Landroid/view/View;)I
        //  1593: if_icmpeq       1604
        //  1596: aload_0        
        //  1597: aload_0        
        //  1598: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //  1601: invokevirtual   com/flurry/android/bn.removeView:(Landroid/view/View;)V
        //  1604: aload_0        
        //  1605: aload_0        
        //  1606: getfield        com/flurry/android/bn.dK:Landroid/app/Activity;
        //  1609: invokevirtual   android/app/Activity.getRequestedOrientation:()I
        //  1612: putfield        com/flurry/android/bn.dA:I
        //  1615: aload_0        
        //  1616: getfield        com/flurry/android/bn.dC:Landroid/widget/FrameLayout;
        //  1619: ifnonnull       1686
        //  1622: aload_0        
        //  1623: new             Landroid/widget/FrameLayout;
        //  1626: dup            
        //  1627: aload_0        
        //  1628: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //  1631: invokespecial   android/widget/FrameLayout.<init>:(Landroid/content/Context;)V
        //  1634: putfield        com/flurry/android/bn.dC:Landroid/widget/FrameLayout;
        //  1637: aload_0        
        //  1638: getfield        com/flurry/android/bn.dC:Landroid/widget/FrameLayout;
        //  1641: ldc_w           -16777216
        //  1644: invokevirtual   android/widget/FrameLayout.setBackgroundColor:(I)V
        //  1647: aload_0        
        //  1648: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //  1651: ifnull          1686
        //  1654: aload_0        
        //  1655: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //  1658: invokevirtual   android/webkit/WebView.getParent:()Landroid/view/ViewParent;
        //  1661: ifnonnull       1686
        //  1664: aload_0        
        //  1665: getfield        com/flurry/android/bn.dC:Landroid/widget/FrameLayout;
        //  1668: aload_0        
        //  1669: getfield        com/flurry/android/bn.du:Landroid/webkit/WebView;
        //  1672: new             Landroid/widget/FrameLayout$LayoutParams;
        //  1675: dup            
        //  1676: iconst_m1      
        //  1677: iconst_m1      
        //  1678: bipush          17
        //  1680: invokespecial   android/widget/FrameLayout$LayoutParams.<init>:(III)V
        //  1683: invokevirtual   android/widget/FrameLayout.addView:(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
        //  1686: aload_0        
        //  1687: getfield        com/flurry/android/bn.dB:Landroid/app/Dialog;
        //  1690: ifnonnull       1771
        //  1693: aload_0        
        //  1694: new             Landroid/app/Dialog;
        //  1697: dup            
        //  1698: aload_0        
        //  1699: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //  1702: ldc_w           16973834
        //  1705: invokespecial   android/app/Dialog.<init>:(Landroid/content/Context;I)V
        //  1708: putfield        com/flurry/android/bn.dB:Landroid/app/Dialog;
        //  1711: aload_0        
        //  1712: getfield        com/flurry/android/bn.dB:Landroid/app/Dialog;
        //  1715: invokevirtual   android/app/Dialog.getWindow:()Landroid/view/Window;
        //  1718: invokestatic    com/flurry/android/x.a:(Landroid/view/Window;)V
        //  1721: aload_0        
        //  1722: getfield        com/flurry/android/bn.dB:Landroid/app/Dialog;
        //  1725: aload_0        
        //  1726: getfield        com/flurry/android/bn.dC:Landroid/widget/FrameLayout;
        //  1729: new             Landroid/view/ViewGroup$LayoutParams;
        //  1732: dup            
        //  1733: iconst_m1      
        //  1734: iconst_m1      
        //  1735: invokespecial   android/view/ViewGroup$LayoutParams.<init>:(II)V
        //  1738: invokevirtual   android/app/Dialog.setContentView:(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
        //  1741: aload_0        
        //  1742: getfield        com/flurry/android/bn.dB:Landroid/app/Dialog;
        //  1745: new             Lcom/flurry/android/bv;
        //  1748: dup            
        //  1749: aload_0        
        //  1750: invokespecial   com/flurry/android/bv.<init>:(Lcom/flurry/android/bn;)V
        //  1753: invokevirtual   android/app/Dialog.setOnDismissListener:(Landroid/content/DialogInterface$OnDismissListener;)V
        //  1756: aload_0        
        //  1757: getfield        com/flurry/android/bn.dB:Landroid/app/Dialog;
        //  1760: iconst_1       
        //  1761: invokevirtual   android/app/Dialog.setCancelable:(Z)V
        //  1764: aload_0        
        //  1765: getfield        com/flurry/android/bn.dB:Landroid/app/Dialog;
        //  1768: invokevirtual   android/app/Dialog.show:()V
        //  1771: aload_0        
        //  1772: getfield        com/flurry/android/bn.dK:Landroid/app/Activity;
        //  1775: invokestatic    com/flurry/android/ax.I:()I
        //  1778: iconst_1       
        //  1779: invokestatic    com/flurry/android/ax.a:(Landroid/app/Activity;IZ)Z
        //  1782: pop            
        //  1783: aload_0        
        //  1784: getfield        com/flurry/android/bn.K:Lcom/flurry/android/FlurryAds;
        //  1787: aload_0        
        //  1788: getfield        com/flurry/android/bn.M:Lcom/flurry/android/AdUnit;
        //  1791: invokevirtual   com/flurry/android/AdUnit.getAdSpace:()Ljava/lang/CharSequence;
        //  1794: invokevirtual   java/lang/Object.toString:()Ljava/lang/String;
        //  1797: iconst_0       
        //  1798: invokevirtual   com/flurry/android/FlurryAds.b:(Ljava/lang/String;Z)V
        //  1801: aload_1        
        //  1802: getfield        com/flurry/android/af.bw:Lcom/flurry/android/cw;
        //  1805: getfield        com/flurry/android/cw.bv:Ljava/util/Map;
        //  1808: ldc_w           "url"
        //  1811: invokeinterface java/util/Map.containsKey:(Ljava/lang/Object;)Z
        //  1816: ifeq            190
        //  1819: aload_0        
        //  1820: aload_1        
        //  1821: getfield        com/flurry/android/af.bw:Lcom/flurry/android/cw;
        //  1824: getfield        com/flurry/android/cw.bv:Ljava/util/Map;
        //  1827: ldc_w           "url"
        //  1830: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //  1835: checkcast       Ljava/lang/String;
        //  1838: putfield        com/flurry/android/bn.dL:Ljava/lang/String;
        //  1841: aload_0        
        //  1842: aload_0        
        //  1843: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //  1846: invokevirtual   com/flurry/android/bn.initLayout:(Landroid/content/Context;)V
        //  1849: goto            190
        //  1852: astore          26
        //  1854: aload           26
        //  1856: invokevirtual   java/lang/ClassCastException.getMessage:()Ljava/lang/String;
        //  1859: pop            
        //  1860: goto            190
        //  1863: astore          30
        //  1865: aload           30
        //  1867: invokevirtual   java/lang/NumberFormatException.getMessage:()Ljava/lang/String;
        //  1870: pop            
        //  1871: aload_0        
        //  1872: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //  1875: invokestatic    com/flurry/android/bd.l:(Landroid/content/Context;)I
        //  1878: istore          32
        //  1880: aload_0        
        //  1881: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //  1884: invokestatic    com/flurry/android/bd.m:(Landroid/content/Context;)I
        //  1887: istore          33
        //  1889: iload           32
        //  1891: istore          23
        //  1893: iload           33
        //  1895: istore          24
        //  1897: goto            1480
        //  1900: aload           4
        //  1902: ldc_w           "doCollapse"
        //  1905: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  1908: ifeq            2034
        //  1911: aload_0        
        //  1912: invokespecial   com/flurry/android/bn.ah:()Lcom/flurry/android/AdFrame;
        //  1915: invokevirtual   com/flurry/android/AdFrame.getAdSpaceLayout:()Lcom/flurry/android/AdSpaceLayout;
        //  1918: invokevirtual   com/flurry/android/AdSpaceLayout.getAdWidth:()Ljava/lang/Integer;
        //  1921: invokevirtual   java/lang/Integer.intValue:()I
        //  1924: istore          15
        //  1926: aload_0        
        //  1927: invokespecial   com/flurry/android/bn.ah:()Lcom/flurry/android/AdFrame;
        //  1930: invokevirtual   com/flurry/android/AdFrame.getAdSpaceLayout:()Lcom/flurry/android/AdSpaceLayout;
        //  1933: invokevirtual   com/flurry/android/AdSpaceLayout.getAdHeight:()Ljava/lang/Integer;
        //  1936: invokevirtual   java/lang/Integer.intValue:()I
        //  1939: istore          16
        //  1941: aload_0        
        //  1942: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //  1945: iload           15
        //  1947: invokestatic    com/flurry/android/bd.b:(Landroid/content/Context;I)I
        //  1950: istore          17
        //  1952: aload_0        
        //  1953: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //  1956: iload           16
        //  1958: invokestatic    com/flurry/android/bd.b:(Landroid/content/Context;I)I
        //  1961: istore          18
        //  1963: aload_0        
        //  1964: getfield        com/flurry/android/bn.dL:Ljava/lang/String;
        //  1967: ifnull          1983
        //  1970: aload_0        
        //  1971: aconst_null    
        //  1972: putfield        com/flurry/android/bn.dL:Ljava/lang/String;
        //  1975: aload_0        
        //  1976: aload_0        
        //  1977: getfield        com/flurry/android/bn.J:Landroid/content/Context;
        //  1980: invokevirtual   com/flurry/android/bn.initLayout:(Landroid/content/Context;)V
        //  1983: aload_0        
        //  1984: invokevirtual   com/flurry/android/bn.getParent:()Landroid/view/ViewParent;
        //  1987: checkcast       Lcom/flurry/android/ac;
        //  1990: ifnull          190
        //  1993: aload_0        
        //  1994: iload           17
        //  1996: iload           18
        //  1998: invokespecial   com/flurry/android/bn.a:(II)V
        //  2001: goto            190
        //  2004: astore          19
        //  2006: new             Ljava/lang/StringBuilder;
        //  2009: dup            
        //  2010: invokespecial   java/lang/StringBuilder.<init>:()V
        //  2013: ldc_w           "action doCollapse failed:"
        //  2016: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2019: aload           19
        //  2021: invokevirtual   java/lang/ClassCastException.getMessage:()Ljava/lang/String;
        //  2024: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2027: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  2030: pop            
        //  2031: goto            190
        //  2034: aload           4
        //  2036: ldc_w           "directOpen"
        //  2039: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  2042: ifeq            2055
        //  2045: aload_0        
        //  2046: ldc_w           "clicked"
        //  2049: invokestatic    java/util/Collections.emptyMap:()Ljava/util/Map;
        //  2052: invokevirtual   com/flurry/android/bn.a:(Ljava/lang/String;Ljava/util/Map;)V
        //  2055: aload_0        
        //  2056: getfield        com/flurry/android/bn.K:Lcom/flurry/android/FlurryAds;
        //  2059: aload_1        
        //  2060: aload_2        
        //  2061: iload_3        
        //  2062: invokevirtual   com/flurry/android/FlurryAds.performAction$3deb3ec3:(Lcom/flurry/android/af;Lcom/flurry/android/FlurryAds;I)V
        //  2065: goto            190
        //  2068: astore          66
        //  2070: iconst_0       
        //  2071: istore          67
        //  2073: goto            174
        //  2076: iload           21
        //  2078: istore          23
        //  2080: iload           22
        //  2082: istore          24
        //  2084: goto            1480
        //  2087: iconst_1       
        //  2088: istore          36
        //  2090: iconst_3       
        //  2091: istore          37
        //  2093: goto            1070
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  136    145    273    343    Ljava/lang/ClassCastException;
        //  150    170    2068   2076   Ljava/lang/NumberFormatException;
        //  150    170    273    343    Ljava/lang/ClassCastException;
        //  183    190    273    343    Ljava/lang/ClassCastException;
        //  292    313    316    343    Ljava/lang/Exception;
        //  587    594    601    631    Ljava/lang/NumberFormatException;
        //  1026   1062   1281   1292   Ljava/lang/NumberFormatException;
        //  1412   1472   1863   1900   Ljava/lang/NumberFormatException;
        //  1513   1604   1852   1863   Ljava/lang/ClassCastException;
        //  1604   1686   1852   1863   Ljava/lang/ClassCastException;
        //  1686   1771   1852   1863   Ljava/lang/ClassCastException;
        //  1771   1801   1852   1863   Ljava/lang/ClassCastException;
        //  1801   1849   1852   1863   Ljava/lang/ClassCastException;
        //  1983   2001   2004   2034   Ljava/lang/ClassCastException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0174:
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
    
    @Override
    final boolean shouldRotate() {
        int n;
        if (this.dB != null) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n == 0) {
            int n2;
            if (this.dz != null) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
            if (n2 == 0) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public final void stop() {
        if (this.ad() == 3) {
            if (this.B != null && this.B.isShowing()) {
                this.B.dismiss();
            }
            if (this.dt != null && this.dt.isPlaying()) {
                this.dt.stopPlayback();
            }
        }
        if (this.du != null) {
            if (this.dh != null && this.dx != null) {
                this.dx.onHideCustomView();
            }
            if (this.dB != null) {
                this.a(0, 0);
            }
            this.removeView((View)this.du);
            this.du.stopLoading();
            if (l.SDK_INT >= 11) {
                this.du.onPause();
            }
            this.du.destroy();
            this.du = null;
        }
        if (this.ag()) {
            this.a("adClosed", Collections.emptyMap(), this.M, this.L, this.N, 0);
        }
    }
}
