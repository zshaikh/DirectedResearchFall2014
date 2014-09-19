package com.bitrhymes.nativeutils.localnotify;

import com.adobe.fre.*;
import android.util.*;
import com.bitrhymes.nativeutils.utils.*;
import android.app.*;
import java.util.*;
import android.content.*;

public class SetAlarmNotifications implements FREFunction
{
    public static int notificationcount;
    public final String TAG;
    
    static {
        SetAlarmNotifications.notificationcount = 0;
    }
    
    public SetAlarmNotifications() {
        super();
        this.TAG = "LocalNotification";
    }
    
    @Override
    public FREObject call(final FREContext p0, final FREObject[] p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: ldc             "SetAlarmNotifications-> FREObject call"
        //     3: invokevirtual   com/bitrhymes/nativeutils/localnotify/SetAlarmNotifications.debugLog:(Ljava/lang/String;)V
        //     6: new             Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;
        //     9: dup            
        //    10: invokespecial   com/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications.<init>:()V
        //    13: aload_1        
        //    14: invokevirtual   com/adobe/fre/FREContext.getActivity:()Landroid/app/Activity;
        //    17: invokevirtual   android/app/Activity.getBaseContext:()Landroid/content/Context;
        //    20: invokevirtual   com/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications.clearAlarms:(Landroid/content/Context;)V
        //    23: aload_2        
        //    24: iconst_0       
        //    25: aaload         
        //    26: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    29: astore          5
        //    31: aload_2        
        //    32: iconst_1       
        //    33: aaload         
        //    34: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    37: astore          6
        //    39: aload_2        
        //    40: iconst_2       
        //    41: aaload         
        //    42: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    45: astore          7
        //    47: aload_2        
        //    48: iconst_3       
        //    49: aaload         
        //    50: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    53: astore          8
        //    55: aload_0        
        //    56: aload_1        
        //    57: invokevirtual   com/adobe/fre/FREContext.getActivity:()Landroid/app/Activity;
        //    60: invokevirtual   android/app/Activity.getApplicationContext:()Landroid/content/Context;
        //    63: aload           5
        //    65: aload           6
        //    67: aload           7
        //    69: aload           8
        //    71: invokevirtual   com/bitrhymes/nativeutils/localnotify/SetAlarmNotifications.startAlarms:(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
        //    74: aconst_null    
        //    75: areturn        
        //    76: astore_3       
        //    77: aload_0        
        //    78: new             Ljava/lang/StringBuilder;
        //    81: dup            
        //    82: ldc             "Error while clearing alarm:"
        //    84: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    87: aload_3        
        //    88: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //    91: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    94: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    97: invokevirtual   com/bitrhymes/nativeutils/localnotify/SetAlarmNotifications.debugLog:(Ljava/lang/String;)V
        //   100: goto            23
        //   103: astore          4
        //   105: aload_1        
        //   106: ldc             "ERROR_EVENT"
        //   108: new             Ljava/lang/StringBuilder;
        //   111: dup            
        //   112: aload           4
        //   114: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   117: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   120: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   123: ldc             ","
        //   125: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   128: aload           4
        //   130: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   133: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   136: ldc             ","
        //   138: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   141: aload           4
        //   143: invokevirtual   java/lang/Exception.getLocalizedMessage:()Ljava/lang/String;
        //   146: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   149: ldc             ","
        //   151: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   154: aload           4
        //   156: invokestatic    com/bitrhymes/nativeutils/utils/Utils.getExceptionStackTraceAsString:(Ljava/lang/Exception;)Ljava/lang/String;
        //   159: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   162: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   165: invokevirtual   com/adobe/fre/FREContext.dispatchStatusEventAsync:(Ljava/lang/String;Ljava/lang/String;)V
        //   168: aload           4
        //   170: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   173: goto            74
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  6      23     76     103    Ljava/lang/Exception;
        //  23     74     103    176    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0023:
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
    
    public void debugLog(final String s) {
        Log.d("LocalNotification", s);
    }
    
    public void startAlarms(final Context context, final String s, final String s2, final String s3, final String s4) {
        this.debugLog("startAlarms clicked");
        AlarmReceiver.notificationcount = 0;
        final Intent intent = new Intent(context, (Class)AlarmReceiver.class);
        intent.setClass(context, (Class)AlarmReceiver.class);
        intent.putExtra("src_title", s);
        intent.putExtra("src_scroll", s2);
        intent.putExtra("src_text", s3);
        intent.putExtra("src_package", s4);
        int i = 1;
        while (i <= 100) {
            final PendingIntent broadcast = PendingIntent.getBroadcast(context, Utils.requestCode1 + i * 10, intent, 134217728);
            final AlarmManager alarmManager = (AlarmManager)context.getSystemService("alarm");
            final int j = i * 24;
            final Calendar instance = Calendar.getInstance();
            instance.add(10, j);
            Log.i("LocalNotification", "dd:" + instance.get(5) + "-mm:" + (1 + instance.get(2)) + "-yy:" + instance.get(1));
            alarmManager.set(1, instance.getTimeInMillis(), broadcast);
            final SharedPreferences$Editor edit = context.getSharedPreferences("local-notification", 0).edit();
            edit.putBoolean(new StringBuilder().append(j).toString(), false);
            edit.commit();
            Log.i("LocalNotification", "alaram set : ");
            if (i < 3) {
                i = 3;
            }
            else if (i < 5) {
                i = 5;
            }
            else {
                i += 5;
            }
        }
    }
}
