package com.facebook;

import android.content.*;
import java.util.*;

class AppEventsLogger$PersistedEvents
{
    static final String PERSISTED_EVENTS_FILENAME = "AppEventsLogger.persistedevents";
    private static Object staticLock;
    private Context context;
    private HashMap<AppEventsLogger$AccessTokenAppIdPair, List<AppEventsLogger$AppEvent>> persistedEvents;
    
    static {
        AppEventsLogger$PersistedEvents.staticLock = new Object();
    }
    
    private AppEventsLogger$PersistedEvents(final Context context) {
        super();
        this.persistedEvents = new HashMap<AppEventsLogger$AccessTokenAppIdPair, List<AppEventsLogger$AppEvent>>();
        this.context = context;
    }
    
    public static void persistEvents(final Context context, final AppEventsLogger$AccessTokenAppIdPair appEventsLogger$AccessTokenAppIdPair, final AppEventsLogger$SessionEventsState appEventsLogger$SessionEventsState) {
        final HashMap<AppEventsLogger$AccessTokenAppIdPair, AppEventsLogger$SessionEventsState> hashMap = new HashMap<AppEventsLogger$AccessTokenAppIdPair, AppEventsLogger$SessionEventsState>();
        hashMap.put(appEventsLogger$AccessTokenAppIdPair, appEventsLogger$SessionEventsState);
        persistEvents(context, hashMap);
    }
    
    public static void persistEvents(final Context context, final Map<AppEventsLogger$AccessTokenAppIdPair, AppEventsLogger$SessionEventsState> map) {
        final AppEventsLogger$PersistedEvents andClearStore;
        synchronized (AppEventsLogger$PersistedEvents.staticLock) {
            andClearStore = readAndClearStore(context);
            for (final Map.Entry<AppEventsLogger$AccessTokenAppIdPair, AppEventsLogger$SessionEventsState> entry : map.entrySet()) {
                final List<AppEventsLogger$AppEvent> eventsToPersist = entry.getValue().getEventsToPersist();
                if (eventsToPersist.size() != 0) {
                    andClearStore.addEvents(entry.getKey(), eventsToPersist);
                }
            }
        }
        andClearStore.write();
    }
    // monitorexit(o)
    
    public static AppEventsLogger$PersistedEvents readAndClearStore(final Context context) {
        synchronized (AppEventsLogger$PersistedEvents.staticLock) {
            final AppEventsLogger$PersistedEvents appEventsLogger$PersistedEvents = new AppEventsLogger$PersistedEvents(context);
            appEventsLogger$PersistedEvents.readAndClearStore();
            return appEventsLogger$PersistedEvents;
        }
    }
    
    private void readAndClearStore() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: new             Ljava/io/ObjectInputStream;
        //     5: dup            
        //     6: new             Ljava/io/BufferedInputStream;
        //     9: dup            
        //    10: aload_0        
        //    11: getfield        com/facebook/AppEventsLogger$PersistedEvents.context:Landroid/content/Context;
        //    14: ldc             "AppEventsLogger.persistedevents"
        //    16: invokevirtual   android/content/Context.openFileInput:(Ljava/lang/String;)Ljava/io/FileInputStream;
        //    19: invokespecial   java/io/BufferedInputStream.<init>:(Ljava/io/InputStream;)V
        //    22: invokespecial   java/io/ObjectInputStream.<init>:(Ljava/io/InputStream;)V
        //    25: astore_2       
        //    26: aload_2        
        //    27: invokevirtual   java/io/ObjectInputStream.readObject:()Ljava/lang/Object;
        //    30: checkcast       Ljava/util/HashMap;
        //    33: astore          7
        //    35: aload_0        
        //    36: getfield        com/facebook/AppEventsLogger$PersistedEvents.context:Landroid/content/Context;
        //    39: ldc             "AppEventsLogger.persistedevents"
        //    41: invokevirtual   android/content/Context.getFileStreamPath:(Ljava/lang/String;)Ljava/io/File;
        //    44: invokevirtual   java/io/File.delete:()Z
        //    47: pop            
        //    48: aload_0        
        //    49: aload           7
        //    51: putfield        com/facebook/AppEventsLogger$PersistedEvents.persistedEvents:Ljava/util/HashMap;
        //    54: aload_2        
        //    55: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //    58: return         
        //    59: astore          11
        //    61: aload_1        
        //    62: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //    65: return         
        //    66: astore          10
        //    68: aconst_null    
        //    69: astore_2       
        //    70: aload           10
        //    72: astore          4
        //    74: invokestatic    com/facebook/AppEventsLogger.access$800:()Ljava/lang/String;
        //    77: new             Ljava/lang/StringBuilder;
        //    80: dup            
        //    81: ldc             "Got unexpected exception: "
        //    83: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    86: aload           4
        //    88: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //    91: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    94: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    97: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   100: pop            
        //   101: aload_2        
        //   102: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   105: return         
        //   106: astore          9
        //   108: aconst_null    
        //   109: astore_2       
        //   110: aload           9
        //   112: astore          5
        //   114: aload_2        
        //   115: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   118: aload           5
        //   120: athrow         
        //   121: astore          5
        //   123: goto            114
        //   126: astore          4
        //   128: goto            74
        //   131: astore_3       
        //   132: aload_2        
        //   133: astore_1       
        //   134: goto            61
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  2      26     59     61     Ljava/io/FileNotFoundException;
        //  2      26     66     74     Ljava/lang/Exception;
        //  2      26     106    114    Any
        //  26     54     131    137    Ljava/io/FileNotFoundException;
        //  26     54     126    131    Ljava/lang/Exception;
        //  26     54     121    126    Any
        //  74     101    121    126    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0061:
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
    
