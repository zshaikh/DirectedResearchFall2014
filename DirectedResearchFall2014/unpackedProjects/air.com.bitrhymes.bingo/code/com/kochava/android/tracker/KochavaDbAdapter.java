package com.kochava.android.tracker;

import android.content.*;
import org.json.*;
import android.database.sqlite.*;
import android.util.*;

public class KochavaDbAdapter
{
    private static final String DATABASE_CREATE = "CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL,created_at INTEGER NOT NULL);";
    private static final String DATABASE_CREATE_2 = "CREATE TABLE keys (id STRING NOT NULL PRIMARY KEY, data STRING NOT NULL);";
    private static final String DATABASE_INDEX = "CREATE INDEX IF NOT EXISTS time_idx ON events (created_at);";
    private static final String DATABASE_NAME = "KochavaFeatureTracker";
    private static final String DATABASE_TABLE = "events";
    private static final String DATABASE_TABLE_2 = "keys";
    private static final int DATABASE_VERSION = 2;
    public static final String KEY_CREATED_AT = "created_at";
    public static final String KEY_DATA = "data";
    private static final String LOGTAG = "KochavaDbAdapter";
    private KochavaDatabaseHelper kDb;
    
    public KochavaDbAdapter(final Context context) {
        super();
        this.kDb = new KochavaDatabaseHelper(context);
    }
    
