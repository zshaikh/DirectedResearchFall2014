package com.fiksu.asotracking;

import java.util.*;
import android.content.*;

public class EventTracker
{
    private static Context mCachedContext;
    protected Context mContext;
    private final HashMap<String, String> mParameters;
    
    static {
        EventTracker.mCachedContext = null;
    }
    
    public EventTracker(final Context context, final String s) {
        super();
        this.mContext = null;
        FiksuConfigurationManager.getInstance().updateConfiguration(context);
        this.mParameters = new HashMap<String, String>();
        this.addParameter(FiksuEventParameter.EVENT, s);
        if (context != null) {
            EventTracker.mCachedContext = context;
            this.mContext = context;
            return;
        }
        this.mContext = EventTracker.mCachedContext;
    }
    
    protected static void c2dMessageReceived(final Context context) {
        new Thread(new C2DMessageTimeSaver(context)).start();
    }
    
    private HashMap<String, String> copyOfParams() {
        return new HashMap<String, String>(this.mParameters);
    }
    
    protected static SharedPreferences getOurSharedPreferences(final Context context) {
        if (context == null) {
            return null;
        }
        return context.getSharedPreferences("FiksuSharedPreferences", 0);
    }
    
    protected void addParameter(final FiksuEventParameter fiksuEventParameter, final String value) {
        this.mParameters.put(fiksuEventParameter.getName(), value);
    }
    
    protected void uploadEvent() {
        new Thread(new EventUploader(this.mContext, this.copyOfParams())).start();
    }
    
    protected void uploadEventSynchronously(final long p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Lcom/fiksu/asotracking/EventUploader;
        //     3: dup            
        //     4: aload_0        
        //     5: getfield        com/fiksu/asotracking/EventTracker.mContext:Landroid/content/Context;
        //     8: aload_0        
        //     9: invokespecial   com/fiksu/asotracking/EventTracker.copyOfParams:()Ljava/util/HashMap;
        //    12: invokespecial   com/fiksu/asotracking/EventUploader.<init>:(Landroid/content/Context;Ljava/util/Map;)V
        //    15: astore_3       
        //    16: aload_3        
        //    17: monitorenter   
        //    18: new             Ljava/lang/Thread;
        //    21: dup            
        //    22: aload_3        
        //    23: invokespecial   java/lang/Thread.<init>:(Ljava/lang/Runnable;)V
        //    26: invokevirtual   java/lang/Thread.start:()V
        //    29: aload_3        
        //    30: lload_1        
        //    31: invokevirtual   java/lang/Object.wait:(J)V
        //    34: aload_3        
        //    35: monitorexit    
        //    36: return         
        //    37: astore          4
        //    39: aload_3        
        //    40: monitorexit    
        //    41: aload           4
        //    43: athrow         
        //    44: astore          5
        //    46: goto            34
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  18     29     37     44     Any
        //  29     34     44     49     Ljava/lang/InterruptedException;
        //  29     34     37     44     Any
        //  34     36     37     44     Any
        //  39     41     37     44     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0034:
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
    
    private static final class C2DMessageTimeSaver implements Runnable
    {
        private final Context mContext;
        
        C2DMessageTimeSaver(final Context mContext) {
            super();
            this.mContext = mContext;
        }
        
        @Override
        public void run() {
            synchronized (FiksuConstants.SHARED_PREFERENCES_LOCK) {
                final SharedPreferences ourSharedPreferences = EventTracker.getOurSharedPreferences(this.mContext);
                if (ourSharedPreferences == null) {
                    return;
                }
                final Date date = new Date();
                final SharedPreferences$Editor edit = ourSharedPreferences.edit();
                edit.putLong("Fiksu.cd2MessageTime", date.getTime());
                edit.commit();
            }
        }
    }
}
