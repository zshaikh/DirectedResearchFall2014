package com.google.android.apps.analytics;

import android.util.*;
import java.net.*;
import java.io.*;
import java.util.*;
import android.content.*;
import android.database.sqlite.*;
import android.database.*;

class PersistentHitStore implements HitStore
{
    private static final String ACCOUNT_ID = "account_id";
    private static final String ACTION = "action";
    private static final String CATEGORY = "category";
    private static final String CREATE_CUSTOM_VARIABLES_TABLE;
    private static final String CREATE_CUSTOM_VAR_VISITOR_CACHE_TABLE;
    private static final String CREATE_EVENTS_TABLE;
    private static final String CREATE_HITS_TABLE;
    private static final String CREATE_INSTALL_REFERRER_TABLE = "CREATE TABLE install_referrer (referrer TEXT PRIMARY KEY NOT NULL);";
    private static final String CREATE_ITEM_EVENTS_TABLE;
    private static final String CREATE_OLD_CUSTOM_VAR_CACHE_TABLE;
    private static final String CREATE_REFERRER_TABLE = "CREATE TABLE IF NOT EXISTS referrer (referrer TEXT PRIMARY KEY NOT NULL,timestamp_referrer INTEGER NOT NULL,referrer_visit INTEGER NOT NULL DEFAULT 1,referrer_index INTEGER NOT NULL DEFAULT 1);";
    private static final String CREATE_SESSION_TABLE;
    private static final String CREATE_TRANSACTION_EVENTS_TABLE;
    private static final String CUSTOMVAR_ID = "cv_id";
    private static final String CUSTOMVAR_INDEX = "cv_index";
    private static final String CUSTOMVAR_NAME = "cv_name";
    private static final String CUSTOMVAR_SCOPE = "cv_scope";
    private static final String CUSTOMVAR_VALUE = "cv_value";
    private static final String CUSTOM_VARIABLE_COLUMN_TYPE = "CHAR(64) NOT NULL";
    static final String CUSTOM_VAR_VISITOR_CACHE_NAME = "custom_var_visitor_cache";
    private static final String DATABASE_NAME = "google_analytics.db";
    private static final int DATABASE_VERSION = 6;
    private static final String EVENT_ID = "event_id";
    private static final String HIT_ID = "hit_id";
    private static final String HIT_STRING = "hit_string";
    private static final String HIT_TIMESTAMP = "hit_time";
    private static final String ITEM_CATEGORY = "item_category";
    private static final String ITEM_COUNT = "item_count";
    private static final String ITEM_ID = "item_id";
    private static final String ITEM_NAME = "item_name";
    private static final String ITEM_PRICE = "item_price";
    private static final String ITEM_SKU = "item_sku";
    private static final String LABEL = "label";
    private static final int MAX_HITS = 1000;
    private static final String OLD_CUSTOM_VAR_CACHE_NAME = "custom_var_cache";
    private static final String ORDER_ID = "order_id";
    private static final String RANDOM_VAL = "random_val";
    static final String REFERRER = "referrer";
    static final String REFERRER_COLUMN = "referrer";
    static final String REFERRER_INDEX = "referrer_index";
    static final String REFERRER_VISIT = "referrer_visit";
    private static final String SCREEN_HEIGHT = "screen_height";
    private static final String SCREEN_WIDTH = "screen_width";
    private static final String SHIPPING_COST = "tran_shippingcost";
    private static final String STORE_ID = "store_id";
    private static final String STORE_NAME = "tran_storename";
    private static final String TIMESTAMP_CURRENT = "timestamp_current";
    private static final String TIMESTAMP_FIRST = "timestamp_first";
    private static final String TIMESTAMP_PREVIOUS = "timestamp_previous";
    static final String TIMESTAMP_REFERRER = "timestamp_referrer";
    private static final String TOTAL_COST = "tran_totalcost";
    private static final String TOTAL_TAX = "tran_totaltax";
    private static final String TRANSACTION_ID = "tran_id";
    private static final String USER_ID = "user_id";
    private static final String VALUE = "value";
    private static final String VISITS = "visits";
    private boolean anonymizeIp;
    private DataBaseHelper databaseHelper;
    private volatile int numStoredHits;
    private Random random;
    private int sampleRate;
    private boolean sessionStarted;
    private int storeId;
    private long timestampCurrent;
    private long timestampFirst;
    private long timestampPrevious;
    private boolean useStoredVisitorVars;
    private CustomVariableBuffer visitorCVCache;
    private int visits;
    
