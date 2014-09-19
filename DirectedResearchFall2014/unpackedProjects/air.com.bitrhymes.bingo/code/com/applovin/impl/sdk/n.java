package com.applovin.impl.sdk;

import android.net.*;
import com.applovin.sdk.*;
import java.util.concurrent.atomic.*;
import java.util.concurrent.*;
import android.content.*;
import android.provider.*;
import java.util.*;
import android.os.*;
import android.telephony.*;
import java.net.*;
import android.content.pm.*;
import java.io.*;
import android.graphics.drawable.*;
import android.graphics.*;

class n
{
    public static final Uri a;
    protected static List b;
    protected final AppLovinSdkImpl c;
    protected final Context d;
    protected final AppLovinLogger e;
    
    static {
        a = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
        n.b = new ArrayList();
    }
    
    n(final AppLovinSdkImpl c) {
        super();
        if (c == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.c = c;
        this.e = c.getLogger();
        this.d = c.getApplicationContext();
    }
    
    static boolean a(final String s, final Context context) {
        if (s == null) {
            throw new IllegalArgumentException("No permission name specified");
        }
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return context.getPackageManager().checkPermission(s, context.getPackageName()) == 0;
    }
    
    private String h() {
        final AtomicReference<String> atomicReference = new AtomicReference<String>();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        new p(this, "AppLovinCollectCpuSpeed", atomicReference, countDownLatch).start();
        while (true) {
            try {
                countDownLatch.await(2L, TimeUnit.SECONDS);
                final String s = atomicReference.get();
                if (s != null && s.length() > 0) {
                    final String lowerCase = s.trim().toLowerCase();
                    final int index = lowerCase.indexOf("bogomips");
                    if (index >= 0) {
                        final int n = index + 11;
                        final int index2 = lowerCase.indexOf(10, n);
                        if (index2 > 0) {
                            return lowerCase.substring(n, index2);
                        }
                    }
                }
                return "";
            }
            catch (InterruptedException ex) {
                continue;
            }
            break;
        }
    }
    
    List a() {
        final Intent intent = new Intent("android.intent.action.MAIN", (Uri)null);
        intent.addCategory("android.intent.category.LAUNCHER");
        final List queryIntentActivities = this.d.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities != null && !queryIntentActivities.isEmpty()) {
            if (n.b.size() == queryIntentActivities.size() && n.b.size() > 0 && n.b.get(0).a.equals(queryIntentActivities.get(0).activityInfo.name)) {
                return new ArrayList(n.b);
            }
            final ArrayList b = new ArrayList<q>(queryIntentActivities.size());
            final HashSet<String> set = new HashSet<String>();
            for (final ResolveInfo obj : queryIntentActivities) {
                try {
                    final long lastModified = new File(obj.activityInfo.applicationInfo.sourceDir).lastModified();
                    final q q = new q();
                    q.c = bc.b(obj.activityInfo.packageName, this.c);
                    q.d = lastModified;
                    q.a = obj.activityInfo.name;
                    if (set.contains(q.c)) {
                        continue;
                    }
                    b.add(q);
                    set.add(q.c);
                }
                catch (Throwable t) {
                    this.e.w("DataCollector", "Unable to read information for app \"" + obj + "\"", t);
                }
            }
            try {
                Collections.sort((List<Object>)b, new o(this));
                return n.b = b;
            }
            catch (Throwable t2) {
                this.e.w("DataCollector", "Unable to sort applications", t2);
                return n.b = b;
            }
        }
        return Collections.emptyList();
    }
    
    boolean a(final String s) {
        return a(s, this.d);
    }
    
    r b() {
        final r r = new r();
        r.a = this.f();
        r.b = Settings$Secure.getString(this.d.getContentResolver(), "android_id");
        r.j = this.h();
        r.k = Locale.getDefault();
        r.d = Build.MODEL;
        r.e = Build$VERSION.RELEASE;
        r.f = Build.MANUFACTURER;
        r.g = Build$VERSION.SDK_INT;
        while (true) {
            if (!this.a("android.permission.READ_PHONE_STATE")) {
                break Label_0133;
            }
            final TelephonyManager telephonyManager = (TelephonyManager)this.d.getSystemService("phone");
            if (telephonyManager == null) {
                break Label_0133;
            }
            r.h = telephonyManager.getSimCountryIso().toUpperCase();
            final String networkOperatorName = telephonyManager.getNetworkOperatorName();
            try {
                r.i = URLEncoder.encode(networkOperatorName, "UTF-8");
                final String d = this.d();
                if (d != null && d.length() > 1) {
                    r.c = d;
                }
                return r;
            }
            catch (UnsupportedEncodingException ex) {
                r.i = networkOperatorName;
                continue;
            }
            break;
        }
    }
    
