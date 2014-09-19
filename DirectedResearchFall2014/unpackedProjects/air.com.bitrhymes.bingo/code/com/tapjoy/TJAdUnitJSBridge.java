package com.tapjoy;

import android.webkit.*;
import java.net.*;
import org.json.*;
import android.content.pm.*;
import android.app.*;
import com.tapjoy.mraid.view.*;
import android.view.*;
import android.content.*;
import java.io.*;
import android.net.*;
import android.location.*;
import java.util.*;
import android.annotation.*;
import android.widget.*;
import android.os.*;
import android.graphics.*;

@SuppressLint({ "SetJavaScriptEnabled" })
public class TJAdUnitJSBridge
{
    private static final String TAG = "TJAdUnitJSBridge";
    public boolean allowRedirect;
    private View bannerView;
    private Context context;
    public boolean customClose;
    public boolean didLaunchOtherActivity;
    private TJEventData eventData;
    private TJWebViewJSInterface jsBridge;
    private LocationListener locationListener;
    private LocationManager locationManager;
    public String otherActivityCallbackID;
    private ProgressDialog progressDialog;
    private TJAdUnitJSBridge self;
    public boolean shouldClose;
    private WebView webView;
    
    public TJAdUnitJSBridge(final Context context, final WebView webView, final TJEventData eventData) {
        super();
        this.bannerView = null;
        this.didLaunchOtherActivity = false;
        this.allowRedirect = true;
        this.otherActivityCallbackID = null;
        this.customClose = false;
        this.shouldClose = false;
        TapjoyLog.i("TJAdUnitJSBridge", "creating AdUnit/JS Bridge");
        this.context = context;
        this.eventData = eventData;
        this.self = this;
        this.webView = webView;
        if (this.webView == null) {
            TapjoyLog.e("TJAdUnitJSBridge", "Error: webView is NULL");
            return;
        }
        this.jsBridge = new TJWebViewJSInterface(this.webView, new TJWebViewJSInterfaceNotifier() {
            @Override
            public void dispatchMethod(final String p0, final JSONObject p1) {
                // 
                // This method could not be decompiled.
                // 
                // Original Bytecode:
                // 
                //     0: aconst_null    
                //     1: astore_3       
                //     2: aload_2        
                //     3: ldc             "callbackId"
                //     5: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
                //     8: astore          10
                //    10: aload           10
                //    12: astore_3       
                //    13: aload_2        
                //    14: ldc             "data"
                //    16: invokevirtual   org/json/JSONObject.getJSONObject:(Ljava/lang/String;)Lorg/json/JSONObject;
                //    19: astore          8
                //    21: ldc             Lcom/tapjoy/TJAdUnitJSBridge;.class
                //    23: aload_1        
                //    24: iconst_2       
                //    25: anewarray       Ljava/lang/Class;
                //    28: dup            
                //    29: iconst_0       
                //    30: ldc             Lorg/json/JSONObject;.class
                //    32: aastore        
                //    33: dup            
                //    34: iconst_1       
                //    35: ldc             Ljava/lang/String;.class
                //    37: aastore        
                //    38: invokevirtual   java/lang/Class.getMethod:(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
                //    41: aload_0        
                //    42: getfield        com/tapjoy/TJAdUnitJSBridge$1.this$0:Lcom/tapjoy/TJAdUnitJSBridge;
                //    45: invokestatic    com/tapjoy/TJAdUnitJSBridge.access$000:(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJAdUnitJSBridge;
                //    48: iconst_2       
                //    49: anewarray       Ljava/lang/Object;
                //    52: dup            
                //    53: iconst_0       
                //    54: aload           8
                //    56: aastore        
                //    57: dup            
                //    58: iconst_1       
                //    59: aload_3        
                //    60: aastore        
                //    61: invokevirtual   java/lang/reflect/Method.invoke:(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
                //    64: pop            
                //    65: return         
                //    66: astore          4
                //    68: ldc             "TJAdUnitJSBridge"
                //    70: aload           4
                //    72: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //    75: invokestatic    com/tapjoy/TapjoyLog.w:(Ljava/lang/String;Ljava/lang/String;)V
                //    78: aconst_null    
                //    79: astore_3       
                //    80: goto            13
                //    83: astore          5
                //    85: aload           5
                //    87: invokevirtual   java/lang/Exception.printStackTrace:()V
                //    90: aload_0        
                //    91: getfield        com/tapjoy/TJAdUnitJSBridge$1.this$0:Lcom/tapjoy/TJAdUnitJSBridge;
                //    94: astore          6
                //    96: iconst_1       
                //    97: anewarray       Ljava/lang/Object;
                //   100: astore          7
                //   102: aload           7
                //   104: iconst_0       
                //   105: getstatic       java/lang/Boolean.FALSE:Ljava/lang/Boolean;
                //   108: aastore        
                //   109: aload           6
                //   111: aload_3        
                //   112: aload           7
                //   114: invokevirtual   com/tapjoy/TJAdUnitJSBridge.invokeJSCallback:(Ljava/lang/String;[Ljava/lang/Object;)V
                //   117: return         
                //    Exceptions:
                //  Try           Handler
                //  Start  End    Start  End    Type                 
                //  -----  -----  -----  -----  ---------------------
                //  2      10     66     83     Ljava/lang/Exception;
                //  13     65     83     118    Ljava/lang/Exception;
                //  68     78     83     118    Ljava/lang/Exception;
                // 
                // The error that occurred was:
                // 
                // java.lang.IllegalStateException: Expression is linked from several locations: Label_0013:
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
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformCall(AstMethodBodyBuilder.java:1163)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformByteCode(AstMethodBodyBuilder.java:1010)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformExpression(AstMethodBodyBuilder.java:540)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformByteCode(AstMethodBodyBuilder.java:554)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformExpression(AstMethodBodyBuilder.java:540)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformByteCode(AstMethodBodyBuilder.java:554)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformExpression(AstMethodBodyBuilder.java:540)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformNode(AstMethodBodyBuilder.java:392)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformBlock(AstMethodBodyBuilder.java:333)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:294)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
        });
        this.webView.addJavascriptInterface((Object)this.jsBridge, "AndroidJavascriptInterface");
    }
    