    private void write() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/io/ObjectOutputStream;
        //     3: dup            
        //     4: new             Ljava/io/BufferedOutputStream;
        //     7: dup            
        //     8: aload_0        
        //     9: getfield        com/facebook/AppEventsLogger$PersistedEvents.context:Landroid/content/Context;
        //    12: ldc             "AppEventsLogger.persistedevents"
        //    14: iconst_0       
        //    15: invokevirtual   android/content/Context.openFileOutput:(Ljava/lang/String;I)Ljava/io/FileOutputStream;
        //    18: invokespecial   java/io/BufferedOutputStream.<init>:(Ljava/io/OutputStream;)V
        //    21: invokespecial   java/io/ObjectOutputStream.<init>:(Ljava/io/OutputStream;)V
        //    24: astore_1       
        //    25: aload_1        
        //    26: aload_0        
        //    27: getfield        com/facebook/AppEventsLogger$PersistedEvents.persistedEvents:Ljava/util/HashMap;
        //    30: invokevirtual   java/io/ObjectOutputStream.writeObject:(Ljava/lang/Object;)V
        //    33: aload_1        
        //    34: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //    37: return         
        //    38: astore          6
        //    40: aconst_null    
        //    41: astore_1       
        //    42: aload           6
        //    44: astore_2       
        //    45: invokestatic    com/facebook/AppEventsLogger.access$800:()Ljava/lang/String;
        //    48: new             Ljava/lang/StringBuilder;
        //    51: dup            
        //    52: ldc             "Got unexpected exception: "
        //    54: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    57: aload_2        
        //    58: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //    61: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    64: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    67: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    70: pop            
        //    71: aload_1        
        //    72: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //    75: return         
        //    76: astore          5
        //    78: aconst_null    
        //    79: astore_1       
        //    80: aload           5
        //    82: astore_3       
        //    83: aload_1        
        //    84: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //    87: aload_3        
        //    88: athrow         
        //    89: astore_3       
        //    90: goto            83
        //    93: astore_2       
        //    94: goto            45
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      25     38     45     Ljava/lang/Exception;
        //  0      25     76     83     Any
        //  25     33     93     97     Ljava/lang/Exception;
        //  25     33     89     93     Any
        //  45     71     89     93     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0045:
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
    
    public void addEvents(final AppEventsLogger$AccessTokenAppIdPair key, final List<AppEventsLogger$AppEvent> list) {
        if (!this.persistedEvents.containsKey(key)) {
            this.persistedEvents.put(key, new ArrayList<AppEventsLogger$AppEvent>());
        }
        this.persistedEvents.get(key).addAll(list);
    }
    
    public List<AppEventsLogger$AppEvent> getEvents(final AppEventsLogger$AccessTokenAppIdPair key) {
        return this.persistedEvents.get(key);
    }
    
    public Set<AppEventsLogger$AccessTokenAppIdPair> keySet() {
        return this.persistedEvents.keySet();
    }
}