    static {
        CREATE_EVENTS_TABLE = "CREATE TABLE events (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", "event_id") + String.format(" '%s' INTEGER NOT NULL,", "user_id") + String.format(" '%s' CHAR(256) NOT NULL,", "account_id") + String.format(" '%s' INTEGER NOT NULL,", "random_val") + String.format(" '%s' INTEGER NOT NULL,", "timestamp_first") + String.format(" '%s' INTEGER NOT NULL,", "timestamp_previous") + String.format(" '%s' INTEGER NOT NULL,", "timestamp_current") + String.format(" '%s' INTEGER NOT NULL,", "visits") + String.format(" '%s' CHAR(256) NOT NULL,", "category") + String.format(" '%s' CHAR(256) NOT NULL,", "action") + String.format(" '%s' CHAR(256), ", "label") + String.format(" '%s' INTEGER,", "value") + String.format(" '%s' INTEGER,", "screen_width") + String.format(" '%s' INTEGER);", "screen_height");
        CREATE_SESSION_TABLE = "CREATE TABLE IF NOT EXISTS session (" + String.format(" '%s' INTEGER PRIMARY KEY,", "timestamp_first") + String.format(" '%s' INTEGER NOT NULL,", "timestamp_previous") + String.format(" '%s' INTEGER NOT NULL,", "timestamp_current") + String.format(" '%s' INTEGER NOT NULL,", "visits") + String.format(" '%s' INTEGER NOT NULL);", "store_id");
        CREATE_CUSTOM_VARIABLES_TABLE = "CREATE TABLE custom_variables (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", "cv_id") + String.format(" '%s' INTEGER NOT NULL,", "event_id") + String.format(" '%s' INTEGER NOT NULL,", "cv_index") + String.format(" '%s' CHAR(64) NOT NULL,", "cv_name") + String.format(" '%s' CHAR(64) NOT NULL,", "cv_value") + String.format(" '%s' INTEGER NOT NULL);", "cv_scope");
        CREATE_OLD_CUSTOM_VAR_CACHE_TABLE = "CREATE TABLE IF NOT EXISTS custom_var_cache (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", "cv_id") + String.format(" '%s' INTEGER NOT NULL,", "event_id") + String.format(" '%s' INTEGER NOT NULL,", "cv_index") + String.format(" '%s' CHAR(64) NOT NULL,", "cv_name") + String.format(" '%s' CHAR(64) NOT NULL,", "cv_value") + String.format(" '%s' INTEGER NOT NULL);", "cv_scope");
        CREATE_CUSTOM_VAR_VISITOR_CACHE_TABLE = "CREATE TABLE IF NOT EXISTS custom_var_visitor_cache (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", "cv_id") + String.format(" '%s' INTEGER NOT NULL,", "cv_index") + String.format(" '%s' %s,", "cv_name", "CHAR(64) NOT NULL") + String.format(" '%s' %s);", "cv_value", "CHAR(64) NOT NULL");
        CREATE_TRANSACTION_EVENTS_TABLE = "CREATE TABLE transaction_events (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", "tran_id") + String.format(" '%s' INTEGER NOT NULL,", "event_id") + String.format(" '%s' TEXT NOT NULL,", "order_id") + String.format(" '%s' TEXT,", "tran_storename") + String.format(" '%s' TEXT NOT NULL,", "tran_totalcost") + String.format(" '%s' TEXT,", "tran_totaltax") + String.format(" '%s' TEXT);", "tran_shippingcost");
        CREATE_ITEM_EVENTS_TABLE = "CREATE TABLE item_events (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", "item_id") + String.format(" '%s' INTEGER NOT NULL,", "event_id") + String.format(" '%s' TEXT NOT NULL,", "order_id") + String.format(" '%s' TEXT NOT NULL,", "item_sku") + String.format(" '%s' TEXT,", "item_name") + String.format(" '%s' TEXT,", "item_category") + String.format(" '%s' TEXT NOT NULL,", "item_price") + String.format(" '%s' TEXT NOT NULL);", "item_count");
        CREATE_HITS_TABLE = "CREATE TABLE IF NOT EXISTS hits (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", "hit_id") + String.format(" '%s' TEXT NOT NULL,", "hit_string") + String.format(" '%s' INTEGER NOT NULL);", "hit_time");
    }
    
    PersistentHitStore(final Context context) {
        this(context, "google_analytics.db", 6);
    }
    
    PersistentHitStore(final Context context, final String s) {
        this(context, s, 6);
    }
    
    PersistentHitStore(final Context context, final String s, final int n) {
        super();
        this.sampleRate = 100;
        this.random = new Random();
        this.databaseHelper = new DataBaseHelper(context, s, n, this);
        this.loadExistingSession();
        this.visitorCVCache = this.getVisitorVarBuffer();
    }
    
    PersistentHitStore(final DataBaseHelper databaseHelper) {
        super();
        this.sampleRate = 100;
        this.random = new Random();
        this.databaseHelper = databaseHelper;
        this.loadExistingSession();
        this.visitorCVCache = this.getVisitorVarBuffer();
    }
    
    private static boolean endTransaction(final SQLiteDatabase sqLiteDatabase) {
        try {
            sqLiteDatabase.endTransaction();
            return true;
        }
        catch (SQLiteException ex) {
            Log.e("GoogleAnalyticsTracker", "exception ending transaction:" + ex.toString());
            return false;
        }
    }
    
    static String formatReferrer(final String s) {
        if (s == null) {
            return null;
        }
        String decode = null;
        Label_0018: {
            if (!s.contains("=")) {
                if (s.contains("%3D")) {
                    try {
                        decode = URLDecoder.decode(s, "UTF-8");
                        break Label_0018;
                    }
                    catch (UnsupportedEncodingException ex) {
                        return null;
                    }
                }
                return null;
            }
            decode = s;
        }
        final Map<String, String> urlParameters = Utils.parseURLParameters(decode);
        boolean b;
        if (urlParameters.get("utm_campaign") != null) {
            b = true;
        }
        else {
            b = false;
        }
        boolean b2;
        if (urlParameters.get("utm_medium") != null) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        boolean b3;
        if (urlParameters.get("utm_source") != null) {
            b3 = true;
        }
        else {
            b3 = false;
        }
        boolean b4;
        if (urlParameters.get("gclid") != null) {
            b4 = true;
        }
        else {
            b4 = false;
        }
        if (!b4 && (!b || !b2 || !b3)) {
            Log.w("GoogleAnalyticsTracker", "Badly formatted referrer missing campaign, medium and source or click ID");
            return null;
        }
        final String[][] array = { { "utmcid", urlParameters.get("utm_id") }, { "utmcsr", urlParameters.get("utm_source") }, { "utmgclid", urlParameters.get("gclid") }, { "utmccn", urlParameters.get("utm_campaign") }, { "utmcmd", urlParameters.get("utm_medium") }, { "utmctr", urlParameters.get("utm_term") }, { "utmcct", urlParameters.get("utm_content") } };
        final StringBuilder sb = new StringBuilder();
        int i = 0;
        int n = 1;
        while (i < array.length) {
            if (array[i][1] != null) {
                final String replace = array[i][1].replace("+", "%20").replace(" ", "%20");
                if (n != 0) {
                    n = 0;
                }
                else {
                    sb.append("|");
                }
                sb.append(array[i][0]).append("=").append(replace);
            }
            ++i;
        }
        return sb.toString();
    }
    
    private Referrer getAndUpdateReferrer(final SQLiteDatabase sqLiteDatabase) {
        Referrer currentReferrer = this.readCurrentReferrer(sqLiteDatabase);
        if (currentReferrer == null) {
            currentReferrer = null;
        }
        else if (currentReferrer.getTimeStamp() == 0L) {
            final int index = currentReferrer.getIndex();
            final String referrerString = currentReferrer.getReferrerString();
            final ContentValues contentValues = new ContentValues();
            contentValues.put("referrer", referrerString);
            contentValues.put("timestamp_referrer", this.timestampCurrent);
            contentValues.put("referrer_visit", this.visits);
            contentValues.put("referrer_index", index);
            if (this.setReferrerDatabase(sqLiteDatabase, contentValues)) {
                return new Referrer(referrerString, this.timestampCurrent, this.visits, index);
            }
            return null;
        }
        return currentReferrer;
    }
    
    private void putEvent(final Event event, final SQLiteDatabase sqLiteDatabase, final boolean b) {
        if (!event.isSessionInitialized()) {
            event.setRandomVal(this.random.nextInt(Integer.MAX_VALUE));
            event.setTimestampFirst((int)this.timestampFirst);
            event.setTimestampPrevious((int)this.timestampPrevious);
            event.setTimestampCurrent((int)this.timestampCurrent);
            event.setVisits(this.visits);
        }
        event.setAnonymizeIp(this.anonymizeIp);
        if (event.getUserId() == -1) {
            event.setUserId(this.storeId);
        }
        this.putCustomVariables(event, sqLiteDatabase);
        final Referrer andUpdateReferrer = this.getAndUpdateReferrer(sqLiteDatabase);
        final String[] split = event.accountId.split(",");
        if (split.length == 1) {
            this.writeEventToDatabase(event, andUpdateReferrer, sqLiteDatabase, b);
        }
        else {
            for (int length = split.length, i = 0; i < length; ++i) {
                this.writeEventToDatabase(new Event(event, split[i]), andUpdateReferrer, sqLiteDatabase, b);
            }
        }
    }
    
    private boolean setReferrerDatabase(final SQLiteDatabase sqLiteDatabase, final ContentValues contentValues) {
        try {
            sqLiteDatabase.beginTransaction();
            sqLiteDatabase.delete("referrer", (String)null, (String[])null);
            sqLiteDatabase.insert("referrer", (String)null, contentValues);
            sqLiteDatabase.setTransactionSuccessful();
            if (sqLiteDatabase.inTransaction() && !endTransaction(sqLiteDatabase)) {
                return false;
            }
        }
        catch (SQLiteException ex) {
            Log.e("GoogleAnalyticsTracker", ex.toString());
            return false;
        }
        finally {
            if (sqLiteDatabase.inTransaction() && !endTransaction(sqLiteDatabase)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public void clearReferrer() {
        try {
            this.databaseHelper.getWritableDatabase().delete("referrer", (String)null, (String[])null);
        }
        catch (SQLiteException ex) {
            Log.e("GoogleAnalyticsTracker", ex.toString());
        }
    }
    
    @Override
    public void deleteHit(final long i) {
        synchronized (this) {
            try {
                this.numStoredHits -= this.databaseHelper.getWritableDatabase().delete("hits", "hit_id = ?", new String[] { Long.toString(i) });
            }
            catch (SQLiteException ex) {
                Log.e("GoogleAnalyticsTracker", ex.toString());
            }
        }
    }
    
    CustomVariableBuffer getCustomVariables(final long p0, final SQLiteDatabase p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     3: dup            
        //     4: invokespecial   com/google/android/apps/analytics/CustomVariableBuffer.<init>:()V
        //     7: astore          4
        //     9: iconst_1       
        //    10: anewarray       Ljava/lang/String;
        //    13: astore          9
        //    15: aload           9
        //    17: iconst_0       
        //    18: lload_1        
        //    19: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //    22: aastore        
        //    23: aload_3        
        //    24: ldc_w           "custom_variables"
        //    27: aconst_null    
        //    28: ldc_w           "event_id= ?"
        //    31: aload           9
        //    33: aconst_null    
        //    34: aconst_null    
        //    35: aconst_null    
        //    36: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    39: astore          10
        //    41: aload           10
        //    43: invokeinterface android/database/Cursor.moveToNext:()Z
        //    48: ifeq            167
        //    51: aload           4
        //    53: new             Lcom/google/android/apps/analytics/CustomVariable;
        //    56: dup            
        //    57: aload           10
        //    59: aload           10
        //    61: ldc             "cv_index"
        //    63: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    68: invokeinterface android/database/Cursor.getInt:(I)I
        //    73: aload           10
        //    75: aload           10
        //    77: ldc             "cv_name"
        //    79: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    84: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    89: aload           10
        //    91: aload           10
        //    93: ldc             "cv_value"
        //    95: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   100: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   105: aload           10
        //   107: aload           10
        //   109: ldc             "cv_scope"
        //   111: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   116: invokeinterface android/database/Cursor.getInt:(I)I
        //   121: invokespecial   com/google/android/apps/analytics/CustomVariable.<init>:(ILjava/lang/String;Ljava/lang/String;I)V
        //   124: invokevirtual   com/google/android/apps/analytics/CustomVariableBuffer.setCustomVariable:(Lcom/google/android/apps/analytics/CustomVariable;)V
        //   127: goto            41
        //   130: astore          12
        //   132: aload           10
        //   134: astore          6
        //   136: aload           12
        //   138: astore          5
        //   140: ldc_w           "GoogleAnalyticsTracker"
        //   143: aload           5
        //   145: invokevirtual   android/database/sqlite/SQLiteException.toString:()Ljava/lang/String;
        //   148: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   151: pop            
        //   152: aload           6
        //   154: ifnull          164
        //   157: aload           6
        //   159: invokeinterface android/database/Cursor.close:()V
        //   164: aload           4
        //   166: areturn        
        //   167: aload           10
        //   169: ifnull          164
        //   172: aload           10
        //   174: invokeinterface android/database/Cursor.close:()V
        //   179: aload           4
        //   181: areturn        
        //   182: astore          7
        //   184: aconst_null    
        //   185: astore          6
        //   187: aload           6
        //   189: ifnull          199
        //   192: aload           6
        //   194: invokeinterface android/database/Cursor.close:()V
        //   199: aload           7
        //   201: athrow         
        //   202: astore          11
        //   204: aload           10
        //   206: astore          6
        //   208: aload           11
        //   210: astore          7
        //   212: goto            187
        //   215: astore          7
        //   217: goto            187
        //   220: astore          5
        //   222: aconst_null    
        //   223: astore          6
        //   225: goto            140
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  9      41     220    228    Landroid/database/sqlite/SQLiteException;
        //  9      41     182    187    Any
        //  41     127    130    140    Landroid/database/sqlite/SQLiteException;
        //  41     127    202    215    Any
        //  140    152    215    220    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0140:
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
    
    DataBaseHelper getDatabaseHelper() {
        return this.databaseHelper;
    }
    
    Item getItem(final long p0, final SQLiteDatabase p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     1: anewarray       Ljava/lang/String;
        //     4: astore          8
        //     6: aload           8
        //     8: iconst_0       
        //     9: lload_1        
        //    10: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //    13: aastore        
        //    14: aload_3        
        //    15: ldc_w           "item_events"
        //    18: aconst_null    
        //    19: ldc_w           "event_id= ?"
        //    22: aload           8
        //    24: aconst_null    
        //    25: aconst_null    
        //    26: aconst_null    
        //    27: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    30: astore          9
        //    32: aload           9
        //    34: invokeinterface android/database/Cursor.moveToFirst:()Z
        //    39: ifeq            171
        //    42: new             Lcom/google/android/apps/analytics/Item$Builder;
        //    45: dup            
        //    46: aload           9
        //    48: aload           9
        //    50: ldc             "order_id"
        //    52: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    57: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    62: aload           9
        //    64: aload           9
        //    66: ldc             "item_sku"
        //    68: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    73: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    78: aload           9
        //    80: aload           9
        //    82: ldc             "item_price"
        //    84: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    89: invokeinterface android/database/Cursor.getDouble:(I)D
        //    94: aload           9
        //    96: aload           9
        //    98: ldc             "item_count"
        //   100: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   105: invokeinterface android/database/Cursor.getLong:(I)J
        //   110: invokespecial   com/google/android/apps/analytics/Item$Builder.<init>:(Ljava/lang/String;Ljava/lang/String;DJ)V
        //   113: aload           9
        //   115: aload           9
        //   117: ldc             "item_name"
        //   119: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   124: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   129: invokevirtual   com/google/android/apps/analytics/Item$Builder.setItemName:(Ljava/lang/String;)Lcom/google/android/apps/analytics/Item$Builder;
        //   132: aload           9
        //   134: aload           9
        //   136: ldc             "item_category"
        //   138: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   143: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   148: invokevirtual   com/google/android/apps/analytics/Item$Builder.setItemCategory:(Ljava/lang/String;)Lcom/google/android/apps/analytics/Item$Builder;
        //   151: invokevirtual   com/google/android/apps/analytics/Item$Builder.build:()Lcom/google/android/apps/analytics/Item;
        //   154: astore          10
        //   156: aload           9
        //   158: ifnull          168
        //   161: aload           9
        //   163: invokeinterface android/database/Cursor.close:()V
        //   168: aload           10
        //   170: areturn        
        //   171: aload           9
        //   173: ifnull          183
        //   176: aload           9
        //   178: invokeinterface android/database/Cursor.close:()V
        //   183: aconst_null    
        //   184: areturn        
        //   185: astore          6
        //   187: aconst_null    
        //   188: astore          5
        //   190: ldc_w           "GoogleAnalyticsTracker"
        //   193: aload           6
        //   195: invokevirtual   android/database/sqlite/SQLiteException.toString:()Ljava/lang/String;
        //   198: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   201: pop            
        //   202: aload           5
        //   204: ifnull          183
        //   207: aload           5
        //   209: invokeinterface android/database/Cursor.close:()V
        //   214: goto            183
        //   217: astore          4
        //   219: aconst_null    
        //   220: astore          5
        //   222: aload           5
        //   224: ifnull          234
        //   227: aload           5
        //   229: invokeinterface android/database/Cursor.close:()V
        //   234: aload           4
        //   236: athrow         
        //   237: astore          4
        //   239: aload           9
        //   241: astore          5
        //   243: goto            222
        //   246: astore          4
        //   248: goto            222
        //   251: astore          6
        //   253: aload           9
        //   255: astore          5
        //   257: goto            190
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  0      32     185    190    Landroid/database/sqlite/SQLiteException;
        //  0      32     217    222    Any
        //  32     156    251    260    Landroid/database/sqlite/SQLiteException;
        //  32     156    237    246    Any
        //  190    202    246    251    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 102, Size: 102
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
    
    @Override
    public int getNumStoredHits() {
        return this.numStoredHits;
    }
    
    public int getNumStoredHitsFromDb() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/apps/analytics/PersistentHitStore.databaseHelper:Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;
        //     4: invokevirtual   com/google/android/apps/analytics/PersistentHitStore$DataBaseHelper.getReadableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //     7: ldc_w           "SELECT COUNT(*) from hits"
        //    10: aconst_null    
        //    11: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //    14: astore          5
        //    16: aload           5
        //    18: invokeinterface android/database/Cursor.moveToFirst:()Z
        //    23: ifeq            128
        //    26: aload           5
        //    28: iconst_0       
        //    29: invokeinterface android/database/Cursor.getLong:(I)J
        //    34: lstore          9
        //    36: lload           9
        //    38: l2i            
        //    39: istore          8
        //    41: aload           5
        //    43: ifnull          125
        //    46: aload           5
        //    48: invokeinterface android/database/Cursor.close:()V
        //    53: iload           8
        //    55: ireturn        
        //    56: astore_3       
        //    57: aconst_null    
        //    58: astore_2       
        //    59: ldc_w           "GoogleAnalyticsTracker"
        //    62: aload_3        
        //    63: invokevirtual   android/database/sqlite/SQLiteException.toString:()Ljava/lang/String;
        //    66: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    69: pop            
        //    70: aload_2        
        //    71: ifnull          123
        //    74: aload_2        
        //    75: invokeinterface android/database/Cursor.close:()V
        //    80: iconst_0       
        //    81: ireturn        
        //    82: astore_1       
        //    83: aconst_null    
        //    84: astore_2       
        //    85: aload_2        
        //    86: ifnull          95
        //    89: aload_2        
        //    90: invokeinterface android/database/Cursor.close:()V
        //    95: aload_1        
        //    96: athrow         
        //    97: astore          7
        //    99: aload           5
        //   101: astore_2       
        //   102: aload           7
        //   104: astore_1       
        //   105: goto            85
        //   108: astore_1       
        //   109: goto            85
        //   112: astore          6
        //   114: aload           5
        //   116: astore_2       
        //   117: aload           6
        //   119: astore_3       
        //   120: goto            59
        //   123: iconst_0       
        //   124: ireturn        
        //   125: iload           8
        //   127: ireturn        
        //   128: iconst_0       
        //   129: istore          8
        //   131: goto            41
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  0      16     56     59     Landroid/database/sqlite/SQLiteException;
        //  0      16     82     85     Any
        //  16     36     112    123    Landroid/database/sqlite/SQLiteException;
        //  16     36     97     108    Any
        //  59     70     108    112    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 67, Size: 67
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
    
    @Override
    public Referrer getReferrer() {
        try {
            return this.readCurrentReferrer(this.databaseHelper.getReadableDatabase());
        }
        catch (SQLiteException ex) {
            Log.e("GoogleAnalyticsTracker", ex.toString());
            return null;
        }
    }
    
    @Override
    public String getSessionId() {
        if (!this.sessionStarted) {
            return null;
        }
        return Integer.toString((int)this.timestampCurrent);
    }
    
    @Override
    public int getStoreId() {
        return this.storeId;
    }
    
    long getTimestampCurrent() {
        return this.timestampCurrent;
    }
    
    long getTimestampFirst() {
        return this.timestampFirst;
    }
    
    long getTimestampPrevious() {
        return this.timestampPrevious;
    }
    
    Transaction getTransaction(final long p0, final SQLiteDatabase p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     1: anewarray       Ljava/lang/String;
        //     4: astore          8
        //     6: aload           8
        //     8: iconst_0       
        //     9: lload_1        
        //    10: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //    13: aastore        
        //    14: aload_3        
        //    15: ldc_w           "transaction_events"
        //    18: aconst_null    
        //    19: ldc_w           "event_id= ?"
        //    22: aload           8
        //    24: aconst_null    
        //    25: aconst_null    
        //    26: aconst_null    
        //    27: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    30: astore          9
        //    32: aload           9
        //    34: invokeinterface android/database/Cursor.moveToFirst:()Z
        //    39: ifeq            158
        //    42: new             Lcom/google/android/apps/analytics/Transaction$Builder;
        //    45: dup            
        //    46: aload           9
        //    48: aload           9
        //    50: ldc             "order_id"
        //    52: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    57: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    62: aload           9
        //    64: aload           9
        //    66: ldc             "tran_totalcost"
        //    68: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    73: invokeinterface android/database/Cursor.getDouble:(I)D
        //    78: invokespecial   com/google/android/apps/analytics/Transaction$Builder.<init>:(Ljava/lang/String;D)V
        //    81: aload           9
        //    83: aload           9
        //    85: ldc             "tran_storename"
        //    87: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    92: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    97: invokevirtual   com/google/android/apps/analytics/Transaction$Builder.setStoreName:(Ljava/lang/String;)Lcom/google/android/apps/analytics/Transaction$Builder;
        //   100: aload           9
        //   102: aload           9
        //   104: ldc             "tran_totaltax"
        //   106: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   111: invokeinterface android/database/Cursor.getDouble:(I)D
        //   116: invokevirtual   com/google/android/apps/analytics/Transaction$Builder.setTotalTax:(D)Lcom/google/android/apps/analytics/Transaction$Builder;
        //   119: aload           9
        //   121: aload           9
        //   123: ldc             "tran_shippingcost"
        //   125: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   130: invokeinterface android/database/Cursor.getDouble:(I)D
        //   135: invokevirtual   com/google/android/apps/analytics/Transaction$Builder.setShippingCost:(D)Lcom/google/android/apps/analytics/Transaction$Builder;
        //   138: invokevirtual   com/google/android/apps/analytics/Transaction$Builder.build:()Lcom/google/android/apps/analytics/Transaction;
        //   141: astore          12
        //   143: aload           9
        //   145: ifnull          155
        //   148: aload           9
        //   150: invokeinterface android/database/Cursor.close:()V
        //   155: aload           12
        //   157: areturn        
        //   158: aload           9
        //   160: ifnull          170
        //   163: aload           9
        //   165: invokeinterface android/database/Cursor.close:()V
        //   170: aconst_null    
        //   171: areturn        
        //   172: astore          6
        //   174: aconst_null    
        //   175: astore          5
        //   177: ldc_w           "GoogleAnalyticsTracker"
        //   180: aload           6
        //   182: invokevirtual   android/database/sqlite/SQLiteException.toString:()Ljava/lang/String;
        //   185: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   188: pop            
        //   189: aload           5
        //   191: ifnull          170
        //   194: aload           5
        //   196: invokeinterface android/database/Cursor.close:()V
        //   201: goto            170
        //   204: astore          4
        //   206: aconst_null    
        //   207: astore          5
        //   209: aload           5
        //   211: ifnull          221
        //   214: aload           5
        //   216: invokeinterface android/database/Cursor.close:()V
        //   221: aload           4
        //   223: athrow         
        //   224: astore          11
        //   226: aload           9
        //   228: astore          5
        //   230: aload           11
        //   232: astore          4
        //   234: goto            209
        //   237: astore          4
        //   239: goto            209
        //   242: astore          10
        //   244: aload           9
        //   246: astore          5
        //   248: aload           10
        //   250: astore          6
        //   252: goto            177
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  0      32     172    177    Landroid/database/sqlite/SQLiteException;
        //  0      32     204    209    Any
        //  32     143    242    255    Landroid/database/sqlite/SQLiteException;
        //  32     143    224    237    Any
        //  177    189    237    242    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 102, Size: 102
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
    
    @Override
    public String getVisitorCustomVar(final int n) {
        final CustomVariable customVariable = this.visitorCVCache.getCustomVariableAt(n);
        if (customVariable == null || customVariable.getScope() != 1) {
            return null;
        }
        return customVariable.getValue();
    }
    
    @Override
    public String getVisitorId() {
        if (!this.sessionStarted) {
            return null;
        }
        return String.format("%d.%d", this.storeId, this.timestampFirst);
    }
    
    CustomVariableBuffer getVisitorVarBuffer() {
        try {
            return this.getVisitorVarBuffer(this.databaseHelper.getReadableDatabase());
        }
        catch (SQLiteException ex) {
            Log.e("GoogleAnalyticsTracker", ex.toString());
            return new CustomVariableBuffer();
        }
    }
    
    CustomVariableBuffer getVisitorVarBuffer(final SQLiteDatabase p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     3: dup            
        //     4: invokespecial   com/google/android/apps/analytics/CustomVariableBuffer.<init>:()V
        //     7: astore_2       
        //     8: aload_1        
        //     9: ldc             "custom_var_visitor_cache"
        //    11: aconst_null    
        //    12: aconst_null    
        //    13: aconst_null    
        //    14: aconst_null    
        //    15: aconst_null    
        //    16: aconst_null    
        //    17: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    20: astore          7
        //    22: aload           7
        //    24: invokeinterface android/database/Cursor.moveToNext:()Z
        //    29: ifeq            155
        //    32: aload           7
        //    34: ldc             "cv_index"
        //    36: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    41: ifle            22
        //    44: aload           7
        //    46: ldc             "cv_index"
        //    48: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    53: bipush          50
        //    55: if_icmpgt       22
        //    58: aload_2        
        //    59: new             Lcom/google/android/apps/analytics/CustomVariable;
        //    62: dup            
        //    63: aload           7
        //    65: aload           7
        //    67: ldc             "cv_index"
        //    69: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    74: invokeinterface android/database/Cursor.getInt:(I)I
        //    79: aload           7
        //    81: aload           7
        //    83: ldc             "cv_name"
        //    85: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    90: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    95: aload           7
        //    97: aload           7
        //    99: ldc             "cv_value"
        //   101: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   106: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   111: iconst_1       
        //   112: invokespecial   com/google/android/apps/analytics/CustomVariable.<init>:(ILjava/lang/String;Ljava/lang/String;I)V
        //   115: invokevirtual   com/google/android/apps/analytics/CustomVariableBuffer.setCustomVariable:(Lcom/google/android/apps/analytics/CustomVariable;)V
        //   118: goto            22
        //   121: astore          9
        //   123: aload           7
        //   125: astore          4
        //   127: aload           9
        //   129: astore_3       
        //   130: ldc_w           "GoogleAnalyticsTracker"
        //   133: aload_3        
        //   134: invokevirtual   android/database/sqlite/SQLiteException.toString:()Ljava/lang/String;
        //   137: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   140: pop            
        //   141: aload           4
        //   143: ifnull          153
        //   146: aload           4
        //   148: invokeinterface android/database/Cursor.close:()V
        //   153: aload_2        
        //   154: areturn        
        //   155: aload           7
        //   157: ifnull          153
        //   160: aload           7
        //   162: invokeinterface android/database/Cursor.close:()V
        //   167: aload_2        
        //   168: areturn        
        //   169: astore          5
        //   171: aconst_null    
        //   172: astore          4
        //   174: aload           4
        //   176: ifnull          186
        //   179: aload           4
        //   181: invokeinterface android/database/Cursor.close:()V
        //   186: aload           5
        //   188: athrow         
        //   189: astore          8
        //   191: aload           7
        //   193: astore          4
        //   195: aload           8
        //   197: astore          5
        //   199: goto            174
        //   202: astore          5
        //   204: goto            174
        //   207: astore_3       
        //   208: aconst_null    
        //   209: astore          4
        //   211: goto            130
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  8      22     207    214    Landroid/database/sqlite/SQLiteException;
        //  8      22     169    174    Any
        //  22     118    121    130    Landroid/database/sqlite/SQLiteException;
        //  22     118    189    202    Any
        //  130    141    202    207    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0130:
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
    
    int getVisits() {
        return this.visits;
    }
    
    @Override
    public void loadExistingSession() {
        try {
            this.loadExistingSession(this.databaseHelper.getWritableDatabase());
        }
        catch (SQLiteException ex) {
            Log.e("GoogleAnalyticsTracker", ex.toString());
        }
    }
    
    public void loadExistingSession(final SQLiteDatabase p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: ldc_w           "session"
        //     4: aconst_null    
        //     5: aconst_null    
        //     6: aconst_null    
        //     7: aconst_null    
        //     8: aconst_null    
        //     9: aconst_null    
        //    10: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    13: astore          6
        //    15: aload           6
        //    17: astore          7
        //    19: aload           7
        //    21: invokeinterface android/database/Cursor.moveToFirst:()Z
        //    26: ifeq            148
        //    29: aload_0        
        //    30: aload           7
        //    32: iconst_0       
        //    33: invokeinterface android/database/Cursor.getLong:(I)J
        //    38: putfield        com/google/android/apps/analytics/PersistentHitStore.timestampFirst:J
        //    41: aload_0        
        //    42: aload           7
        //    44: iconst_1       
        //    45: invokeinterface android/database/Cursor.getLong:(I)J
        //    50: putfield        com/google/android/apps/analytics/PersistentHitStore.timestampPrevious:J
        //    53: aload_0        
        //    54: aload           7
        //    56: iconst_2       
        //    57: invokeinterface android/database/Cursor.getLong:(I)J
        //    62: putfield        com/google/android/apps/analytics/PersistentHitStore.timestampCurrent:J
        //    65: aload_0        
        //    66: aload           7
        //    68: iconst_3       
        //    69: invokeinterface android/database/Cursor.getInt:(I)I
        //    74: putfield        com/google/android/apps/analytics/PersistentHitStore.visits:I
        //    77: aload_0        
        //    78: aload           7
        //    80: iconst_4       
        //    81: invokeinterface android/database/Cursor.getInt:(I)I
        //    86: putfield        com/google/android/apps/analytics/PersistentHitStore.storeId:I
        //    89: aload_0        
        //    90: aload_1        
        //    91: invokevirtual   com/google/android/apps/analytics/PersistentHitStore.readCurrentReferrer:(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/Referrer;
        //    94: astore          13
        //    96: aload_0        
        //    97: getfield        com/google/android/apps/analytics/PersistentHitStore.timestampFirst:J
        //   100: lconst_0       
        //   101: lcmp           
        //   102: ifeq            142
        //   105: aload           13
        //   107: ifnull          336
        //   110: aload           13
        //   112: invokevirtual   com/google/android/apps/analytics/Referrer.getTimeStamp:()J
        //   115: lconst_0       
        //   116: lcmp           
        //   117: ifeq            142
        //   120: goto            336
        //   123: aload_0        
        //   124: iload           14
        //   126: putfield        com/google/android/apps/analytics/PersistentHitStore.sessionStarted:Z
        //   129: aload           7
        //   131: ifnull          141
        //   134: aload           7
        //   136: invokeinterface android/database/Cursor.close:()V
        //   141: return         
        //   142: iconst_0       
        //   143: istore          14
        //   145: goto            123
        //   148: aload_0        
        //   149: iconst_0       
        //   150: putfield        com/google/android/apps/analytics/PersistentHitStore.sessionStarted:Z
        //   153: aload_0        
        //   154: iconst_1       
        //   155: putfield        com/google/android/apps/analytics/PersistentHitStore.useStoredVisitorVars:Z
        //   158: aload_0        
        //   159: ldc_w           2147483647
        //   162: new             Ljava/security/SecureRandom;
        //   165: dup            
        //   166: invokespecial   java/security/SecureRandom.<init>:()V
        //   169: invokevirtual   java/security/SecureRandom.nextInt:()I
        //   172: iand           
        //   173: putfield        com/google/android/apps/analytics/PersistentHitStore.storeId:I
        //   176: aload           7
        //   178: invokeinterface android/database/Cursor.close:()V
        //   183: new             Landroid/content/ContentValues;
        //   186: dup            
        //   187: invokespecial   android/content/ContentValues.<init>:()V
        //   190: astore          10
        //   192: aload           10
        //   194: ldc             "timestamp_first"
        //   196: lconst_0       
        //   197: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   200: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //   203: aload           10
        //   205: ldc             "timestamp_previous"
        //   207: lconst_0       
        //   208: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   211: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //   214: aload           10
        //   216: ldc             "timestamp_current"
        //   218: lconst_0       
        //   219: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   222: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //   225: aload           10
        //   227: ldc             "visits"
        //   229: iconst_0       
        //   230: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   233: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   236: aload           10
        //   238: ldc             "store_id"
        //   240: aload_0        
        //   241: getfield        com/google/android/apps/analytics/PersistentHitStore.storeId:I
        //   244: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   247: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   250: aload_1        
        //   251: ldc_w           "session"
        //   254: aconst_null    
        //   255: aload           10
        //   257: invokevirtual   android/database/sqlite/SQLiteDatabase.insert:(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
        //   260: pop2           
        //   261: aconst_null    
        //   262: astore          7
        //   264: goto            129
        //   267: astore          4
        //   269: aconst_null    
        //   270: astore_3       
        //   271: ldc_w           "GoogleAnalyticsTracker"
        //   274: aload           4
        //   276: invokevirtual   android/database/sqlite/SQLiteException.toString:()Ljava/lang/String;
        //   279: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   282: pop            
        //   283: aload_3        
        //   284: ifnull          141
        //   287: aload_3        
        //   288: invokeinterface android/database/Cursor.close:()V
        //   293: return         
        //   294: astore_2       
        //   295: aconst_null    
        //   296: astore_3       
        //   297: aload_3        
        //   298: ifnull          307
        //   301: aload_3        
        //   302: invokeinterface android/database/Cursor.close:()V
        //   307: aload_2        
        //   308: athrow         
        //   309: astore          9
        //   311: aload           7
        //   313: astore_3       
        //   314: aload           9
        //   316: astore_2       
        //   317: goto            297
        //   320: astore_2       
        //   321: goto            297
        //   324: astore          8
        //   326: aload           7
        //   328: astore_3       
        //   329: aload           8
        //   331: astore          4
        //   333: goto            271
        //   336: iconst_1       
        //   337: istore          14
        //   339: goto            123
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  0      15     267    271    Landroid/database/sqlite/SQLiteException;
        //  0      15     294    297    Any
        //  19     105    324    336    Landroid/database/sqlite/SQLiteException;
        //  19     105    309    320    Any
        //  110    120    324    336    Landroid/database/sqlite/SQLiteException;
        //  110    120    309    320    Any
        //  123    129    324    336    Landroid/database/sqlite/SQLiteException;
        //  123    129    309    320    Any
        //  148    183    324    336    Landroid/database/sqlite/SQLiteException;
        //  148    183    309    320    Any
        //  183    261    267    271    Landroid/database/sqlite/SQLiteException;
        //  183    261    294    297    Any
        //  271    283    320    324    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 162, Size: 162
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
    
    public Event[] peekEvents(final int p0, final SQLiteDatabase p1, final int p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/util/ArrayList;
        //     3: dup            
        //     4: invokespecial   java/util/ArrayList.<init>:()V
        //     7: astore          4
        //     9: aload_2        
        //    10: ldc_w           "events"
        //    13: aconst_null    
        //    14: aconst_null    
        //    15: aconst_null    
        //    16: aconst_null    
        //    17: aconst_null    
        //    18: ldc             "event_id"
        //    20: iload_1        
        //    21: invokestatic    java/lang/Integer.toString:(I)Ljava/lang/String;
        //    24: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    27: astore          10
        //    29: aload           10
        //    31: invokeinterface android/database/Cursor.moveToNext:()Z
        //    36: ifeq            457
        //    39: aload           10
        //    41: bipush          8
        //    43: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    48: astore          11
        //    50: aload           10
        //    52: bipush          9
        //    54: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    59: astore          12
        //    61: ldc_w           "__##GOOGLEPAGEVIEW##__"
        //    64: aload           11
        //    66: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    69: ifeq            511
        //    72: aload           12
        //    74: astore          13
        //    76: aconst_null    
        //    77: astore          14
        //    79: new             Lcom/google/android/apps/analytics/Event;
        //    82: dup            
        //    83: aload           10
        //    85: iconst_0       
        //    86: invokeinterface android/database/Cursor.getLong:(I)J
        //    91: aload           10
        //    93: iconst_2       
        //    94: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    99: aload           10
        //   101: iconst_3       
        //   102: invokeinterface android/database/Cursor.getInt:(I)I
        //   107: aload           10
        //   109: iconst_4       
        //   110: invokeinterface android/database/Cursor.getInt:(I)I
        //   115: aload           10
        //   117: iconst_5       
        //   118: invokeinterface android/database/Cursor.getInt:(I)I
        //   123: aload           10
        //   125: bipush          6
        //   127: invokeinterface android/database/Cursor.getInt:(I)I
        //   132: aload           10
        //   134: bipush          7
        //   136: invokeinterface android/database/Cursor.getInt:(I)I
        //   141: aload           13
        //   143: aload           11
        //   145: aload           14
        //   147: aload           10
        //   149: bipush          10
        //   151: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   156: aload           10
        //   158: bipush          11
        //   160: invokeinterface android/database/Cursor.getInt:(I)I
        //   165: aload           10
        //   167: bipush          12
        //   169: invokeinterface android/database/Cursor.getInt:(I)I
        //   174: aload           10
        //   176: bipush          13
        //   178: invokeinterface android/database/Cursor.getInt:(I)I
        //   183: invokespecial   com/google/android/apps/analytics/Event.<init>:(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
        //   186: astore          15
        //   188: aload           15
        //   190: aload           10
        //   192: iconst_1       
        //   193: invokeinterface android/database/Cursor.getInt:(I)I
        //   198: invokevirtual   com/google/android/apps/analytics/Event.setUserId:(I)V
        //   201: aload           10
        //   203: aload           10
        //   205: ldc             "event_id"
        //   207: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   212: invokeinterface android/database/Cursor.getLong:(I)J
        //   217: lstore          16
        //   219: ldc_w           "__##GOOGLETRANSACTION##__"
        //   222: aload           15
        //   224: getfield        com/google/android/apps/analytics/Event.category:Ljava/lang/String;
        //   227: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   230: ifeq            334
        //   233: aload_0        
        //   234: lload           16
        //   236: aload_2        
        //   237: invokevirtual   com/google/android/apps/analytics/PersistentHitStore.getTransaction:(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/Transaction;
        //   240: astore          22
        //   242: aload           22
        //   244: ifnonnull       275
        //   247: ldc_w           "GoogleAnalyticsTracker"
        //   250: new             Ljava/lang/StringBuilder;
        //   253: dup            
        //   254: invokespecial   java/lang/StringBuilder.<init>:()V
        //   257: ldc_w           "missing expected transaction for event "
        //   260: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   263: lload           16
        //   265: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   268: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   271: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   274: pop            
        //   275: aload           15
        //   277: aload           22
        //   279: invokevirtual   com/google/android/apps/analytics/Event.setTransaction:(Lcom/google/android/apps/analytics/Transaction;)V
        //   282: aload           4
        //   284: aload           15
        //   286: invokeinterface java/util/List.add:(Ljava/lang/Object;)Z
        //   291: pop            
        //   292: goto            29
        //   295: astore          5
        //   297: aload           10
        //   299: astore          6
        //   301: ldc_w           "GoogleAnalyticsTracker"
        //   304: aload           5
        //   306: invokevirtual   android/database/sqlite/SQLiteException.toString:()Ljava/lang/String;
        //   309: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   312: pop            
        //   313: iconst_0       
        //   314: anewarray       Lcom/google/android/apps/analytics/Event;
        //   317: astore          9
        //   319: aload           6
        //   321: ifnull          331
        //   324: aload           6
        //   326: invokeinterface android/database/Cursor.close:()V
        //   331: aload           9
        //   333: areturn        
        //   334: ldc_w           "__##GOOGLEITEM##__"
        //   337: aload           15
        //   339: getfield        com/google/android/apps/analytics/Event.category:Ljava/lang/String;
        //   342: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   345: ifeq            421
        //   348: aload_0        
        //   349: lload           16
        //   351: aload_2        
        //   352: invokevirtual   com/google/android/apps/analytics/PersistentHitStore.getItem:(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/Item;
        //   355: astore          20
        //   357: aload           20
        //   359: ifnonnull       390
        //   362: ldc_w           "GoogleAnalyticsTracker"
        //   365: new             Ljava/lang/StringBuilder;
        //   368: dup            
        //   369: invokespecial   java/lang/StringBuilder.<init>:()V
        //   372: ldc_w           "missing expected item for event "
        //   375: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   378: lload           16
        //   380: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   383: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   386: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   389: pop            
        //   390: aload           15
        //   392: aload           20
        //   394: invokevirtual   com/google/android/apps/analytics/Event.setItem:(Lcom/google/android/apps/analytics/Item;)V
        //   397: goto            282
        //   400: astore          7
        //   402: aload           10
        //   404: astore          6
        //   406: aload           6
        //   408: ifnull          418
        //   411: aload           6
        //   413: invokeinterface android/database/Cursor.close:()V
        //   418: aload           7
        //   420: athrow         
        //   421: iload_3        
        //   422: iconst_1       
        //   423: if_icmple       445
        //   426: aload_0        
        //   427: lload           16
        //   429: aload_2        
        //   430: invokevirtual   com/google/android/apps/analytics/PersistentHitStore.getCustomVariables:(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/CustomVariableBuffer;
        //   433: astore          18
        //   435: aload           15
        //   437: aload           18
        //   439: invokevirtual   com/google/android/apps/analytics/Event.setCustomVariableBuffer:(Lcom/google/android/apps/analytics/CustomVariableBuffer;)V
        //   442: goto            282
        //   445: new             Lcom/google/android/apps/analytics/CustomVariableBuffer;
        //   448: dup            
        //   449: invokespecial   com/google/android/apps/analytics/CustomVariableBuffer.<init>:()V
        //   452: astore          18
        //   454: goto            435
        //   457: aload           10
        //   459: ifnull          469
        //   462: aload           10
        //   464: invokeinterface android/database/Cursor.close:()V
        //   469: aload           4
        //   471: aload           4
        //   473: invokeinterface java/util/List.size:()I
        //   478: anewarray       Lcom/google/android/apps/analytics/Event;
        //   481: invokeinterface java/util/List.toArray:([Ljava/lang/Object;)[Ljava/lang/Object;
        //   486: checkcast       [Lcom/google/android/apps/analytics/Event;
        //   489: areturn        
        //   490: astore          7
        //   492: aconst_null    
        //   493: astore          6
        //   495: goto            406
        //   498: astore          7
        //   500: goto            406
        //   503: astore          5
        //   505: aconst_null    
        //   506: astore          6
        //   508: goto            301
        //   511: aload           12
        //   513: astore          14
        //   515: aconst_null    
        //   516: astore          13
        //   518: goto            79
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  9      29     503    511    Landroid/database/sqlite/SQLiteException;
        //  9      29     490    498    Any
        //  29     72     295    301    Landroid/database/sqlite/SQLiteException;
        //  29     72     400    406    Any
        //  79     242    295    301    Landroid/database/sqlite/SQLiteException;
        //  79     242    400    406    Any
        //  247    275    295    301    Landroid/database/sqlite/SQLiteException;
        //  247    275    400    406    Any
        //  275    282    295    301    Landroid/database/sqlite/SQLiteException;
        //  275    282    400    406    Any
        //  282    292    295    301    Landroid/database/sqlite/SQLiteException;
        //  282    292    400    406    Any
        //  301    319    498    503    Any
        //  334    357    295    301    Landroid/database/sqlite/SQLiteException;
        //  334    357    400    406    Any
        //  362    390    295    301    Landroid/database/sqlite/SQLiteException;
        //  362    390    400    406    Any
        //  390    397    295    301    Landroid/database/sqlite/SQLiteException;
        //  390    397    400    406    Any
        //  426    435    295    301    Landroid/database/sqlite/SQLiteException;
        //  426    435    400    406    Any
        //  435    442    295    301    Landroid/database/sqlite/SQLiteException;
        //  435    442    400    406    Any
        //  445    454    295    301    Landroid/database/sqlite/SQLiteException;
        //  445    454    400    406    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0301:
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
    public Hit[] peekHits() {
        return this.peekHits(1000);
    }
    
    @Override
    public Hit[] peekHits(final int p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/util/ArrayList;
        //     3: dup            
        //     4: invokespecial   java/util/ArrayList.<init>:()V
        //     7: astore_2       
        //     8: aload_0        
        //     9: getfield        com/google/android/apps/analytics/PersistentHitStore.databaseHelper:Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;
        //    12: invokevirtual   com/google/android/apps/analytics/PersistentHitStore$DataBaseHelper.getReadableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //    15: ldc_w           "hits"
        //    18: aconst_null    
        //    19: aconst_null    
        //    20: aconst_null    
        //    21: aconst_null    
        //    22: aconst_null    
        //    23: ldc             "hit_id"
        //    25: iload_1        
        //    26: invokestatic    java/lang/Integer.toString:(I)Ljava/lang/String;
        //    29: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    32: astore          8
        //    34: aload           8
        //    36: invokeinterface android/database/Cursor.moveToNext:()Z
        //    41: ifeq            118
        //    44: aload_2        
        //    45: new             Lcom/google/android/apps/analytics/Hit;
        //    48: dup            
        //    49: aload           8
        //    51: iconst_1       
        //    52: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    57: aload           8
        //    59: iconst_0       
        //    60: invokeinterface android/database/Cursor.getLong:(I)J
        //    65: invokespecial   com/google/android/apps/analytics/Hit.<init>:(Ljava/lang/String;J)V
        //    68: invokeinterface java/util/List.add:(Ljava/lang/Object;)Z
        //    73: pop            
        //    74: goto            34
        //    77: astore          10
        //    79: aload           8
        //    81: astore          4
        //    83: aload           10
        //    85: astore_3       
        //    86: ldc_w           "GoogleAnalyticsTracker"
        //    89: aload_3        
        //    90: invokevirtual   android/database/sqlite/SQLiteException.toString:()Ljava/lang/String;
        //    93: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    96: pop            
        //    97: iconst_0       
        //    98: anewarray       Lcom/google/android/apps/analytics/Hit;
        //   101: astore          7
        //   103: aload           4
        //   105: ifnull          115
        //   108: aload           4
        //   110: invokeinterface android/database/Cursor.close:()V
        //   115: aload           7
        //   117: areturn        
        //   118: aload           8
        //   120: ifnull          130
        //   123: aload           8
        //   125: invokeinterface android/database/Cursor.close:()V
        //   130: aload_2        
        //   131: aload_2        
        //   132: invokeinterface java/util/List.size:()I
        //   137: anewarray       Lcom/google/android/apps/analytics/Hit;
        //   140: invokeinterface java/util/List.toArray:([Ljava/lang/Object;)[Ljava/lang/Object;
        //   145: checkcast       [Lcom/google/android/apps/analytics/Hit;
        //   148: areturn        
        //   149: astore          5
        //   151: aconst_null    
        //   152: astore          4
        //   154: aload           4
        //   156: ifnull          166
        //   159: aload           4
        //   161: invokeinterface android/database/Cursor.close:()V
        //   166: aload           5
        //   168: athrow         
        //   169: astore          9
        //   171: aload           8
        //   173: astore          4
        //   175: aload           9
        //   177: astore          5
        //   179: goto            154
        //   182: astore          5
        //   184: goto            154
        //   187: astore_3       
        //   188: aconst_null    
        //   189: astore          4
        //   191: goto            86
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  8      34     187    194    Landroid/database/sqlite/SQLiteException;
        //  8      34     149    154    Any
        //  34     74     77     86     Landroid/database/sqlite/SQLiteException;
        //  34     74     169    182    Any
        //  86     103    182    187    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0086:
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
    
    void putCustomVariables(final Event event, final SQLiteDatabase sqLiteDatabase) {
        if (!"__##GOOGLEITEM##__".equals(event.category) && !"__##GOOGLETRANSACTION##__".equals(event.category)) {
            CustomVariableBuffer customVariableBuffer = event.getCustomVariableBuffer();
            if (this.useStoredVisitorVars) {
                if (customVariableBuffer == null) {
                    customVariableBuffer = new CustomVariableBuffer();
                    event.setCustomVariableBuffer(customVariableBuffer);
                }
                for (int i = 1; i <= 50; ++i) {
                    final CustomVariable customVariable = this.visitorCVCache.getCustomVariableAt(i);
                    final CustomVariable customVariable2 = customVariableBuffer.getCustomVariableAt(i);
                    if (customVariable != null && customVariable2 == null) {
                        customVariableBuffer.setCustomVariable(customVariable);
                    }
                }
                this.useStoredVisitorVars = false;
            }
            if (customVariableBuffer != null) {
                for (int j = 1; j <= 50; ++j) {
                    if (!customVariableBuffer.isIndexAvailable(j)) {
                        final CustomVariable customVariable3 = customVariableBuffer.getCustomVariableAt(j);
                        sqLiteDatabase.delete("custom_var_visitor_cache", "cv_index = ?", new String[] { Integer.toString(customVariable3.getIndex()) });
                        if (customVariable3.getScope() == 1) {
                            final ContentValues contentValues = new ContentValues();
                            contentValues.put("cv_index", customVariable3.getIndex());
                            contentValues.put("cv_name", customVariable3.getName());
                            contentValues.put("cv_value", customVariable3.getValue());
                            sqLiteDatabase.insert("custom_var_visitor_cache", (String)null, contentValues);
                            this.visitorCVCache.setCustomVariable(customVariable3);
                        }
                        else {
                            this.visitorCVCache.clearCustomVariableAt(customVariable3.getIndex());
                        }
                    }
                }
            }
        }
    }
    
    @Override
    public void putEvent(final Event p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/apps/analytics/PersistentHitStore.numStoredHits:I
        //     4: sipush          1000
        //     7: if_icmplt       21
        //    10: ldc_w           "GoogleAnalyticsTracker"
        //    13: ldc_w           "Store full. Not storing last event."
        //    16: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //    19: pop            
        //    20: return         
        //    21: aload_0        
        //    22: getfield        com/google/android/apps/analytics/PersistentHitStore.sampleRate:I
        //    25: bipush          100
        //    27: if_icmpeq       89
        //    30: aload_1        
        //    31: invokevirtual   com/google/android/apps/analytics/Event.getUserId:()I
        //    34: iconst_m1      
        //    35: if_icmpne       80
        //    38: aload_0        
        //    39: getfield        com/google/android/apps/analytics/PersistentHitStore.storeId:I
        //    42: istore          12
        //    44: iload           12
        //    46: sipush          10000
        //    49: irem           
        //    50: bipush          100
        //    52: aload_0        
        //    53: getfield        com/google/android/apps/analytics/PersistentHitStore.sampleRate:I
        //    56: imul           
        //    57: if_icmplt       89
        //    60: invokestatic    com/google/android/apps/analytics/GoogleAnalyticsTracker.getInstance:()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
        //    63: invokevirtual   com/google/android/apps/analytics/GoogleAnalyticsTracker.getDebug:()Z
        //    66: ifeq            20
        //    69: ldc_w           "GoogleAnalyticsTracker"
        //    72: ldc_w           "User has been sampled out. Aborting hit."
        //    75: invokestatic    android/util/Log.v:(Ljava/lang/String;Ljava/lang/String;)I
        //    78: pop            
        //    79: return         
        //    80: aload_1        
        //    81: invokevirtual   com/google/android/apps/analytics/Event.getUserId:()I
        //    84: istore          12
        //    86: goto            44
        //    89: aload_0        
        //    90: monitorenter   
        //    91: aload_0        
        //    92: getfield        com/google/android/apps/analytics/PersistentHitStore.databaseHelper:Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;
        //    95: invokevirtual   com/google/android/apps/analytics/PersistentHitStore$DataBaseHelper.getWritableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //    98: astore          5
        //   100: aload           5
        //   102: invokevirtual   android/database/sqlite/SQLiteDatabase.beginTransaction:()V
        //   105: aload_0        
        //   106: getfield        com/google/android/apps/analytics/PersistentHitStore.sessionStarted:Z
        //   109: ifne            118
        //   112: aload_0        
        //   113: aload           5
        //   115: invokevirtual   com/google/android/apps/analytics/PersistentHitStore.storeUpdatedSession:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   118: aload_0        
        //   119: aload_1        
        //   120: aload           5
        //   122: iconst_1       
        //   123: invokespecial   com/google/android/apps/analytics/PersistentHitStore.putEvent:(Lcom/google/android/apps/analytics/Event;Landroid/database/sqlite/SQLiteDatabase;Z)V
        //   126: aload           5
        //   128: invokevirtual   android/database/sqlite/SQLiteDatabase.setTransactionSuccessful:()V
        //   131: aload           5
        //   133: invokevirtual   android/database/sqlite/SQLiteDatabase.inTransaction:()Z
        //   136: ifeq            145
        //   139: aload           5
        //   141: invokestatic    com/google/android/apps/analytics/PersistentHitStore.endTransaction:(Landroid/database/sqlite/SQLiteDatabase;)Z
        //   144: pop            
        //   145: aload_0        
        //   146: monitorexit    
        //   147: return         
        //   148: astore          4
        //   150: aload_0        
        //   151: monitorexit    
        //   152: aload           4
        //   154: athrow         
        //   155: astore_2       
        //   156: ldc_w           "GoogleAnalyticsTracker"
        //   159: new             Ljava/lang/StringBuilder;
        //   162: dup            
        //   163: invokespecial   java/lang/StringBuilder.<init>:()V
        //   166: ldc_w           "Can't get db: "
        //   169: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   172: aload_2        
        //   173: invokevirtual   android/database/sqlite/SQLiteException.toString:()Ljava/lang/String;
        //   176: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   179: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   182: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   185: pop            
        //   186: aload_0        
        //   187: monitorexit    
        //   188: return         
        //   189: astore          8
        //   191: ldc_w           "GoogleAnalyticsTracker"
        //   194: new             Ljava/lang/StringBuilder;
        //   197: dup            
        //   198: invokespecial   java/lang/StringBuilder.<init>:()V
        //   201: ldc_w           "putEventOuter:"
        //   204: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   207: aload           8
        //   209: invokevirtual   android/database/sqlite/SQLiteException.toString:()Ljava/lang/String;
        //   212: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   215: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   218: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   221: pop            
        //   222: aload           5
        //   224: invokevirtual   android/database/sqlite/SQLiteDatabase.inTransaction:()Z
        //   227: ifeq            145
        //   230: aload           5
        //   232: invokestatic    com/google/android/apps/analytics/PersistentHitStore.endTransaction:(Landroid/database/sqlite/SQLiteDatabase;)Z
        //   235: pop            
        //   236: goto            145
        //   239: astore          6
        //   241: aload           5
        //   243: invokevirtual   android/database/sqlite/SQLiteDatabase.inTransaction:()Z
        //   246: ifeq            255
        //   249: aload           5
        //   251: invokestatic    com/google/android/apps/analytics/PersistentHitStore.endTransaction:(Landroid/database/sqlite/SQLiteDatabase;)Z
        //   254: pop            
        //   255: aload           6
        //   257: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  91     100    155    189    Landroid/database/sqlite/SQLiteException;
        //  91     100    148    155    Any
        //  100    118    189    239    Landroid/database/sqlite/SQLiteException;
        //  100    118    239    258    Any
        //  118    131    189    239    Landroid/database/sqlite/SQLiteException;
        //  118    131    239    258    Any
        //  131    145    148    155    Any
        //  145    147    148    155    Any
        //  150    152    148    155    Any
        //  156    188    148    155    Any
        //  191    222    239    258    Any
        //  222    236    148    155    Any
        //  241    255    148    155    Any
        //  255    258    148    155    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0118:
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
    
    Referrer readCurrentReferrer(final SQLiteDatabase p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     1: ldc             "referrer"
        //     3: iconst_4       
        //     4: anewarray       Ljava/lang/String;
        //     7: dup            
        //     8: iconst_0       
        //     9: ldc             "referrer"
        //    11: aastore        
        //    12: dup            
        //    13: iconst_1       
        //    14: ldc             "timestamp_referrer"
        //    16: aastore        
        //    17: dup            
        //    18: iconst_2       
        //    19: ldc             "referrer_visit"
        //    21: aastore        
        //    22: dup            
        //    23: iconst_3       
        //    24: ldc             "referrer_index"
        //    26: aastore        
        //    27: aconst_null    
        //    28: aconst_null    
        //    29: aconst_null    
        //    30: aconst_null    
        //    31: aconst_null    
        //    32: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    35: astore          6
        //    37: aload           6
        //    39: invokeinterface android/database/Cursor.moveToFirst:()Z
        //    44: ifeq            209
        //    47: aload           6
        //    49: aload           6
        //    51: ldc             "timestamp_referrer"
        //    53: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    58: invokeinterface android/database/Cursor.getLong:(I)J
        //    63: lstore          8
        //    65: aload           6
        //    67: aload           6
        //    69: ldc             "referrer_visit"
        //    71: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    76: invokeinterface android/database/Cursor.getInt:(I)I
        //    81: istore          10
        //    83: aload           6
        //    85: aload           6
        //    87: ldc             "referrer_index"
        //    89: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    94: invokeinterface android/database/Cursor.getInt:(I)I
        //    99: istore          11
        //   101: new             Lcom/google/android/apps/analytics/Referrer;
        //   104: dup            
        //   105: aload           6
        //   107: aload           6
        //   109: ldc             "referrer"
        //   111: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   116: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   121: lload           8
        //   123: iload           10
        //   125: iload           11
        //   127: invokespecial   com/google/android/apps/analytics/Referrer.<init>:(Ljava/lang/String;JII)V
        //   130: astore          7
        //   132: aload           6
        //   134: ifnull          144
        //   137: aload           6
        //   139: invokeinterface android/database/Cursor.close:()V
        //   144: aload           7
        //   146: areturn        
        //   147: astore          4
        //   149: aconst_null    
        //   150: astore_3       
        //   151: ldc_w           "GoogleAnalyticsTracker"
        //   154: aload           4
        //   156: invokevirtual   android/database/sqlite/SQLiteException.toString:()Ljava/lang/String;
        //   159: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   162: pop            
        //   163: aload_3        
        //   164: ifnull          173
        //   167: aload_3        
        //   168: invokeinterface android/database/Cursor.close:()V
        //   173: aconst_null    
        //   174: areturn        
        //   175: astore_2       
        //   176: aconst_null    
        //   177: astore_3       
        //   178: aload_3        
        //   179: ifnull          188
        //   182: aload_3        
        //   183: invokeinterface android/database/Cursor.close:()V
        //   188: aload_2        
        //   189: athrow         
        //   190: astore_2       
        //   191: aload           6
        //   193: astore_3       
        //   194: goto            178
        //   197: astore_2       
        //   198: goto            178
        //   201: astore          4
        //   203: aload           6
        //   205: astore_3       
        //   206: goto            151
        //   209: aconst_null    
        //   210: astore          7
        //   212: goto            132
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  0      37     147    151    Landroid/database/sqlite/SQLiteException;
        //  0      37     175    178    Any
        //  37     132    201    209    Landroid/database/sqlite/SQLiteException;
        //  37     132    190    197    Any
        //  151    163    197    201    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 102, Size: 102
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
    
    @Override
    public void setAnonymizeIp(final boolean anonymizeIp) {
        this.anonymizeIp = anonymizeIp;
    }
    
    @Override
    public boolean setReferrer(final String s) {
        final String formatReferrer = formatReferrer(s);
        if (formatReferrer == null) {
            return false;
        }
        while (true) {
            while (true) {
                Label_0141: {
                    try {
                        final SQLiteDatabase writableDatabase = this.databaseHelper.getWritableDatabase();
                        final Referrer currentReferrer = this.readCurrentReferrer(writableDatabase);
                        final ContentValues contentValues = new ContentValues();
                        contentValues.put("referrer", formatReferrer);
                        contentValues.put("timestamp_referrer", 0L);
                        contentValues.put("referrer_visit", 0);
                        if (currentReferrer == null) {
                            break Label_0141;
                        }
                        long l = currentReferrer.getIndex();
                        if (currentReferrer.getTimeStamp() > 0L) {
                            ++l;
                        }
                        contentValues.put("referrer_index", l);
                        if (this.setReferrerDatabase(writableDatabase, contentValues)) {
                            this.startNewVisit();
                            return true;
                        }
                    }
                    catch (SQLiteException ex) {
                        Log.e("GoogleAnalyticsTracker", ex.toString());
                        return false;
                    }
                    break;
                }
                long l = 1L;
                continue;
            }
        }
        return false;
    }
    
    @Override
    public void setSampleRate(final int sampleRate) {
        this.sampleRate = sampleRate;
    }
    
    @Override
    public void startNewVisit() {
        synchronized (this) {
            this.sessionStarted = false;
            this.useStoredVisitorVars = true;
            this.numStoredHits = this.getNumStoredHitsFromDb();
        }
    }
    
    void storeUpdatedSession(final SQLiteDatabase sqLiteDatabase) {
        final SQLiteDatabase writableDatabase = this.databaseHelper.getWritableDatabase();
        writableDatabase.delete("session", (String)null, (String[])null);
        if (this.timestampFirst == 0L) {
            final long timestampCurrent = System.currentTimeMillis() / 1000L;
            this.timestampFirst = timestampCurrent;
            this.timestampPrevious = timestampCurrent;
            this.timestampCurrent = timestampCurrent;
            this.visits = 1;
        }
        else {
            this.timestampPrevious = this.timestampCurrent;
            this.timestampCurrent = System.currentTimeMillis() / 1000L;
            if (this.timestampCurrent == this.timestampPrevious) {
                ++this.timestampCurrent;
            }
            ++this.visits;
        }
        final ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp_first", this.timestampFirst);
        contentValues.put("timestamp_previous", this.timestampPrevious);
        contentValues.put("timestamp_current", this.timestampCurrent);
        contentValues.put("visits", this.visits);
        contentValues.put("store_id", this.storeId);
        writableDatabase.insert("session", (String)null, contentValues);
        this.sessionStarted = true;
    }
    
    void writeEventToDatabase(final Event event, final Referrer referrer, final SQLiteDatabase sqLiteDatabase, final boolean b) throws SQLiteException {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", HitBuilder.constructHitRequestPath(event, referrer));
        long currentTimeMillis;
        if (b) {
            currentTimeMillis = System.currentTimeMillis();
        }
        else {
            currentTimeMillis = 0L;
        }
        contentValues.put("hit_time", currentTimeMillis);
        sqLiteDatabase.insert("hits", (String)null, contentValues);
        ++this.numStoredHits;
    }
    
    static class DataBaseHelper extends SQLiteOpenHelper
    {
        private final int databaseVersion;
        private final PersistentHitStore store;
        
        public DataBaseHelper(final Context context, final PersistentHitStore persistentHitStore) {
            this(context, "google_analytics.db", 6, persistentHitStore);
        }
        
        DataBaseHelper(final Context context, final String s, final int databaseVersion, final PersistentHitStore store) {
            super(context, s, (SQLiteDatabase$CursorFactory)null, databaseVersion);
            this.databaseVersion = databaseVersion;
            this.store = store;
        }
        
        public DataBaseHelper(final Context context, final String s, final PersistentHitStore persistentHitStore) {
            this(context, s, 6, persistentHitStore);
        }
        
        private void createECommerceTables(final SQLiteDatabase sqLiteDatabase) {
            sqLiteDatabase.execSQL("DROP TABLE IF EXISTS transaction_events;");
            sqLiteDatabase.execSQL(PersistentHitStore.CREATE_TRANSACTION_EVENTS_TABLE);
            sqLiteDatabase.execSQL("DROP TABLE IF EXISTS item_events;");
            sqLiteDatabase.execSQL(PersistentHitStore.CREATE_ITEM_EVENTS_TABLE);
        }
        
        private void createHitTable(final SQLiteDatabase sqLiteDatabase) {
            sqLiteDatabase.execSQL("DROP TABLE IF EXISTS hits;");
            sqLiteDatabase.execSQL(PersistentHitStore.CREATE_HITS_TABLE);
        }
        
        private void createReferrerTable(final SQLiteDatabase sqLiteDatabase) {
            sqLiteDatabase.execSQL("DROP TABLE IF EXISTS referrer;");
            sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS referrer (referrer TEXT PRIMARY KEY NOT NULL,timestamp_referrer INTEGER NOT NULL,referrer_visit INTEGER NOT NULL DEFAULT 1,referrer_index INTEGER NOT NULL DEFAULT 1);");
        }
        
        private void fixCVTables(final SQLiteDatabase sqLiteDatabase) {
            if (!this.tablePresent(PersistentHitStore.CREATE_CUSTOM_VAR_VISITOR_CACHE_TABLE, sqLiteDatabase)) {
                sqLiteDatabase.execSQL(PersistentHitStore.CREATE_CUSTOM_VAR_VISITOR_CACHE_TABLE);
            }
        }
        
        private void fixReferrerTable(final SQLiteDatabase p0) {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     0: aload_1        
            //     1: ldc             "referrer"
            //     3: aconst_null    
            //     4: aconst_null    
            //     5: aconst_null    
            //     6: aconst_null    
            //     7: aconst_null    
            //     8: aconst_null    
            //     9: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
            //    12: astore          8
            //    14: aload           8
            //    16: invokeinterface android/database/Cursor.getColumnNames:()[Ljava/lang/String;
            //    21: astore          9
            //    23: iconst_0       
            //    24: istore          10
            //    26: iconst_0       
            //    27: istore          11
            //    29: iconst_0       
            //    30: istore          12
            //    32: iload           10
            //    34: aload           9
            //    36: arraylength    
            //    37: if_icmpge       422
            //    40: aload           9
            //    42: iload           10
            //    44: aaload         
            //    45: ldc             "referrer_index"
            //    47: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
            //    50: ifeq            59
            //    53: iconst_1       
            //    54: istore          12
            //    56: goto            416
            //    59: aload           9
            //    61: iload           10
            //    63: aaload         
            //    64: ldc             "referrer_visit"
            //    66: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
            //    69: ifeq            416
            //    72: iconst_1       
            //    73: istore          11
            //    75: goto            416
            //    78: aload           8
            //    80: invokeinterface android/database/Cursor.moveToFirst:()Z
            //    85: ifeq            410
            //    88: aload           8
            //    90: ldc             "referrer_visit"
            //    92: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
            //    97: istore          18
            //    99: aload           8
            //   101: ldc             "referrer_index"
            //   103: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
            //   108: istore          19
            //   110: aload           8
            //   112: aload           8
            //   114: ldc             "referrer"
            //   116: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
            //   121: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
            //   126: astore          20
            //   128: aload           8
            //   130: aload           8
            //   132: ldc             "timestamp_referrer"
            //   134: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
            //   139: invokeinterface android/database/Cursor.getLong:(I)J
            //   144: lstore          21
            //   146: iload           18
            //   148: iconst_m1      
            //   149: if_icmpne       294
            //   152: iconst_1       
            //   153: istore          23
            //   155: goto            435
            //   158: new             Lcom/google/android/apps/analytics/Referrer;
            //   161: dup            
            //   162: aload           20
            //   164: lload           21
            //   166: iload           23
            //   168: iload           25
            //   170: invokespecial   com/google/android/apps/analytics/Referrer.<init>:(Ljava/lang/String;JII)V
            //   173: astore          13
            //   175: aload_1        
            //   176: invokevirtual   android/database/sqlite/SQLiteDatabase.beginTransaction:()V
            //   179: aload_0        
            //   180: aload_1        
            //   181: invokespecial   com/google/android/apps/analytics/PersistentHitStore$DataBaseHelper.createReferrerTable:(Landroid/database/sqlite/SQLiteDatabase;)V
            //   184: aload           13
            //   186: ifnull          265
            //   189: new             Landroid/content/ContentValues;
            //   192: dup            
            //   193: invokespecial   android/content/ContentValues.<init>:()V
            //   196: astore          14
            //   198: aload           14
            //   200: ldc             "referrer"
            //   202: aload           13
            //   204: invokevirtual   com/google/android/apps/analytics/Referrer.getReferrerString:()Ljava/lang/String;
            //   207: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
            //   210: aload           14
            //   212: ldc             "timestamp_referrer"
            //   214: aload           13
            //   216: invokevirtual   com/google/android/apps/analytics/Referrer.getTimeStamp:()J
            //   219: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
            //   222: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
            //   225: aload           14
            //   227: ldc             "referrer_visit"
            //   229: aload           13
            //   231: invokevirtual   com/google/android/apps/analytics/Referrer.getVisit:()I
            //   234: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
            //   237: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
            //   240: aload           14
            //   242: ldc             "referrer_index"
            //   244: aload           13
            //   246: invokevirtual   com/google/android/apps/analytics/Referrer.getIndex:()I
            //   249: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
            //   252: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
            //   255: aload_1        
            //   256: ldc             "referrer"
            //   258: aconst_null    
            //   259: aload           14
            //   261: invokevirtual   android/database/sqlite/SQLiteDatabase.insert:(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
            //   264: pop2           
            //   265: aload_1        
            //   266: invokevirtual   android/database/sqlite/SQLiteDatabase.setTransactionSuccessful:()V
            //   269: aload           8
            //   271: ifnull          281
            //   274: aload           8
            //   276: invokeinterface android/database/Cursor.close:()V
            //   281: aload_1        
            //   282: invokevirtual   android/database/sqlite/SQLiteDatabase.inTransaction:()Z
            //   285: ifeq            293
            //   288: aload_1        
            //   289: invokestatic    com/google/android/apps/analytics/PersistentHitStore.access$1000:(Landroid/database/sqlite/SQLiteDatabase;)Z
            //   292: pop            
            //   293: return         
            //   294: aload           8
            //   296: iload           18
            //   298: invokeinterface android/database/Cursor.getInt:(I)I
            //   303: istore          23
            //   305: goto            435
            //   308: aload           8
            //   310: iload           19
            //   312: invokeinterface android/database/Cursor.getInt:(I)I
            //   317: istore          24
            //   319: iload           24
            //   321: istore          25
            //   323: goto            158
            //   326: astore          5
            //   328: aconst_null    
            //   329: astore_3       
            //   330: ldc             "GoogleAnalyticsTracker"
            //   332: aload           5
            //   334: invokevirtual   android/database/sqlite/SQLiteException.toString:()Ljava/lang/String;
            //   337: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
            //   340: pop            
            //   341: aload_3        
            //   342: ifnull          351
            //   345: aload_3        
            //   346: invokeinterface android/database/Cursor.close:()V
            //   351: aload_1        
            //   352: invokevirtual   android/database/sqlite/SQLiteDatabase.inTransaction:()Z
            //   355: ifeq            293
            //   358: aload_1        
            //   359: invokestatic    com/google/android/apps/analytics/PersistentHitStore.access$1000:(Landroid/database/sqlite/SQLiteDatabase;)Z
            //   362: pop            
            //   363: return         
            //   364: astore_2       
            //   365: aconst_null    
            //   366: astore_3       
            //   367: aload_3        
            //   368: ifnull          377
            //   371: aload_3        
            //   372: invokeinterface android/database/Cursor.close:()V
            //   377: aload_1        
            //   378: invokevirtual   android/database/sqlite/SQLiteDatabase.inTransaction:()Z
            //   381: ifeq            389
            //   384: aload_1        
            //   385: invokestatic    com/google/android/apps/analytics/PersistentHitStore.access$1000:(Landroid/database/sqlite/SQLiteDatabase;)Z
            //   388: pop            
            //   389: aload_2        
            //   390: athrow         
            //   391: astore_2       
            //   392: aload           8
            //   394: astore_3       
            //   395: goto            367
            //   398: astore_2       
            //   399: goto            367
            //   402: astore          5
            //   404: aload           8
            //   406: astore_3       
            //   407: goto            330
            //   410: aconst_null    
            //   411: astore          13
            //   413: goto            175
            //   416: iinc            10, 1
            //   419: goto            32
            //   422: iload           12
            //   424: ifeq            78
            //   427: iload           11
            //   429: ifne            269
            //   432: goto            78
            //   435: iload           19
            //   437: iconst_m1      
            //   438: if_icmpne       308
            //   441: iconst_1       
            //   442: istore          25
            //   444: goto            158
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                                     
            //  -----  -----  -----  -----  -----------------------------------------
            //  0      14     326    330    Landroid/database/sqlite/SQLiteException;
            //  0      14     364    367    Any
            //  14     23     402    410    Landroid/database/sqlite/SQLiteException;
            //  14     23     391    398    Any
            //  32     53     402    410    Landroid/database/sqlite/SQLiteException;
            //  32     53     391    398    Any
            //  59     72     402    410    Landroid/database/sqlite/SQLiteException;
            //  59     72     391    398    Any
            //  78     146    402    410    Landroid/database/sqlite/SQLiteException;
            //  78     146    391    398    Any
            //  158    175    402    410    Landroid/database/sqlite/SQLiteException;
            //  158    175    391    398    Any
            //  175    184    402    410    Landroid/database/sqlite/SQLiteException;
            //  175    184    391    398    Any
            //  189    265    402    410    Landroid/database/sqlite/SQLiteException;
            //  189    265    391    398    Any
            //  265    269    402    410    Landroid/database/sqlite/SQLiteException;
            //  265    269    391    398    Any
            //  294    305    402    410    Landroid/database/sqlite/SQLiteException;
            //  294    305    391    398    Any
            //  308    319    402    410    Landroid/database/sqlite/SQLiteException;
            //  308    319    391    398    Any
            //  330    341    398    402    Any
            // 
            // The error that occurred was:
            // 
            // java.lang.IndexOutOfBoundsException: Index: 203, Size: 203
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
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:556)
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
        
        private void migrateEventsToHits(final SQLiteDatabase sqLiteDatabase, final int n) {
            this.store.loadExistingSession(sqLiteDatabase);
            this.store.visitorCVCache = this.store.getVisitorVarBuffer(sqLiteDatabase);
            final Event[] peekEvents = this.store.peekEvents(1000, sqLiteDatabase, n);
            for (int i = 0; i < peekEvents.length; ++i) {
                this.store.putEvent(peekEvents[i], sqLiteDatabase, false);
            }
            sqLiteDatabase.execSQL("DELETE from events;");
            sqLiteDatabase.execSQL("DELETE from item_events;");
            sqLiteDatabase.execSQL("DELETE from transaction_events;");
            sqLiteDatabase.execSQL("DELETE from custom_variables;");
        }
        
        private void migratePreV4Referrer(final SQLiteDatabase p0) {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     0: aload_1        
            //     1: ldc             "install_referrer"
            //     3: iconst_1       
            //     4: anewarray       Ljava/lang/String;
            //     7: dup            
            //     8: iconst_0       
            //     9: ldc             "referrer"
            //    11: aastore        
            //    12: aconst_null    
            //    13: aconst_null    
            //    14: aconst_null    
            //    15: aconst_null    
            //    16: aconst_null    
            //    17: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
            //    20: astore          7
            //    22: aload           7
            //    24: invokeinterface android/database/Cursor.moveToFirst:()Z
            //    29: ifeq            308
            //    32: aload           7
            //    34: iconst_0       
            //    35: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
            //    40: astore          9
            //    42: aload_1        
            //    43: ldc             "session"
            //    45: aconst_null    
            //    46: aconst_null    
            //    47: aconst_null    
            //    48: aconst_null    
            //    49: aconst_null    
            //    50: aconst_null    
            //    51: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
            //    54: astore          10
            //    56: aload           10
            //    58: astore          8
            //    60: aload           8
            //    62: invokeinterface android/database/Cursor.moveToFirst:()Z
            //    67: ifeq            302
            //    70: aload           8
            //    72: iconst_0       
            //    73: invokeinterface android/database/Cursor.getLong:(I)J
            //    78: lstore          15
            //    80: new             Landroid/content/ContentValues;
            //    83: dup            
            //    84: invokespecial   android/content/ContentValues.<init>:()V
            //    87: astore          17
            //    89: aload           17
            //    91: ldc             "referrer"
            //    93: aload           9
            //    95: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
            //    98: aload           17
            //   100: ldc             "timestamp_referrer"
            //   102: lload           15
            //   104: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
            //   107: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
            //   110: aload           17
            //   112: ldc             "referrer_visit"
            //   114: iconst_1       
            //   115: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
            //   118: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
            //   121: aload           17
            //   123: ldc             "referrer_index"
            //   125: iconst_1       
            //   126: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
            //   129: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
            //   132: aload_1        
            //   133: ldc             "referrer"
            //   135: aconst_null    
            //   136: aload           17
            //   138: invokevirtual   android/database/sqlite/SQLiteDatabase.insert:(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
            //   141: pop2           
            //   142: aload           7
            //   144: ifnull          154
            //   147: aload           7
            //   149: invokeinterface android/database/Cursor.close:()V
            //   154: aload           8
            //   156: ifnull          166
            //   159: aload           8
            //   161: invokeinterface android/database/Cursor.close:()V
            //   166: return         
            //   167: astore          5
            //   169: aconst_null    
            //   170: astore_3       
            //   171: aconst_null    
            //   172: astore          4
            //   174: ldc             "GoogleAnalyticsTracker"
            //   176: aload           5
            //   178: invokevirtual   android/database/sqlite/SQLiteException.toString:()Ljava/lang/String;
            //   181: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
            //   184: pop            
            //   185: aload           4
            //   187: ifnull          197
            //   190: aload           4
            //   192: invokeinterface android/database/Cursor.close:()V
            //   197: aload_3        
            //   198: ifnull          166
            //   201: aload_3        
            //   202: invokeinterface android/database/Cursor.close:()V
            //   207: return         
            //   208: astore_2       
            //   209: aconst_null    
            //   210: astore_3       
            //   211: aconst_null    
            //   212: astore          4
            //   214: aload           4
            //   216: ifnull          226
            //   219: aload           4
            //   221: invokeinterface android/database/Cursor.close:()V
            //   226: aload_3        
            //   227: ifnull          236
            //   230: aload_3        
            //   231: invokeinterface android/database/Cursor.close:()V
            //   236: aload_2        
            //   237: athrow         
            //   238: astore_2       
            //   239: aload           7
            //   241: astore          4
            //   243: aconst_null    
            //   244: astore_3       
            //   245: goto            214
            //   248: astore          13
            //   250: aload           7
            //   252: astore          4
            //   254: aload           8
            //   256: astore          14
            //   258: aload           13
            //   260: astore_2       
            //   261: aload           14
            //   263: astore_3       
            //   264: goto            214
            //   267: astore_2       
            //   268: goto            214
            //   271: astore          5
            //   273: aload           7
            //   275: astore          4
            //   277: aconst_null    
            //   278: astore_3       
            //   279: goto            174
            //   282: astore          11
            //   284: aload           7
            //   286: astore          4
            //   288: aload           8
            //   290: astore          12
            //   292: aload           11
            //   294: astore          5
            //   296: aload           12
            //   298: astore_3       
            //   299: goto            174
            //   302: lconst_0       
            //   303: lstore          15
            //   305: goto            80
            //   308: aconst_null    
            //   309: astore          8
            //   311: goto            142
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                                     
            //  -----  -----  -----  -----  -----------------------------------------
            //  0      22     167    174    Landroid/database/sqlite/SQLiteException;
            //  0      22     208    214    Any
            //  22     56     271    282    Landroid/database/sqlite/SQLiteException;
            //  22     56     238    248    Any
            //  60     80     282    302    Landroid/database/sqlite/SQLiteException;
            //  60     80     248    267    Any
            //  80     142    282    302    Landroid/database/sqlite/SQLiteException;
            //  80     142    248    267    Any
            //  174    185    267    271    Any
            // 
            // The error that occurred was:
            // 
            // java.lang.IndexOutOfBoundsException: Index: 153, Size: 153
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
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:556)
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
        
        private void migrateVisitorLevelCustomVars(final SQLiteDatabase sqLiteDatabase) {
            final Cursor query = sqLiteDatabase.query("custom_var_cache", (String[])null, "cv_scope= ?", new String[] { Integer.toString(1) }, (String)null, (String)null, (String)null);
            while (query.moveToNext()) {
                final int int1 = query.getInt(query.getColumnIndex("cv_index"));
                final String string = query.getString(query.getColumnIndex("cv_name"));
                final String string2 = query.getString(query.getColumnIndex("cv_value"));
                if (int1 > 0 && int1 <= 50) {
                    final ContentValues contentValues = new ContentValues();
                    contentValues.put("cv_index", int1);
                    contentValues.put("cv_name", string);
                    contentValues.put("cv_value", string2);
                    sqLiteDatabase.insert("custom_var_visitor_cache", (String)null, contentValues);
                }
            }
            if (query != null) {
                query.close();
            }
        }
        
        private boolean tablePresent(final String p0, final SQLiteDatabase p1) {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     0: aload_2        
            //     1: ldc             "SQLITE_MASTER"
            //     3: iconst_1       
            //     4: anewarray       Ljava/lang/String;
            //     7: dup            
            //     8: iconst_0       
            //     9: ldc             "name"
            //    11: aastore        
            //    12: ldc             "name=?"
            //    14: iconst_1       
            //    15: anewarray       Ljava/lang/String;
            //    18: dup            
            //    19: iconst_0       
            //    20: aload_1        
            //    21: aastore        
            //    22: aconst_null    
            //    23: aconst_null    
            //    24: aconst_null    
            //    25: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
            //    28: astore          9
            //    30: aload           9
            //    32: astore          6
            //    34: aload           6
            //    36: invokeinterface android/database/Cursor.moveToFirst:()Z
            //    41: istore          11
            //    43: aload           6
            //    45: ifnull          55
            //    48: aload           6
            //    50: invokeinterface android/database/Cursor.close:()V
            //    55: iload           11
            //    57: ireturn        
            //    58: astore          5
            //    60: aconst_null    
            //    61: astore          6
            //    63: ldc             "GoogleAnalyticsTracker"
            //    65: new             Ljava/lang/StringBuilder;
            //    68: dup            
            //    69: invokespecial   java/lang/StringBuilder.<init>:()V
            //    72: ldc             "error querying for table "
            //    74: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //    77: aload_1        
            //    78: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //    81: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //    84: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
            //    87: pop            
            //    88: aload           6
            //    90: ifnull          100
            //    93: aload           6
            //    95: invokeinterface android/database/Cursor.close:()V
            //   100: iconst_0       
            //   101: ireturn        
            //   102: astore_3       
            //   103: aconst_null    
            //   104: astore          4
            //   106: aload           4
            //   108: ifnull          118
            //   111: aload           4
            //   113: invokeinterface android/database/Cursor.close:()V
            //   118: aload_3        
            //   119: athrow         
            //   120: astore          7
            //   122: aload           6
            //   124: astore          4
            //   126: aload           7
            //   128: astore_3       
            //   129: goto            106
            //   132: astore          10
            //   134: goto            63
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                                     
            //  -----  -----  -----  -----  -----------------------------------------
            //  0      30     58     63     Landroid/database/sqlite/SQLiteException;
            //  0      30     102    106    Any
            //  34     43     132    137    Landroid/database/sqlite/SQLiteException;
            //  34     43     120    132    Any
            //  63     88     120    132    Any
            // 
            // The error that occurred was:
            // 
            // java.lang.IllegalStateException: Expression is linked from several locations: Label_0055:
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
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:556)
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
        
        void createCustomVariableTables(final SQLiteDatabase sqLiteDatabase) {
            sqLiteDatabase.execSQL("DROP TABLE IF EXISTS custom_variables;");
            sqLiteDatabase.execSQL(PersistentHitStore.CREATE_CUSTOM_VARIABLES_TABLE);
            sqLiteDatabase.execSQL("DROP TABLE IF EXISTS custom_var_cache;");
            sqLiteDatabase.execSQL(PersistentHitStore.CREATE_OLD_CUSTOM_VAR_CACHE_TABLE);
            for (int i = 1; i <= 5; ++i) {
                final ContentValues contentValues = new ContentValues();
                contentValues.put("event_id", 0);
                contentValues.put("cv_index", i);
                contentValues.put("cv_name", "");
                contentValues.put("cv_scope", 3);
                contentValues.put("cv_value", "");
                sqLiteDatabase.insert("custom_var_cache", "event_id", contentValues);
            }
            sqLiteDatabase.execSQL("DROP TABLE IF EXISTS custom_var_visitor_cache;");
            sqLiteDatabase.execSQL(PersistentHitStore.CREATE_CUSTOM_VAR_VISITOR_CACHE_TABLE);
        }
        
        public void onCreate(final SQLiteDatabase sqLiteDatabase) {
            sqLiteDatabase.execSQL("DROP TABLE IF EXISTS events;");
            sqLiteDatabase.execSQL(PersistentHitStore.CREATE_EVENTS_TABLE);
            sqLiteDatabase.execSQL("DROP TABLE IF EXISTS install_referrer;");
            sqLiteDatabase.execSQL("CREATE TABLE install_referrer (referrer TEXT PRIMARY KEY NOT NULL);");
            sqLiteDatabase.execSQL("DROP TABLE IF EXISTS session;");
            sqLiteDatabase.execSQL(PersistentHitStore.CREATE_SESSION_TABLE);
            if (this.databaseVersion > 1) {
                this.createCustomVariableTables(sqLiteDatabase);
            }
            if (this.databaseVersion > 2) {
                this.createECommerceTables(sqLiteDatabase);
            }
            if (this.databaseVersion > 3) {
                this.createHitTable(sqLiteDatabase);
                this.createReferrerTable(sqLiteDatabase);
            }
        }
        
        public void onDowngrade(final SQLiteDatabase sqLiteDatabase, final int i, final int j) {
            Log.w("GoogleAnalyticsTracker", "Downgrading database version from " + i + " to " + j + " not recommended.");
            sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS referrer (referrer TEXT PRIMARY KEY NOT NULL,timestamp_referrer INTEGER NOT NULL,referrer_visit INTEGER NOT NULL DEFAULT 1,referrer_index INTEGER NOT NULL DEFAULT 1);");
            sqLiteDatabase.execSQL(PersistentHitStore.CREATE_HITS_TABLE);
            sqLiteDatabase.execSQL(PersistentHitStore.CREATE_CUSTOM_VAR_VISITOR_CACHE_TABLE);
            sqLiteDatabase.execSQL(PersistentHitStore.CREATE_SESSION_TABLE);
        }
        
        public void onOpen(final SQLiteDatabase sqLiteDatabase) {
            if (sqLiteDatabase.isReadOnly()) {
                Log.w("GoogleAnalyticsTracker", "Warning: Need to update database, but it's read only.");
                return;
            }
            this.fixReferrerTable(sqLiteDatabase);
            this.fixCVTables(sqLiteDatabase);
        }
        
        public void onUpgrade(final SQLiteDatabase sqLiteDatabase, final int n, final int n2) {
            if (n > n2) {
                this.onDowngrade(sqLiteDatabase, n, n2);
            }
            else {
                if (n < 2 && n2 > 1) {
                    this.createCustomVariableTables(sqLiteDatabase);
                }
                if (n < 3 && n2 > 2) {
                    this.createECommerceTables(sqLiteDatabase);
                }
                if (n < 4 && n2 > 3) {
                    this.createHitTable(sqLiteDatabase);
                    this.createReferrerTable(sqLiteDatabase);
                    this.migrateEventsToHits(sqLiteDatabase, n);
                    this.migratePreV4Referrer(sqLiteDatabase);
                }
                if (n < 6 && n2 > 5) {
                    sqLiteDatabase.execSQL(PersistentHitStore.CREATE_CUSTOM_VAR_VISITOR_CACHE_TABLE);
                    this.migrateVisitorLevelCustomVars(sqLiteDatabase);
                }
            }
        }
    }
}