    q c() {
        final ApplicationInfo applicationInfo = this.d.getApplicationInfo();
        final long lastModified = new File(applicationInfo.sourceDir).lastModified();
        final PackageManager packageManager = this.d.getPackageManager();
        while (true) {
            try {
                final PackageInfo packageInfo = packageManager.getPackageInfo(this.d.getPackageName(), 0);
                final q q = new q();
                q.c = applicationInfo.packageName;
                q.d = lastModified;
                q.a = String.valueOf(packageManager.getApplicationLabel(applicationInfo));
                String versionName;
                if (packageInfo != null) {
                    versionName = packageInfo.versionName;
                }
                else {
                    versionName = "";
                }
                q.b = versionName;
                return q;
            }
            catch (PackageManager$NameNotFoundException ex) {
                final PackageInfo packageInfo = null;
                continue;
            }
            break;
        }
    }
    
    String d() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     1: anewarray       Ljava/lang/String;
        //     4: dup            
        //     5: iconst_0       
        //     6: ldc_w           "aid"
        //     9: aastore        
        //    10: astore_1       
        //    11: aload_0        
        //    12: getfield        com/applovin/impl/sdk/n.d:Landroid/content/Context;
        //    15: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    18: getstatic       com/applovin/impl/sdk/n.a:Landroid/net/Uri;
        //    21: aload_1        
        //    22: aconst_null    
        //    23: aconst_null    
        //    24: aconst_null    
        //    25: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    28: astore          8
        //    30: aload           8
        //    32: astore          6
        //    34: aload           6
        //    36: ifnull          153
        //    39: aload           6
        //    41: invokeinterface android/database/Cursor.moveToFirst:()Z
        //    46: ifeq            153
        //    49: aload           6
        //    51: aload           6
        //    53: ldc_w           "aid"
        //    56: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    61: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    66: astore          13
        //    68: aload           13
        //    70: astore          9
        //    72: aload           6
        //    74: ifnull          84
        //    77: aload           6
        //    79: invokeinterface android/database/Cursor.close:()V
        //    84: aload           9
        //    86: areturn        
        //    87: astore          10
        //    89: aload           9
        //    91: areturn        
        //    92: astore          5
        //    94: aconst_null    
        //    95: astore          6
        //    97: aload           6
        //    99: ifnull          109
        //   102: aload           6
        //   104: invokeinterface android/database/Cursor.close:()V
        //   109: ldc             ""
        //   111: areturn        
        //   112: astore          7
        //   114: ldc             ""
        //   116: areturn        
        //   117: astore_2       
        //   118: aconst_null    
        //   119: astore_3       
        //   120: aload_3        
        //   121: ifnull          130
        //   124: aload_3        
        //   125: invokeinterface android/database/Cursor.close:()V
        //   130: aload_2        
        //   131: athrow         
        //   132: astore          4
        //   134: goto            130
        //   137: astore          12
        //   139: aload           6
        //   141: astore_3       
        //   142: aload           12
        //   144: astore_2       
        //   145: goto            120
        //   148: astore          11
        //   150: goto            97
        //   153: ldc             ""
        //   155: astore          9
        //   157: goto            72
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      30     92     97     Ljava/lang/Exception;
        //  0      30     117    120    Any
        //  39     68     148    153    Ljava/lang/Exception;
        //  39     68     137    148    Any
        //  77     84     87     92     Ljava/lang/Throwable;
        //  102    109    112    117    Ljava/lang/Throwable;
        //  124    130    132    137    Ljava/lang/Throwable;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0072:
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
    
    byte[] e() {
        final Drawable applicationIcon = this.d.getPackageManager().getApplicationIcon(this.d.getApplicationInfo());
        if (applicationIcon instanceof BitmapDrawable) {
            try {
                final Bitmap bitmap = ((BitmapDrawable)applicationIcon).getBitmap();
                final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap$CompressFormat.JPEG, 100, (OutputStream)byteArrayOutputStream);
                return byteArrayOutputStream.toByteArray();
            }
            catch (Exception ex) {
                this.e.e("DataCollector", "Unable to create an app icon", ex);
            }
        }
        return null;
    }
    
    String f() {
        if (this.a("android.permission.READ_PHONE_STATE")) {
            final TelephonyManager telephonyManager = (TelephonyManager)this.d.getSystemService("phone");
            if (telephonyManager != null) {
                return telephonyManager.getDeviceId();
            }
        }
        return "";
    }
    
    boolean g() {
        return Settings$Secure.getInt(this.d.getContentResolver(), "install_non_market_apps", 0) != 0;
    }
}