    @SuppressLint({ "WorldReadableFiles" })
    private File downloadFileFromURL(final String spec) {
        final String substring = spec.substring(spec.lastIndexOf(46));
        Label_0130: {
            try {
                final InputStream openStream = new URL(spec).openStream();
                final FileOutputStream openFileOutput = this.context.openFileOutput("share_temp" + substring, 1);
                final byte[] array = new byte[4096];
                while (true) {
                    final int read = openStream.read(array, 0, array.length);
                    if (read < 0) {
                        break Label_0130;
                    }
                    openFileOutput.write(array, 0, read);
                }
            }
            catch (Exception ex) {
                ex.printStackTrace();
            }
            return new File(this.context.getFilesDir(), "share_temp" + substring);
            try {
                final FileOutputStream openFileOutput;
                openFileOutput.close();
                final InputStream openStream;
                openStream.close();
            }
            catch (Exception ex2) {}
        }
        return new File(this.context.getFilesDir(), "share_temp" + substring);
    }
    
    public void alert(final JSONObject obj, final String s) {
        TapjoyLog.i("TJAdUnitJSBridge", "alert_method: " + obj);
        String string = "";
        String string2 = "";
        JSONArray jsonArray;
        AlertDialog create;
        while (true) {
            try {
                string = obj.getString("title");
                string2 = obj.getString("message");
                jsonArray = obj.getJSONArray("buttons");
                create = new AlertDialog$Builder(this.context).setTitle((CharSequence)string).setMessage((CharSequence)string2).create();
                if (jsonArray == null || jsonArray.length() == 0) {
                    this.invokeJSCallback(s, Boolean.FALSE);
                    return;
                }
            }
            catch (Exception ex) {
                this.invokeJSCallback(s, Boolean.FALSE);
                ex.printStackTrace();
                jsonArray = null;
                continue;
            }
            break;
        }
        final ArrayList<String> list = new ArrayList<String>();
        int i = 0;
        int n;
        Label_0199_Outer:Label_0212_Outer:Label_0251_Outer:
        while (i < jsonArray.length()) {
            while (true) {
                switch (i) {
                    default: {
                        n = -1;
                    }
                    case 0: {
                        Label_0244: {
                            break Label_0244;
                            while (true) {
                                try {
                                    while (true) {
                                        list.add(jsonArray.getString(i));
                                        create.setButton(n, (CharSequence)list.get(i), (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                                            public void onClick(final DialogInterface dialogInterface, final int n) {
                                                int i = 0;
                                            Label_0074_Outer:
                                                while (true) {
                                                    Label_0064: {
                                                        while (true) {
                                                            switch (n) {
                                                                default: {
                                                                    break Label_0028;
                                                                }
                                                                case -2: {
                                                                    break Label_0064;
                                                                }
                                                                case -3: {
                                                                    Label_0069: {
                                                                        break Label_0069;
                                                                        try {
                                                                            TJAdUnitJSBridge.this.invokeJSCallback(s, i);
                                                                            return;
                                                                            i = 0;
                                                                            continue Label_0074_Outer;
                                                                            i = 2;
                                                                            continue Label_0074_Outer;
                                                                            i = 1;
                                                                            continue Label_0074_Outer;
                                                                        }
                                                                        catch (Exception ex) {
                                                                            ex.printStackTrace();
                                                                            return;
                                                                        }
                                                                    }
                                                                    break;
                                                                }
                                                                case -1: {
                                                                    continue Label_0199_Outer;
                                                                }
                                                            }
                                                            break;
                                                        }
                                                    }
                                                    break;
                                                }
                                            }
                                        });
                                        ++i;
                                        continue Label_0199_Outer;
                                        n = -2;
                                        continue Label_0212_Outer;
                                        n = -3;
                                        continue Label_0212_Outer;
                                    }
                                }
                                catch (Exception ex2) {
                                    ex2.printStackTrace();
                                    continue Label_0251_Outer;
                                }
                                break;
                            }
                        }
                        break Label_0199_Outer;
                    }
                    case 1: {
                        continue;
                    }
                }
                break;
            }
        }
        create.show();
    }
    
    public void checkAppInstalled(final JSONObject jsonObject, final String s) {
        String string = "";
    Label_0105:
        while (true) {
            try {
                string = jsonObject.getString("bundle");
                if (string != null && string.length() > 0) {
                    final Iterator<ApplicationInfo> iterator = this.context.getPackageManager().getInstalledApplications(0).iterator();
                    Block_6: {
                        while (iterator.hasNext()) {
                            if (iterator.next().packageName.equals(string)) {
                                break Block_6;
                            }
                        }
                        break Label_0105;
                    }
                    this.invokeJSCallback(s, Boolean.TRUE);
                    return;
                }
            }
            catch (Exception ex) {
                ex.printStackTrace();
                continue;
            }
            break;
        }
        this.invokeJSCallback(s, Boolean.FALSE);
    }
    
    public void closeRequested() {
        this.shouldClose = true;
        this.invokeJSAdunitMethod("closeRequested", new Object[0]);
    }
    
    public void destroy() {
        if (this.locationListener != null && this.locationManager != null) {
            this.locationManager.removeUpdates(this.locationListener);
            this.locationManager = null;
            this.locationListener = null;
        }
    }
    
    public void dismiss(final JSONObject jsonObject, final String s) {
        if (this.context instanceof TJAdUnitView) {
            this.invokeJSCallback(s, Boolean.TRUE);
            ((Activity)this.context).finish();
        }
    }
    
    public void display() {
        this.invokeJSAdunitMethod("display", new Object[0]);
    }
    