    public int addEvent(final JSONObject p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //     5: ifeq            16
        //     8: ldc             "KochavaDbAdapter"
        //    10: ldc             "addEvent"
        //    12: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    15: pop            
        //    16: aconst_null    
        //    17: astore_3       
        //    18: iconst_m1      
        //    19: istore          4
        //    21: aload_0        
        //    22: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //    25: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.getWritableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //    28: astore          8
        //    30: new             Landroid/content/ContentValues;
        //    33: dup            
        //    34: invokespecial   android/content/ContentValues.<init>:()V
        //    37: astore          9
        //    39: aload           9
        //    41: ldc             "data"
        //    43: aload_1        
        //    44: invokevirtual   org/json/JSONObject.toString:()Ljava/lang/String;
        //    47: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //    50: aload           9
        //    52: ldc             "created_at"
        //    54: invokestatic    java/lang/System.currentTimeMillis:()J
        //    57: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //    60: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //    63: aload           8
        //    65: ldc             "events"
        //    67: aconst_null    
        //    68: aload           9
        //    70: invokevirtual   android/database/sqlite/SQLiteDatabase.insert:(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
        //    73: pop2           
        //    74: aload           8
        //    76: ldc             "SELECT * FROM events"
        //    78: aconst_null    
        //    79: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //    82: astore_3       
        //    83: aload_3        
        //    84: invokeinterface android/database/Cursor.getCount:()I
        //    89: istore          12
        //    91: iload           12
        //    93: istore          4
        //    95: aload_0        
        //    96: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //    99: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //   102: aload_3        
        //   103: ifnull          112
        //   106: aload_3        
        //   107: invokeinterface android/database/Cursor.close:()V
        //   112: aload_0        
        //   113: monitorexit    
        //   114: iload           4
        //   116: ireturn        
        //   117: astore          6
        //   119: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //   122: ifeq            135
        //   125: ldc             "KochavaDbAdapter"
        //   127: ldc             "addEvent"
        //   129: aload           6
        //   131: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   134: pop            
        //   135: aload_0        
        //   136: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //   139: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //   142: aload_3        
        //   143: ifnull          112
        //   146: aload_3        
        //   147: invokeinterface android/database/Cursor.close:()V
        //   152: goto            112
        //   155: astore_2       
        //   156: aload_0        
        //   157: monitorexit    
        //   158: aload_2        
        //   159: athrow         
        //   160: astore          5
        //   162: aload_0        
        //   163: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //   166: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //   169: aload_3        
        //   170: ifnull          179
        //   173: aload_3        
        //   174: invokeinterface android/database/Cursor.close:()V
        //   179: aload           5
        //   181: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  2      16     155    160    Any
        //  21     91     117    155    Landroid/database/sqlite/SQLiteException;
        //  21     91     160    182    Any
        //  95     102    155    160    Any
        //  106    112    155    160    Any
        //  112    114    155    160    Any
        //  119    135    160    182    Any
        //  135    142    155    160    Any
        //  146    152    155    160    Any
        //  156    158    155    160    Any
        //  162    169    155    160    Any
        //  173    179    155    160    Any
        //  179    182    155    160    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0112:
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
    
    public void cleanupEvents(final long p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //     5: ifeq            16
        //     8: ldc             "KochavaDbAdapter"
        //    10: ldc             "cleanupEvent"
        //    12: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    15: pop            
        //    16: aload_0        
        //    17: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //    20: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.getWritableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //    23: ldc             "events"
        //    25: new             Ljava/lang/StringBuilder;
        //    28: dup            
        //    29: ldc             "created_at <= "
        //    31: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    34: lload_1        
        //    35: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //    38: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    41: aconst_null    
        //    42: invokevirtual   android/database/sqlite/SQLiteDatabase.delete:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
        //    45: pop            
        //    46: aload_0        
        //    47: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //    50: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //    53: aload_0        
        //    54: monitorexit    
        //    55: return         
        //    56: astore          5
        //    58: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //    61: ifeq            74
        //    64: ldc             "KochavaDbAdapter"
        //    66: ldc             "cleanupEvents"
        //    68: aload           5
        //    70: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //    73: pop            
        //    74: aload_0        
        //    75: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //    78: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //    81: goto            53
        //    84: astore_3       
        //    85: aload_0        
        //    86: monitorexit    
        //    87: aload_3        
        //    88: athrow         
        //    89: astore          4
        //    91: aload_0        
        //    92: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //    95: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //    98: aload           4
        //   100: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  2      16     84     89     Any
        //  16     46     56     84     Landroid/database/sqlite/SQLiteException;
        //  16     46     89     101    Any
        //  46     53     84     89     Any
        //  53     55     84     89     Any
        //  58     74     89     101    Any
        //  74     81     84     89     Any
        //  85     87     84     89     Any
        //  91     101    84     89     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0016:
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
    
    public String generateDataString() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aconst_null    
        //     3: astore_1       
        //     4: aconst_null    
        //     5: astore_2       
        //     6: aload_0        
        //     7: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //    10: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.getReadableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //    13: ldc             "SELECT * FROM events ORDER BY created_at ASC"
        //    15: aconst_null    
        //    16: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //    19: astore_1       
        //    20: new             Lorg/json/JSONArray;
        //    23: dup            
        //    24: invokespecial   org/json/JSONArray.<init>:()V
        //    27: astore          9
        //    29: aload_1        
        //    30: invokeinterface android/database/Cursor.moveToNext:()Z
        //    35: ifne            156
        //    38: aload           9
        //    40: invokevirtual   org/json/JSONArray.length:()I
        //    43: istore          13
        //    45: aconst_null    
        //    46: astore          6
        //    48: iload           13
        //    50: ifle            99
        //    53: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //    56: ifeq            85
        //    59: ldc             "KochavaDbAdapter"
        //    61: new             Ljava/lang/StringBuilder;
        //    64: dup            
        //    65: ldc             "[JSON DATA VER 4] : "
        //    67: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    70: aload           9
        //    72: invokevirtual   org/json/JSONArray.toString:()Ljava/lang/String;
        //    75: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    78: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    81: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    84: pop            
        //    85: aload           9
        //    87: invokevirtual   org/json/JSONArray.toString:()Ljava/lang/String;
        //    90: invokestatic    com/kochava/android/util/Base64Coder.encodeString:(Ljava/lang/String;)Ljava/lang/String;
        //    93: astore          14
        //    95: aload           14
        //    97: astore          6
        //    99: aload_0        
        //   100: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //   103: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //   106: aload_1        
        //   107: ifnull          116
        //   110: aload_1        
        //   111: invokeinterface android/database/Cursor.close:()V
        //   116: aload_2        
        //   117: ifnull          290
        //   120: aload           6
        //   122: ifnull          290
        //   125: new             Ljava/lang/StringBuilder;
        //   128: dup            
        //   129: aload_2        
        //   130: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   133: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   136: ldc             "="
        //   138: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   141: aload           6
        //   143: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   146: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   149: astore          7
        //   151: aload_0        
        //   152: monitorexit    
        //   153: aload           7
        //   155: areturn        
        //   156: aload_1        
        //   157: invokeinterface android/database/Cursor.isLast:()Z
        //   162: ifeq            184
        //   165: aload_1        
        //   166: aload_1        
        //   167: ldc             "created_at"
        //   169: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   174: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   179: astore          12
        //   181: aload           12
        //   183: astore_2       
        //   184: aload           9
        //   186: new             Lorg/json/JSONObject;
        //   189: dup            
        //   190: aload_1        
        //   191: aload_1        
        //   192: ldc             "data"
        //   194: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   199: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   204: invokespecial   org/json/JSONObject.<init>:(Ljava/lang/String;)V
        //   207: invokevirtual   org/json/JSONArray.put:(Ljava/lang/Object;)Lorg/json/JSONArray;
        //   210: pop            
        //   211: goto            29
        //   214: astore          10
        //   216: goto            29
        //   219: astore          5
        //   221: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //   224: ifeq            237
        //   227: ldc             "KochavaDbAdapter"
        //   229: ldc             "generateDataString"
        //   231: aload           5
        //   233: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   236: pop            
        //   237: aload_0        
        //   238: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //   241: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //   244: aconst_null    
        //   245: astore          6
        //   247: aload_1        
        //   248: ifnull          116
        //   251: aload_1        
        //   252: invokeinterface android/database/Cursor.close:()V
        //   257: aconst_null    
        //   258: astore          6
        //   260: goto            116
        //   263: astore          4
        //   265: aload_0        
        //   266: monitorexit    
        //   267: aload           4
        //   269: athrow         
        //   270: astore_3       
        //   271: aload_0        
        //   272: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //   275: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //   278: aload_1        
        //   279: ifnull          288
        //   282: aload_1        
        //   283: invokeinterface android/database/Cursor.close:()V
        //   288: aload_3        
        //   289: athrow         
        //   290: aload_0        
        //   291: monitorexit    
        //   292: aconst_null    
        //   293: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  6      29     219    263    Landroid/database/sqlite/SQLiteException;
        //  6      29     270    290    Any
        //  29     45     219    263    Landroid/database/sqlite/SQLiteException;
        //  29     45     270    290    Any
        //  53     85     219    263    Landroid/database/sqlite/SQLiteException;
        //  53     85     270    290    Any
        //  85     95     219    263    Landroid/database/sqlite/SQLiteException;
        //  85     95     270    290    Any
        //  99     106    263    270    Any
        //  110    116    263    270    Any
        //  125    153    263    270    Any
        //  156    181    219    263    Landroid/database/sqlite/SQLiteException;
        //  156    181    270    290    Any
        //  184    211    214    219    Lorg/json/JSONException;
        //  184    211    219    263    Landroid/database/sqlite/SQLiteException;
        //  184    211    270    290    Any
        //  221    237    270    290    Any
        //  237    244    263    270    Any
        //  251    257    263    270    Any
        //  265    267    263    270    Any
        //  271    278    263    270    Any
        //  282    288    263    270    Any
        //  288    290    263    270    Any
        //  290    292    263    270    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0099:
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
    
    public String getApplicationData(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_1        
        //     3: ifnull          16
        //     6: aload_1        
        //     7: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //    10: invokevirtual   java/lang/String.length:()I
        //    13: ifne            21
        //    16: aload_0        
        //    17: monitorexit    
        //    18: ldc             ""
        //    20: areturn        
        //    21: aconst_null    
        //    22: astore_3       
        //    23: aload_0        
        //    24: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //    27: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.getReadableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //    30: new             Ljava/lang/StringBuilder;
        //    33: dup            
        //    34: ldc             "SELECT * FROM keys WHERE id='"
        //    36: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    39: aload_1        
        //    40: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    43: ldc             "'"
        //    45: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    48: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    51: aconst_null    
        //    52: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //    55: astore_3       
        //    56: aload_3        
        //    57: invokeinterface android/database/Cursor.moveToNext:()Z
        //    62: ifeq            169
        //    65: aload_3        
        //    66: aload_3        
        //    67: ldc             "data"
        //    69: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    74: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    79: astore          7
        //    81: aload_0        
        //    82: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //    85: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //    88: aload_3        
        //    89: ifnull          98
        //    92: aload_3        
        //    93: invokeinterface android/database/Cursor.close:()V
        //    98: aload_0        
        //    99: monitorexit    
        //   100: aload           7
        //   102: areturn        
        //   103: astore_2       
        //   104: aload_0        
        //   105: monitorexit    
        //   106: aload_2        
        //   107: athrow         
        //   108: astore          5
        //   110: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //   113: ifeq            126
        //   116: ldc             "KochavaDbAdapter"
        //   118: ldc             "generateDataString"
        //   120: aload           5
        //   122: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   125: pop            
        //   126: aload_0        
        //   127: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //   130: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //   133: aload_3        
        //   134: ifnull          143
        //   137: aload_3        
        //   138: invokeinterface android/database/Cursor.close:()V
        //   143: aload_0        
        //   144: monitorexit    
        //   145: aconst_null    
        //   146: areturn        
        //   147: astore          4
        //   149: aload_0        
        //   150: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //   153: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //   156: aload_3        
        //   157: ifnull          166
        //   160: aload_3        
        //   161: invokeinterface android/database/Cursor.close:()V
        //   166: aload           4
        //   168: athrow         
        //   169: aload_0        
        //   170: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //   173: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //   176: aload_3        
        //   177: ifnull          143
        //   180: aload_3        
        //   181: invokeinterface android/database/Cursor.close:()V
        //   186: goto            143
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  6      16     103    108    Any
        //  16     18     103    108    Any
        //  23     81     108    143    Landroid/database/sqlite/SQLiteException;
        //  23     81     147    169    Any
        //  81     88     103    108    Any
        //  92     98     103    108    Any
        //  98     100    103    108    Any
        //  104    106    103    108    Any
        //  110    126    147    169    Any
        //  126    133    103    108    Any
        //  137    143    103    108    Any
        //  143    145    103    108    Any
        //  149    156    103    108    Any
        //  160    166    103    108    Any
        //  166    169    103    108    Any
        //  169    176    103    108    Any
        //  180    186    103    108    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0098:
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
    
    public void insertApplicationData(final String p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_1        
        //     3: ifnull          16
        //     6: aload_1        
        //     7: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //    10: invokevirtual   java/lang/String.length:()I
        //    13: ifne            19
        //    16: aload_0        
        //    17: monitorexit    
        //    18: return         
        //    19: aload_0        
        //    20: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //    23: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.getWritableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //    26: astore          7
        //    28: new             Landroid/content/ContentValues;
        //    31: dup            
        //    32: invokespecial   android/content/ContentValues.<init>:()V
        //    35: astore          8
        //    37: aload           8
        //    39: ldc             "id"
        //    41: aload_1        
        //    42: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //    45: aload           8
        //    47: ldc             "data"
        //    49: aload_2        
        //    50: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //    53: aload           7
        //    55: ldc             "keys"
        //    57: aconst_null    
        //    58: aload           8
        //    60: invokevirtual   android/database/sqlite/SQLiteDatabase.insert:(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
        //    63: pop2           
        //    64: aload_0        
        //    65: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //    68: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //    71: iconst_0       
        //    72: ifeq            81
        //    75: aconst_null    
        //    76: invokeinterface android/database/Cursor.close:()V
        //    81: aload_0        
        //    82: monitorexit    
        //    83: return         
        //    84: astore_3       
        //    85: aload_0        
        //    86: monitorexit    
        //    87: aload_3        
        //    88: athrow         
        //    89: astore          5
        //    91: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //    94: ifeq            107
        //    97: ldc             "KochavaDbAdapter"
        //    99: ldc             "addEvent"
        //   101: aload           5
        //   103: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   106: pop            
        //   107: aload_0        
        //   108: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //   111: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //   114: iconst_0       
        //   115: ifeq            81
        //   118: aconst_null    
        //   119: invokeinterface android/database/Cursor.close:()V
        //   124: goto            81
        //   127: astore          4
        //   129: aload_0        
        //   130: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //   133: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //   136: iconst_0       
        //   137: ifeq            146
        //   140: aconst_null    
        //   141: invokeinterface android/database/Cursor.close:()V
        //   146: aload           4
        //   148: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  6      16     84     89     Any
        //  16     18     84     89     Any
        //  19     64     89     127    Landroid/database/sqlite/SQLiteException;
        //  19     64     127    149    Any
        //  64     71     84     89     Any
        //  75     81     84     89     Any
        //  81     83     84     89     Any
        //  85     87     84     89     Any
        //  91     107    127    149    Any
        //  107    114    84     89     Any
        //  118    124    84     89     Any
        //  129    136    84     89     Any
        //  140    146    84     89     Any
        //  146    149    84     89     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0019:
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
    
    public void updateApplicationData(final String p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_1        
        //     3: ifnull          16
        //     6: aload_1        
        //     7: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //    10: invokevirtual   java/lang/String.length:()I
        //    13: ifne            19
        //    16: aload_0        
        //    17: monitorexit    
        //    18: return         
        //    19: aload_0        
        //    20: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //    23: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.getWritableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //    26: astore          7
        //    28: new             Landroid/content/ContentValues;
        //    31: dup            
        //    32: invokespecial   android/content/ContentValues.<init>:()V
        //    35: astore          8
        //    37: aload           8
        //    39: ldc             "data"
        //    41: aload_2        
        //    42: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //    45: aload           7
        //    47: ldc             "keys"
        //    49: aload           8
        //    51: new             Ljava/lang/StringBuilder;
        //    54: dup            
        //    55: ldc             "id='"
        //    57: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    60: aload_1        
        //    61: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    64: ldc             "'"
        //    66: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    69: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    72: aconst_null    
        //    73: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //    76: pop            
        //    77: aload_0        
        //    78: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //    81: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //    84: iconst_0       
        //    85: ifeq            94
        //    88: aconst_null    
        //    89: invokeinterface android/database/Cursor.close:()V
        //    94: aload_0        
        //    95: monitorexit    
        //    96: return         
        //    97: astore_3       
        //    98: aload_0        
        //    99: monitorexit    
        //   100: aload_3        
        //   101: athrow         
        //   102: astore          5
        //   104: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //   107: ifeq            120
        //   110: ldc             "KochavaDbAdapter"
        //   112: ldc             "addEvent"
        //   114: aload           5
        //   116: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   119: pop            
        //   120: aload_0        
        //   121: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //   124: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //   127: iconst_0       
        //   128: ifeq            94
        //   131: aconst_null    
        //   132: invokeinterface android/database/Cursor.close:()V
        //   137: goto            94
        //   140: astore          4
        //   142: aload_0        
        //   143: getfield        com/kochava/android/tracker/KochavaDbAdapter.kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
        //   146: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper.close:()V
        //   149: iconst_0       
        //   150: ifeq            159
        //   153: aconst_null    
        //   154: invokeinterface android/database/Cursor.close:()V
        //   159: aload           4
        //   161: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  6      16     97     102    Any
        //  16     18     97     102    Any
        //  19     77     102    140    Landroid/database/sqlite/SQLiteException;
        //  19     77     140    162    Any
        //  77     84     97     102    Any
        //  88     94     97     102    Any
        //  94     96     97     102    Any
        //  98     100    97     102    Any
        //  104    120    140    162    Any
        //  120    127    97     102    Any
        //  131    137    97     102    Any
        //  142    149    97     102    Any
        //  153    159    97     102    Any
        //  159    162    97     102    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0019:
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
    
    private static class KochavaDatabaseHelper extends SQLiteOpenHelper
    {
        KochavaDatabaseHelper(final Context context) {
            super(context, "KochavaFeatureTracker", (SQLiteDatabase$CursorFactory)null, 2);
        }
        
        public void onCreate(final SQLiteDatabase sqLiteDatabase) {
            sqLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL,created_at INTEGER NOT NULL);");
            if (Global.DEBUG) {
                Log.e("KochavaDbAdapter", "DATABASE_CREATE_2 : CREATE TABLE keys (id STRING NOT NULL PRIMARY KEY, data STRING NOT NULL);");
            }
            sqLiteDatabase.execSQL("CREATE TABLE keys (id STRING NOT NULL PRIMARY KEY, data STRING NOT NULL);");
            if (Global.DEBUG) {
                Log.e("KochavaDbAdapter", "DATABASE_CREATE_2 : Done");
            }
            sqLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS time_idx ON events (created_at);");
        }
        
        public void onUpgrade(final SQLiteDatabase sqLiteDatabase, final int i, final int j) {
            if (Global.DEBUG) {
                Log.e("KochavaDbAdapter", "Upgrading database from version " + i + " to " + j);
            }
            sqLiteDatabase.execSQL("DROP TABLE events");
            sqLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL,created_at INTEGER NOT NULL);");
            sqLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS time_idx ON events (created_at);");
        }
    }
}