    public void displayOffers(final JSONObject jsonObject, final String s) {
        while (true) {
            try {
                final String string = jsonObject.getString("currencyId");
                new TJCOffers(this.context).showOffersWithCurrencyID(string, false, this.eventData, s, null);
            }
            catch (Exception ex) {
                TapjoyLog.w("TJAdUnitJSBridge", "no currencyID for showOfferWall");
                final String string = null;
                continue;
            }
            break;
        }
    }
    
    public void displayRichMedia(final JSONObject jsonObject, final String s) {
        while (true) {
            try {
                final int boolean1 = jsonObject.getBoolean("inline") ? 1 : 0;
                String string;
                while (true) {
                    try {
                        string = jsonObject.getString("html");
                        if (string == null) {
                            this.invokeJSCallback(s, Boolean.FALSE);
                            return;
                        }
                    }
                    catch (Exception ex) {
                        ex.printStackTrace();
                        string = null;
                        continue;
                    }
                    break;
                }
                if (boolean1 != 0) {
                    ((Activity)this.context).runOnUiThread((Runnable)new Runnable() {
                        @Override
                        public void run() {
                            while (true) {
                                try {
                                    final String string = jsonObject.getString("html");
                                    if (TJAdUnitJSBridge.this.bannerView != null && TJAdUnitJSBridge.this.bannerView.getParent() != null) {
                                        ((ViewGroup)TJAdUnitJSBridge.this.bannerView.getParent()).removeView(TJAdUnitJSBridge.this.bannerView);
                                    }
                                    final MraidView mraidView = new MraidView(TJAdUnitJSBridge.this.context);
                                    TJAdUnitJSBridge.this.webView.getSettings().setJavaScriptEnabled(true);
                                    mraidView.setPlacementType(MraidView.PLACEMENT_TYPE.INLINE);
                                    mraidView.setLayoutParams(new ViewGroup$LayoutParams(640, 100));
                                    mraidView.setInitialScale(100);
                                    mraidView.setBackgroundColor(0);
                                    mraidView.loadDataWithBaseURL(null, string, "text/html", "utf-8", null);
                                    final int width = ((WindowManager)((Activity)TJAdUnitJSBridge.this.context).getSystemService("window")).getDefaultDisplay().getWidth();
                                    TJAdUnitJSBridge.this.bannerView = TapjoyUtil.scaleDisplayAd((View)mraidView, width);
                                    ((Activity)TJAdUnitJSBridge.this.context).addContentView(TJAdUnitJSBridge.this.bannerView, new ViewGroup$LayoutParams(width, (int)(100.0 * (width / 640.0))));
                                }
                                catch (Exception ex) {
                                    ex.printStackTrace();
                                    final String string = null;
                                    continue;
                                }
                                break;
                            }
                        }
                    });
                    return;
                }
                final Intent intent = new Intent(this.context, (Class)TJAdUnitView.class);
                intent.putExtra("tjevent", (Serializable)this.eventData);
                intent.putExtra("view_type", 3);
                intent.putExtra("html", string);
                intent.putExtra("base_url", TapjoyConnectCore.getHostURL());
                intent.putExtra("callback_id", s);
                ((Activity)this.context).startActivityForResult(intent, 0);
            }
            catch (Exception ex2) {
                final int boolean1 = 0;
                continue;
            }
            break;
        }
    }
    
    public void displayStoreURL(final JSONObject jsonObject, final String s) {
        this.displayURL(jsonObject, s);
    }
    
    public void displayURL(final JSONObject jsonObject, final String otherActivityCallbackID) {
        try {
            final String string = jsonObject.getString("url");
            this.didLaunchOtherActivity = true;
            this.otherActivityCallbackID = otherActivityCallbackID;
            ((Activity)this.context).startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
        }
        catch (Exception ex) {
            this.invokeJSCallback(otherActivityCallbackID, Boolean.TRUE);
            ex.printStackTrace();
        }
    }
    
    public void displayVideo(final JSONObject p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             ""
        //     2: astore_3       
        //     3: aload_1        
        //     4: ldc_w           "cancelMessage"
        //     7: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    10: astore          13
        //    12: aload           13
        //    14: astore_3       
        //    15: aload_1        
        //    16: ldc_w           "url"
        //    19: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    22: astore          7
        //    24: new             Landroid/content/Intent;
        //    27: dup            
        //    28: aload_0        
        //    29: getfield        com/tapjoy/TJAdUnitJSBridge.context:Landroid/content/Context;
        //    32: ldc_w           Lcom/tapjoy/TapjoyVideoView;.class
        //    35: invokespecial   android/content/Intent.<init>:(Landroid/content/Context;Ljava/lang/Class;)V
        //    38: astore          8
        //    40: aload           8
        //    42: ldc_w           "VIDEO_URL"
        //    45: aload           7
        //    47: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
        //    50: pop            
        //    51: aload           8
        //    53: ldc_w           "VIDEO_CANCEL_MESSAGE"
        //    56: aload_3        
        //    57: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
        //    60: pop            
        //    61: aload           8
        //    63: ldc_w           "VIDEO_SHOULD_DISMISS"
        //    66: iconst_1       
        //    67: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Z)Landroid/content/Intent;
        //    70: pop            
        //    71: aload           8
        //    73: ldc_w           "callback_id"
        //    76: aload_2        
        //    77: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
        //    80: pop            
        //    81: aload_0        
        //    82: getfield        com/tapjoy/TJAdUnitJSBridge.context:Landroid/content/Context;
        //    85: checkcast       Landroid/app/Activity;
        //    88: aload           8
        //    90: iconst_0       
        //    91: invokevirtual   android/app/Activity.startActivityForResult:(Landroid/content/Intent;I)V
        //    94: return         
        //    95: astore          4
        //    97: ldc             "TJAdUnitJSBridge"
        //    99: ldc_w           "no cancelMessage"
        //   102: invokestatic    com/tapjoy/TapjoyLog.w:(Ljava/lang/String;Ljava/lang/String;)V
        //   105: goto            15
        //   108: astore          5
        //   110: iconst_1       
        //   111: anewarray       Ljava/lang/Object;
        //   114: astore          6
        //   116: aload           6
        //   118: iconst_0       
        //   119: getstatic       java/lang/Boolean.FALSE:Ljava/lang/Boolean;
        //   122: aastore        
        //   123: aload_0        
        //   124: aload_2        
        //   125: aload           6
        //   127: invokevirtual   com/tapjoy/TJAdUnitJSBridge.invokeJSCallback:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   130: aload           5
        //   132: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   135: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  3      12     95     108    Ljava/lang/Exception;
        //  15     94     108    136    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0015:
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
    
    public void getLocation(final JSONObject jsonObject, final String s) {
        float floatValue = 100.0f;
        while (true) {
            try {
                floatValue = Float.valueOf(jsonObject.getString("gpsAccuracy"));
                Label_0178: {
                    while (true) {
                        try {
                            final int booleanValue = ((boolean)Boolean.valueOf(jsonObject.getString("enabled"))) ? 1 : 0;
                            this.locationManager = (LocationManager)this.context.getSystemService("location");
                            final String bestProvider = this.locationManager.getBestProvider(new Criteria(), false);
                            if (this.locationListener == null) {
                                this.locationListener = (LocationListener)new LocationListener() {
                                    public void onLocationChanged(final Location location) {
                                        if (TJAdUnitJSBridge.this.context == null || TJAdUnitJSBridge.this.webView == null) {
                                            if (TJAdUnitJSBridge.this.locationManager != null && TJAdUnitJSBridge.this.locationListener != null) {
                                                TapjoyLog.i("TJAdUnitJSBridge", "stopping updates");
                                                TJAdUnitJSBridge.this.locationManager.removeUpdates(TJAdUnitJSBridge.this.locationListener);
                                            }
                                        }
                                        else if (location != null) {
                                            final HashMap<String, Object> hashMap = (HashMap<String, Object>)new HashMap<String, Long>();
                                            hashMap.put("lat", location.getLatitude());
                                            hashMap.put("long", location.getLongitude());
                                            hashMap.put("altitude", location.getAltitude());
                                            hashMap.put("timestamp", location.getTime());
                                            hashMap.put("speed", location.getSpeed());
                                            hashMap.put("course", location.getBearing());
                                            TJAdUnitJSBridge.this.invokeJSAdunitMethod("locationUpdated", hashMap);
                                        }
                                    }
                                    
                                    public void onProviderDisabled(final String s) {
                                    }
                                    
                                    public void onProviderEnabled(final String s) {
                                    }
                                    
                                    public void onStatusChanged(final String s, final int n, final Bundle bundle) {
                                    }
                                };
                            }
                            if (booleanValue == 0) {
                                break Label_0178;
                            }
                            if (bestProvider != null) {
                                this.locationManager.requestLocationUpdates(bestProvider, 0L, floatValue, this.locationListener);
                                this.invokeJSCallback(s, Boolean.TRUE);
                                return;
                            }
                        }
                        catch (Exception ex) {
                            ex.printStackTrace();
                            final int booleanValue = 0;
                            continue;
                        }
                        break;
                    }
                    this.invokeJSCallback(s, Boolean.FALSE);
                    return;
                }
                if (this.locationManager != null && this.locationListener != null) {
                    this.locationManager.removeUpdates(this.locationListener);
                }
                this.invokeJSCallback(s, Boolean.TRUE);
            }
            catch (Exception ex2) {
                continue;
            }
            break;
        }
    }
    
    public void invokeJSAdunitMethod(final String s, final Map<String, Object> map) {
        this.jsBridge.callback(map, s, null);
    }
    
    public void invokeJSAdunitMethod(final String s, final Object... a) {
        this.jsBridge.callback(new ArrayList<Object>(Arrays.asList(a)), s, null);
    }
    
    public void invokeJSCallback(final String s, final Map<String, Object> map) {
        this.jsBridge.callback(map, "", s);
    }
    
    public void invokeJSCallback(final String s, final Object... a) {
        this.jsBridge.callback(new ArrayList<Object>(Arrays.asList(a)), "", s);
    }
    
    public void log(final JSONObject jsonObject, final String s) {
        try {
            TapjoyLog.i("TJAdUnitJSBridge", jsonObject.getString("message"));
            this.invokeJSCallback(s, Boolean.TRUE);
        }
        catch (Exception ex) {
            this.invokeJSCallback(s, Boolean.FALSE);
            ex.printStackTrace();
        }
    }
    
    public void nativeEval(final JSONObject jsonObject, final String s) {
        ((Activity)this.context).runOnUiThread((Runnable)new Runnable() {
            @Override
            public void run() {
                try {
                    TJAdUnitJSBridge.this.webView.loadUrl("javascript:" + jsonObject.getString("command"));
                    TJAdUnitJSBridge.this.invokeJSCallback(s, Boolean.TRUE);
                }
                catch (Exception ex) {
                    TJAdUnitJSBridge.this.invokeJSCallback(s, Boolean.FALSE);
                }
            }
        });
    }
    
    public void openApp(final JSONObject jsonObject, final String s) {
        try {
            this.context.startActivity(this.context.getPackageManager().getLaunchIntentForPackage(jsonObject.getString("bundle")));
            this.invokeJSCallback(s, Boolean.TRUE);
        }
        catch (Exception ex) {
            this.invokeJSCallback(s, Boolean.FALSE);
            ex.printStackTrace();
        }
    }
    
    public void present(final JSONObject p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_0       
        //     1: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //     4: pop            
        //     5: iconst_0       
        //     6: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //     9: astore          6
        //    11: aload_1        
        //    12: ldc_w           "visible"
        //    15: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    18: invokestatic    java/lang/Boolean.valueOf:(Ljava/lang/String;)Ljava/lang/Boolean;
        //    21: astore          7
        //    23: aload_1        
        //    24: ldc_w           "transparent"
        //    27: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    30: invokestatic    java/lang/Boolean.valueOf:(Ljava/lang/String;)Ljava/lang/Boolean;
        //    33: astore          12
        //    35: aload           12
        //    37: astore          6
        //    39: aload_0        
        //    40: aload_1        
        //    41: ldc_w           "customClose"
        //    44: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    47: invokestatic    java/lang/Boolean.valueOf:(Ljava/lang/String;)Ljava/lang/Boolean;
        //    50: invokevirtual   java/lang/Boolean.booleanValue:()Z
        //    53: putfield        com/tapjoy/TJAdUnitJSBridge.customClose:Z
        //    56: new             Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;
        //    59: dup            
        //    60: aload_0        
        //    61: aload_0        
        //    62: getfield        com/tapjoy/TJAdUnitJSBridge.webView:Landroid/webkit/WebView;
        //    65: invokespecial   com/tapjoy/TJAdUnitJSBridge$ShowWebView.<init>:(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/webkit/WebView;)V
        //    68: iconst_2       
        //    69: anewarray       Ljava/lang/Boolean;
        //    72: dup            
        //    73: iconst_0       
        //    74: aload           7
        //    76: aastore        
        //    77: dup            
        //    78: iconst_1       
        //    79: aload           6
        //    81: aastore        
        //    82: invokevirtual   com/tapjoy/TJAdUnitJSBridge$ShowWebView.execute:([Ljava/lang/Object;)Landroid/os/AsyncTask;
        //    85: pop            
        //    86: iconst_1       
        //    87: anewarray       Ljava/lang/Object;
        //    90: astore          11
        //    92: aload           11
        //    94: iconst_0       
        //    95: getstatic       java/lang/Boolean.TRUE:Ljava/lang/Boolean;
        //    98: aastore        
        //    99: aload_0        
        //   100: aload_2        
        //   101: aload           11
        //   103: invokevirtual   com/tapjoy/TJAdUnitJSBridge.invokeJSCallback:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   106: return         
        //   107: astore_3       
        //   108: iconst_1       
        //   109: anewarray       Ljava/lang/Object;
        //   112: astore          4
        //   114: aload           4
        //   116: iconst_0       
        //   117: getstatic       java/lang/Boolean.FALSE:Ljava/lang/Boolean;
        //   120: aastore        
        //   121: aload_0        
        //   122: aload_2        
        //   123: aload           4
        //   125: invokevirtual   com/tapjoy/TJAdUnitJSBridge.invokeJSCallback:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   128: aload_3        
        //   129: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   132: return         
        //   133: astore          9
        //   135: goto            56
        //   138: astore          8
        //   140: goto            39
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      23     107    133    Ljava/lang/Exception;
        //  23     35     138    143    Ljava/lang/Exception;
        //  39     56     133    138    Ljava/lang/Exception;
        //  56     106    107    133    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0039:
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
    
    public void sendActionCallback(final JSONObject p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Lcom/tapjoy/TJEventRequest;
        //     3: dup            
        //     4: invokespecial   com/tapjoy/TJEventRequest.<init>:()V
        //     7: astore_3       
        //     8: aload_1        
        //     9: ldc_w           "type"
        //    12: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    15: astore          11
        //    17: aload           11
        //    19: astore          5
        //    21: aload_3        
        //    22: aload_1        
        //    23: ldc_w           "quantity"
        //    26: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    29: invokestatic    java/lang/Integer.valueOf:(Ljava/lang/String;)Ljava/lang/Integer;
        //    32: invokevirtual   java/lang/Integer.intValue:()I
        //    35: putfield        com/tapjoy/TJEventRequest.quantity:I
        //    38: aload_3        
        //    39: aload_1        
        //    40: ldc_w           "identifier"
        //    43: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    46: putfield        com/tapjoy/TJEventRequest.identifier:Ljava/lang/String;
        //    49: aload           5
        //    51: ifnull          61
        //    54: aload_3        
        //    55: getfield        com/tapjoy/TJEventRequest.identifier:Ljava/lang/String;
        //    58: ifnonnull       123
        //    61: ldc             "TJAdUnitJSBridge"
        //    63: ldc_w           "sendActionCallback: null type or identifier"
        //    66: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //    69: iconst_1       
        //    70: anewarray       Ljava/lang/Object;
        //    73: astore          8
        //    75: aload           8
        //    77: iconst_0       
        //    78: getstatic       java/lang/Boolean.FALSE:Ljava/lang/Boolean;
        //    81: aastore        
        //    82: aload_0        
        //    83: aload_2        
        //    84: aload           8
        //    86: invokevirtual   com/tapjoy/TJAdUnitJSBridge.invokeJSCallback:(Ljava/lang/String;[Ljava/lang/Object;)V
        //    89: return         
        //    90: astore          4
        //    92: aload           4
        //    94: invokevirtual   java/lang/Exception.printStackTrace:()V
        //    97: aconst_null    
        //    98: astore          5
        //   100: goto            21
        //   103: astore          6
        //   105: aload           6
        //   107: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   110: goto            38
        //   113: astore          7
        //   115: aload           7
        //   117: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   120: goto            49
        //   123: aload           5
        //   125: ldc_w           "currency"
        //   128: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   131: ifeq            193
        //   134: aload_3        
        //   135: iconst_3       
        //   136: putfield        com/tapjoy/TJEventRequest.type:I
        //   139: aload_3        
        //   140: getfield        com/tapjoy/TJEventRequest.type:I
        //   143: ifne            250
        //   146: ldc             "TJAdUnitJSBridge"
        //   148: new             Ljava/lang/StringBuilder;
        //   151: dup            
        //   152: invokespecial   java/lang/StringBuilder.<init>:()V
        //   155: ldc_w           "unknown type: "
        //   158: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   161: aload           5
        //   163: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   166: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   169: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   172: iconst_1       
        //   173: anewarray       Ljava/lang/Object;
        //   176: astore          10
        //   178: aload           10
        //   180: iconst_0       
        //   181: getstatic       java/lang/Boolean.FALSE:Ljava/lang/Boolean;
        //   184: aastore        
        //   185: aload_0        
        //   186: aload_2        
        //   187: aload           10
        //   189: invokevirtual   com/tapjoy/TJAdUnitJSBridge.invokeJSCallback:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   192: return         
        //   193: aload           5
        //   195: ldc_w           "inAppPurchase"
        //   198: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   201: ifeq            212
        //   204: aload_3        
        //   205: iconst_1       
        //   206: putfield        com/tapjoy/TJEventRequest.type:I
        //   209: goto            139
        //   212: aload           5
        //   214: ldc_w           "navigation"
        //   217: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   220: ifeq            231
        //   223: aload_3        
        //   224: iconst_4       
        //   225: putfield        com/tapjoy/TJEventRequest.type:I
        //   228: goto            139
        //   231: aload           5
        //   233: ldc_w           "virtualGood"
        //   236: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   239: ifeq            139
        //   242: aload_3        
        //   243: iconst_2       
        //   244: putfield        com/tapjoy/TJEventRequest.type:I
        //   247: goto            139
        //   250: aload_3        
        //   251: new             Lcom/tapjoy/TJAdUnitJSBridge$6;
        //   254: dup            
        //   255: aload_0        
        //   256: aload_2        
        //   257: invokespecial   com/tapjoy/TJAdUnitJSBridge$6.<init>:(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V
        //   260: putfield        com/tapjoy/TJEventRequest.callback:Lcom/tapjoy/TJEventRequestCallback;
        //   263: aload_0        
        //   264: getfield        com/tapjoy/TJAdUnitJSBridge.eventData:Lcom/tapjoy/TJEventData;
        //   267: getfield        com/tapjoy/TJEventData.guid:Ljava/lang/String;
        //   270: invokestatic    com/tapjoy/TJEventManager.get:(Ljava/lang/String;)Lcom/tapjoy/TJEvent;
        //   273: astore          9
        //   275: aload           9
        //   277: ifnull          89
        //   280: aload           9
        //   282: invokevirtual   com/tapjoy/TJEvent.getCallback:()Lcom/tapjoy/TJEventCallback;
        //   285: aload           9
        //   287: aload_3        
        //   288: invokeinterface com/tapjoy/TJEventCallback.didRequestAction:(Lcom/tapjoy/TJEvent;Lcom/tapjoy/TJEventRequest;)V
        //   293: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  8      17     90     103    Ljava/lang/Exception;
        //  21     38     103    113    Ljava/lang/Exception;
        //  38     49     113    123    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 132, Size: 132
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
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
    
    public void setAllowRedirect(final JSONObject jsonObject, final String s) {
        boolean boolean1 = true;
        while (true) {
            try {
                boolean1 = jsonObject.getBoolean("enabled");
                this.allowRedirect = boolean1;
                this.invokeJSCallback(s, Boolean.TRUE);
            }
            catch (Exception ex) {
                continue;
            }
            break;
        }
    }
    
    public void setContext(final Context context) {
        this.context = context;
    }
    
    public void setSpinnerVisible(final JSONObject p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc_w           "Loading..."
        //     3: astore_3       
        //     4: ldc             ""
        //     6: astore          4
        //     8: aload_1        
        //     9: ldc_w           "visible"
        //    12: invokevirtual   org/json/JSONObject.getBoolean:(Ljava/lang/String;)Z
        //    15: istore          7
        //    17: aload_1        
        //    18: ldc             "title"
        //    20: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    23: astore_3       
        //    24: aload_1        
        //    25: ldc             "message"
        //    27: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    30: astore          10
        //    32: aload           10
        //    34: astore          4
        //    36: iload           7
        //    38: ifeq            76
        //    41: aload_0        
        //    42: aload_0        
        //    43: getfield        com/tapjoy/TJAdUnitJSBridge.context:Landroid/content/Context;
        //    46: aload_3        
        //    47: aload           4
        //    49: invokestatic    android/app/ProgressDialog.show:(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
        //    52: putfield        com/tapjoy/TJAdUnitJSBridge.progressDialog:Landroid/app/ProgressDialog;
        //    55: iconst_1       
        //    56: anewarray       Ljava/lang/Object;
        //    59: astore          9
        //    61: aload           9
        //    63: iconst_0       
        //    64: getstatic       java/lang/Boolean.TRUE:Ljava/lang/Boolean;
        //    67: aastore        
        //    68: aload_0        
        //    69: aload_2        
        //    70: aload           9
        //    72: invokevirtual   com/tapjoy/TJAdUnitJSBridge.invokeJSCallback:(Ljava/lang/String;[Ljava/lang/Object;)V
        //    75: return         
        //    76: aload_0        
        //    77: getfield        com/tapjoy/TJAdUnitJSBridge.progressDialog:Landroid/app/ProgressDialog;
        //    80: ifnull          55
        //    83: aload_0        
        //    84: getfield        com/tapjoy/TJAdUnitJSBridge.progressDialog:Landroid/app/ProgressDialog;
        //    87: invokevirtual   android/app/ProgressDialog.dismiss:()V
        //    90: goto            55
        //    93: astore          5
        //    95: iconst_1       
        //    96: anewarray       Ljava/lang/Object;
        //    99: astore          6
        //   101: aload           6
        //   103: iconst_0       
        //   104: getstatic       java/lang/Boolean.FALSE:Ljava/lang/Boolean;
        //   107: aastore        
        //   108: aload_0        
        //   109: aload_2        
        //   110: aload           6
        //   112: invokevirtual   com/tapjoy/TJAdUnitJSBridge.invokeJSCallback:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   115: aload           5
        //   117: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   120: return         
        //   121: astore          8
        //   123: goto            36
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  8      17     93     121    Ljava/lang/Exception;
        //  17     32     121    126    Ljava/lang/Exception;
        //  41     55     93     121    Ljava/lang/Exception;
        //  55     75     93     121    Ljava/lang/Exception;
        //  76     90     93     121    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0036:
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
    
    public void share(final JSONObject p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: ldc_w           "network"
        //     4: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //     7: astore          5
        //     9: aload_1        
        //    10: ldc             "message"
        //    12: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    15: astore          6
        //    17: new             Landroid/content/Intent;
        //    20: dup            
        //    21: ldc_w           "android.intent.action.SEND"
        //    24: invokespecial   android/content/Intent.<init>:(Ljava/lang/String;)V
        //    27: astore          7
        //    29: aload_1        
        //    30: ldc_w           "imageURL"
        //    33: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    36: astore          28
        //    38: aload           28
        //    40: astore          9
        //    42: aload_1        
        //    43: ldc_w           "linkURL"
        //    46: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    49: astore          27
        //    51: aload           27
        //    53: astore          11
        //    55: aconst_null    
        //    56: astore          12
        //    58: aload           9
        //    60: ifnull          105
        //    63: aload_0        
        //    64: aload           9
        //    66: invokespecial   com/tapjoy/TJAdUnitJSBridge.downloadFileFromURL:(Ljava/lang/String;)Ljava/io/File;
        //    69: astore          26
        //    71: aconst_null    
        //    72: astore          12
        //    74: aload           26
        //    76: ifnull          105
        //    79: new             Ljava/lang/StringBuilder;
        //    82: dup            
        //    83: invokespecial   java/lang/StringBuilder.<init>:()V
        //    86: ldc_w           "file://"
        //    89: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    92: aload           26
        //    94: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //    97: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   100: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   103: astore          12
        //   105: aload           11
        //   107: ifnull          138
        //   110: new             Ljava/lang/StringBuilder;
        //   113: dup            
        //   114: invokespecial   java/lang/StringBuilder.<init>:()V
        //   117: aload           6
        //   119: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   122: ldc_w           "\n"
        //   125: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   128: aload           11
        //   130: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   133: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   136: astore          6
        //   138: aload           7
        //   140: ldc_w           "android.intent.extra.TEXT"
        //   143: aload           6
        //   145: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
        //   148: pop            
        //   149: aload           5
        //   151: ldc_w           "facebook"
        //   154: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   157: ifeq            399
        //   160: aload           9
        //   162: ifnull          387
        //   165: aload           12
        //   167: ifnull          387
        //   170: aload           7
        //   172: ldc_w           "image/*"
        //   175: invokevirtual   android/content/Intent.setType:(Ljava/lang/String;)Landroid/content/Intent;
        //   178: pop            
        //   179: aload           7
        //   181: ldc_w           "android.intent.extra.STREAM"
        //   184: aload           12
        //   186: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   189: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
        //   192: pop            
        //   193: aload_0        
        //   194: getfield        com/tapjoy/TJAdUnitJSBridge.context:Landroid/content/Context;
        //   197: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //   200: aload           7
        //   202: iconst_0       
        //   203: invokevirtual   android/content/pm/PackageManager.queryIntentActivities:(Landroid/content/Intent;I)Ljava/util/List;
        //   206: invokeinterface java/util/List.iterator:()Ljava/util/Iterator;
        //   211: astore          15
        //   213: aload           15
        //   215: invokeinterface java/util/Iterator.hasNext:()Z
        //   220: istore          16
        //   222: iconst_0       
        //   223: istore          17
        //   225: iload           16
        //   227: ifeq            303
        //   230: aload           15
        //   232: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   237: checkcast       Landroid/content/pm/ResolveInfo;
        //   240: astore          18
        //   242: aload           18
        //   244: getfield        android/content/pm/ResolveInfo.activityInfo:Landroid/content/pm/ActivityInfo;
        //   247: getfield        android/content/pm/ActivityInfo.packageName:Ljava/lang/String;
        //   250: getstatic       java/util/Locale.ENGLISH:Ljava/util/Locale;
        //   253: invokevirtual   java/lang/String.toLowerCase:(Ljava/util/Locale;)Ljava/lang/String;
        //   256: aload           5
        //   258: invokevirtual   java/lang/String.contains:(Ljava/lang/CharSequence;)Z
        //   261: ifne            286
        //   264: aload           18
        //   266: getfield        android/content/pm/ResolveInfo.activityInfo:Landroid/content/pm/ActivityInfo;
        //   269: getfield        android/content/pm/ActivityInfo.name:Ljava/lang/String;
        //   272: getstatic       java/util/Locale.ENGLISH:Ljava/util/Locale;
        //   275: invokevirtual   java/lang/String.toLowerCase:(Ljava/util/Locale;)Ljava/lang/String;
        //   278: aload           5
        //   280: invokevirtual   java/lang/String.contains:(Ljava/lang/CharSequence;)Z
        //   283: ifeq            213
        //   286: aload           7
        //   288: aload           18
        //   290: getfield        android/content/pm/ResolveInfo.activityInfo:Landroid/content/pm/ActivityInfo;
        //   293: getfield        android/content/pm/ActivityInfo.packageName:Ljava/lang/String;
        //   296: invokevirtual   android/content/Intent.setPackage:(Ljava/lang/String;)Landroid/content/Intent;
        //   299: pop            
        //   300: iconst_1       
        //   301: istore          17
        //   303: iload           17
        //   305: ifne            446
        //   308: iconst_1       
        //   309: anewarray       Ljava/lang/Object;
        //   312: astore          20
        //   314: aload           20
        //   316: iconst_0       
        //   317: getstatic       java/lang/Boolean.FALSE:Ljava/lang/Boolean;
        //   320: aastore        
        //   321: aload_0        
        //   322: aload_2        
        //   323: aload           20
        //   325: invokevirtual   com/tapjoy/TJAdUnitJSBridge.invokeJSCallback:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   328: return         
        //   329: astore          8
        //   331: ldc             "TJAdUnitJSBridge"
        //   333: ldc_w           "no imageURL"
        //   336: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   339: aconst_null    
        //   340: astore          9
        //   342: goto            42
        //   345: astore_3       
        //   346: iconst_1       
        //   347: anewarray       Ljava/lang/Object;
        //   350: astore          4
        //   352: aload           4
        //   354: iconst_0       
        //   355: getstatic       java/lang/Boolean.FALSE:Ljava/lang/Boolean;
        //   358: aastore        
        //   359: aload_0        
        //   360: aload_2        
        //   361: aload           4
        //   363: invokevirtual   com/tapjoy/TJAdUnitJSBridge.invokeJSCallback:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   366: aload_3        
        //   367: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   370: return         
        //   371: astore          10
        //   373: ldc             "TJAdUnitJSBridge"
        //   375: ldc_w           "no linkURL"
        //   378: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   381: aconst_null    
        //   382: astore          11
        //   384: goto            55
        //   387: aload           7
        //   389: ldc_w           "text/plain"
        //   392: invokevirtual   android/content/Intent.setType:(Ljava/lang/String;)Landroid/content/Intent;
        //   395: pop            
        //   396: goto            193
        //   399: aload           5
        //   401: ldc_w           "twitter"
        //   404: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   407: ifeq            193
        //   410: aload           7
        //   412: ldc_w           "*/*"
        //   415: invokevirtual   android/content/Intent.setType:(Ljava/lang/String;)Landroid/content/Intent;
        //   418: pop            
        //   419: aload           9
        //   421: ifnull          193
        //   424: aload           12
        //   426: ifnull          193
        //   429: aload           7
        //   431: ldc_w           "android.intent.extra.STREAM"
        //   434: aload           12
        //   436: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   439: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
        //   442: pop            
        //   443: goto            193
        //   446: aload_0        
        //   447: iconst_1       
        //   448: putfield        com/tapjoy/TJAdUnitJSBridge.didLaunchOtherActivity:Z
        //   451: aload_0        
        //   452: aload_2        
        //   453: putfield        com/tapjoy/TJAdUnitJSBridge.otherActivityCallbackID:Ljava/lang/String;
        //   456: aload           7
        //   458: ldc_w           "Select"
        //   461: invokestatic    android/content/Intent.createChooser:(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
        //   464: astore          21
        //   466: aload_0        
        //   467: getfield        com/tapjoy/TJAdUnitJSBridge.context:Landroid/content/Context;
        //   470: checkcast       Landroid/app/Activity;
        //   473: aload           21
        //   475: invokevirtual   android/app/Activity.startActivity:(Landroid/content/Intent;)V
        //   478: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      29     345    371    Ljava/lang/Exception;
        //  29     38     329    345    Ljava/lang/Exception;
        //  42     51     371    387    Ljava/lang/Exception;
        //  63     71     345    371    Ljava/lang/Exception;
        //  79     105    345    371    Ljava/lang/Exception;
        //  110    138    345    371    Ljava/lang/Exception;
        //  138    160    345    371    Ljava/lang/Exception;
        //  170    193    345    371    Ljava/lang/Exception;
        //  193    213    345    371    Ljava/lang/Exception;
        //  213    222    345    371    Ljava/lang/Exception;
        //  230    286    345    371    Ljava/lang/Exception;
        //  286    300    345    371    Ljava/lang/Exception;
        //  308    328    345    371    Ljava/lang/Exception;
        //  331    339    345    371    Ljava/lang/Exception;
        //  373    381    345    371    Ljava/lang/Exception;
        //  387    396    345    371    Ljava/lang/Exception;
        //  399    419    345    371    Ljava/lang/Exception;
        //  429    443    345    371    Ljava/lang/Exception;
        //  446    478    345    371    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0042:
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
    
    public void shouldClose(final JSONObject jsonObject, final String s) {
        while (true) {
            try {
                false;
                if (Boolean.valueOf(jsonObject.getString("close")) && this.context instanceof TJAdUnitView) {
                    ((Activity)this.context).finish();
                }
                this.invokeJSCallback(s, Boolean.TRUE);
                this.shouldClose = false;
            }
            catch (Exception ex) {
                this.invokeJSCallback(s, Boolean.FALSE);
                ((Activity)this.context).finish();
                ex.printStackTrace();
                continue;
            }
            break;
        }
    }
    
    @TargetApi(11)
    private class ShowWebView extends AsyncTask<Boolean, Void, Boolean[]>
    {
        WebView webView;
        
        public ShowWebView(final WebView webView) {
            super();
            this.webView = webView;
        }
        
        protected Boolean[] doInBackground(final Boolean... array) {
            return array;
        }
        
        protected void onPostExecute(final Boolean[] array) {
            ((Activity)TJAdUnitJSBridge.this.context).runOnUiThread((Runnable)new Runnable() {
                final /* synthetic */ boolean val$transparent = array[1];
                final /* synthetic */ boolean val$visible = array[0];
                
                @Override
                public void run() {
                    if (this.val$visible) {
                        ShowWebView.this.webView.setVisibility(0);
                        if (this.val$transparent) {
                            if (ShowWebView.this.webView.getParent() instanceof RelativeLayout) {
                                ((RelativeLayout)ShowWebView.this.webView.getParent()).getBackground().setAlpha(0);
                                ((RelativeLayout)ShowWebView.this.webView.getParent()).setBackgroundColor(0);
                            }
                            if (Build$VERSION.SDK_INT >= 11) {
                                ShowWebView.this.webView.setLayerType(1, (Paint)null);
                            }
                        }
                        else {
                            if (ShowWebView.this.webView.getParent() instanceof RelativeLayout) {
                                ((RelativeLayout)ShowWebView.this.webView.getParent()).getBackground().setAlpha(255);
                                ((RelativeLayout)ShowWebView.this.webView.getParent()).setBackgroundColor(-1);
                            }
                            if (Build$VERSION.SDK_INT >= 11) {
                                ShowWebView.this.webView.setLayerType(0, (Paint)null);
                            }
                        }
                    }
                    else {
                        ShowWebView.this.webView.setVisibility(4);
                        if (ShowWebView.this.webView.getParent() instanceof RelativeLayout) {
                            ((RelativeLayout)ShowWebView.this.webView.getParent()).getBackground().setAlpha(0);
                            ((RelativeLayout)ShowWebView.this.webView.getParent()).setBackgroundColor(0);
                        }
                    }
                }
            });
        }
    }
}
